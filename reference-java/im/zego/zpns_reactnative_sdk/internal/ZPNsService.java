package im.zego.zpns_reactnative_sdk.internal;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.util.Log;
import com.facebook.react.HeadlessJsTaskService;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.jstasks.HeadlessJsTaskConfig;
import java.util.ArrayList;
import java.util.HashMap;

public class ZPNsService extends HeadlessJsTaskService {
    static final boolean DEBUG = false;
    static final String TAG = "ZPNs RN Service";
    private Handler handler;
    WorkEnqueuer mCompatWorkEnqueuer;
    CommandProcessor mCurProcessor;
    CompatJobEngine mJobImpl;
    static final Object sLock = new Object();
    static final HashMap<ComponentNameWithWakeful, WorkEnqueuer> sClassWorkEnqueuer = new HashMap<>();
    boolean mInterruptIfStopped = false;
    boolean mStopped = false;
    boolean mDestroyed = false;
    final ArrayList<CompatWorkItem> mCompatQueue = new ArrayList<>();

    interface CompatJobEngine {
        IBinder compatGetBinder();

        GenericWorkItem dequeueWork();
    }

    interface GenericWorkItem {
        void complete();

        Intent getIntent();
    }

    public boolean onStopCurrentWork() {
        return true;
    }

    @Override
    protected HeadlessJsTaskConfig getTaskConfig(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            return new HeadlessJsTaskConfig("ZPNsRNSDKHeadlessJsTaskService", Arguments.fromBundle(extras), 60000L, true);
        }
        return null;
    }

    private Handler getHandler() {
        if (this.handler == null) {
            this.handler = new Handler(Looper.getMainLooper());
        }
        return this.handler;
    }

    private static class ComponentNameWithWakeful {
        private ComponentName componentName;
        private boolean useWakefulService;

        ComponentNameWithWakeful(ComponentName componentName, boolean z) {
            this.componentName = componentName;
            this.useWakefulService = z;
        }
    }

    static abstract class WorkEnqueuer {
        final ComponentName mComponentName;
        boolean mHasJobId;
        int mJobId;

        abstract void enqueueWork(Intent intent);

        public void serviceProcessingFinished() {
        }

        public void serviceProcessingStarted() {
        }

        public void serviceStartReceived() {
        }

        WorkEnqueuer(ComponentName componentName) {
            this.mComponentName = componentName;
        }

        void ensureJobId(int i) {
            if (!this.mHasJobId) {
                this.mHasJobId = true;
                this.mJobId = i;
            } else if (this.mJobId != i) {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.mJobId);
            }
        }
    }

    static final class CompatWorkEnqueuer extends WorkEnqueuer {
        private final Context mContext;
        private final PowerManager.WakeLock mLaunchWakeLock;
        boolean mLaunchingService;
        private final PowerManager.WakeLock mRunWakeLock;
        boolean mServiceProcessing;

        CompatWorkEnqueuer(Context context, ComponentName componentName) {
            super(componentName);
            this.mContext = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.mLaunchWakeLock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.mRunWakeLock = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override
        void enqueueWork(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.mComponentName);
            if (this.mContext.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.mLaunchingService) {
                        this.mLaunchingService = true;
                        if (!this.mServiceProcessing) {
                            this.mLaunchWakeLock.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override
        public void serviceStartReceived() {
            synchronized (this) {
                this.mLaunchingService = false;
            }
        }

        @Override
        public void serviceProcessingStarted() {
            synchronized (this) {
                if (!this.mServiceProcessing) {
                    this.mServiceProcessing = true;
                    this.mRunWakeLock.acquire(600000L);
                    this.mLaunchWakeLock.release();
                }
            }
        }

        @Override
        public void serviceProcessingFinished() {
            synchronized (this) {
                if (this.mServiceProcessing) {
                    if (this.mLaunchingService) {
                        this.mLaunchWakeLock.acquire(60000L);
                    }
                    this.mServiceProcessing = false;
                    this.mRunWakeLock.release();
                }
            }
        }
    }

    static final class JobServiceEngineImpl extends JobServiceEngine implements CompatJobEngine {
        static final boolean DEBUG = false;
        static final String TAG = "JobServiceEngineImpl";
        final Object mLock;
        JobParameters mParams;
        final ZPNsService mService;

        final class WrapperWorkItem implements GenericWorkItem {
            final JobWorkItem mJobWork;

            WrapperWorkItem(JobWorkItem jobWorkItem) {
                this.mJobWork = jobWorkItem;
            }

            @Override
            public Intent getIntent() {
                return this.mJobWork.getIntent();
            }

            @Override
            public void complete() {
                synchronized (JobServiceEngineImpl.this.mLock) {
                    if (JobServiceEngineImpl.this.mParams != null) {
                        try {
                            JobServiceEngineImpl.this.mParams.completeWork(this.mJobWork);
                        } catch (IllegalArgumentException e) {
                            Log.e(JobServiceEngineImpl.TAG, "IllegalArgumentException: Failed to run mParams.completeWork(mJobWork)!", e);
                        } catch (SecurityException e2) {
                            Log.e(JobServiceEngineImpl.TAG, "SecurityException: Failed to run mParams.completeWork(mJobWork)!", e2);
                        }
                    }
                }
            }
        }

        JobServiceEngineImpl(ZPNsService zPNsService) {
            super(zPNsService);
            this.mLock = new Object();
            this.mService = zPNsService;
        }

        @Override
        public IBinder compatGetBinder() {
            return getBinder();
        }

        @Override
        public boolean onStartJob(JobParameters jobParameters) {
            this.mParams = jobParameters;
            this.mService.ensureProcessorRunningLocked(false);
            return true;
        }

        @Override
        public boolean onStopJob(JobParameters jobParameters) {
            boolean zDoStopCurrentWork = this.mService.doStopCurrentWork();
            synchronized (this.mLock) {
                this.mParams = null;
            }
            return zDoStopCurrentWork;
        }

        @Override
        public GenericWorkItem dequeueWork() {
            synchronized (this.mLock) {
                JobParameters jobParameters = this.mParams;
                if (jobParameters == null) {
                    return null;
                }
                try {
                    JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                    if (jobWorkItemDequeueWork == null) {
                        return null;
                    }
                    jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.mService.getClassLoader());
                    return new WrapperWorkItem(jobWorkItemDequeueWork);
                } catch (SecurityException e) {
                    Log.e(TAG, "Failed to run mParams.dequeueWork()!", e);
                    return null;
                }
            }
        }
    }

    static final class JobWorkEnqueuer extends WorkEnqueuer {
        private final JobInfo mJobInfo;
        private final JobScheduler mJobScheduler;

        JobWorkEnqueuer(Context context, ComponentName componentName, int i) {
            super(componentName);
            ensureJobId(i);
            this.mJobInfo = new JobInfo.Builder(i, this.mComponentName).setOverrideDeadline(0L).build();
            this.mJobScheduler = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override
        void enqueueWork(Intent intent) {
            this.mJobScheduler.enqueue(this.mJobInfo, new JobWorkItem(intent));
        }
    }

    final class CompatWorkItem implements GenericWorkItem {
        final Intent mIntent;
        final int mStartId;

        CompatWorkItem(Intent intent, int i) {
            this.mIntent = intent;
            this.mStartId = i;
        }

        @Override
        public Intent getIntent() {
            return this.mIntent;
        }

        @Override
        public void complete() {
            ZPNsService.this.stopSelf(this.mStartId);
        }
    }

    final class CommandProcessor extends AsyncTask<Void, Void, Void> {
        CommandProcessor() {
        }

        @Override
        public Void doInBackground(Void... voidArr) {
            while (true) {
                GenericWorkItem genericWorkItemDequeueWork = ZPNsService.this.dequeueWork();
                if (genericWorkItemDequeueWork == null) {
                    return null;
                }
                ZPNsService.this.onHandleWork(genericWorkItemDequeueWork.getIntent());
                genericWorkItemDequeueWork.complete();
            }
        }

        @Override
        public void onCancelled(Void r1) {
            ZPNsService.this.processorFinished();
        }

        @Override
        public void onPostExecute(Void r1) {
            ZPNsService.this.processorFinished();
        }
    }

    @Override
    public void onCreate() {
        super.onCreate();
        ZPNsLogWriter.writeLog("ZPNsService onCreate: " + this, "");
        if (Build.VERSION.SDK_INT >= 26) {
            this.mJobImpl = new JobServiceEngineImpl(this);
            this.mCompatWorkEnqueuer = null;
        }
        this.mCompatWorkEnqueuer = getWorkEnqueuer(this, new ComponentName(this, getClass()), false, 0, true);
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }

    @Override
    public IBinder onBind(Intent intent) {
        super.onBind(intent);
        CompatJobEngine compatJobEngine = this.mJobImpl;
        if (compatJobEngine == null) {
            return null;
        }
        IBinder iBinderCompatGetBinder = compatJobEngine.compatGetBinder();
        ZPNsLogWriter.writeLog("ZPNsService returning engine: " + iBinderCompatGetBinder, "");
        return iBinderCompatGetBinder;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        doStopCurrentWork();
        synchronized (this.mCompatQueue) {
            this.mDestroyed = true;
            this.mCompatWorkEnqueuer.serviceProcessingFinished();
        }
    }

    public static void enqueueWork(Context context, Class cls, int i, Intent intent, boolean z) {
        enqueueWork(context, new ComponentName(context, (Class<?>) cls), i, intent, z);
    }

    public static void enqueueWork(Context context, ComponentName componentName, int i, Intent intent, boolean z) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (sLock) {
            WorkEnqueuer workEnqueuer = getWorkEnqueuer(context, componentName, true, i, z);
            workEnqueuer.ensureJobId(i);
            try {
                workEnqueuer.enqueueWork(intent);
            } catch (IllegalStateException e) {
                if (z) {
                    getWorkEnqueuer(context, componentName, true, i, false).enqueueWork(intent);
                } else {
                    throw e;
                }
            }
        }
    }

    static WorkEnqueuer getWorkEnqueuer(Context context, ComponentName componentName, boolean z, int i, boolean z2) {
        WorkEnqueuer compatWorkEnqueuer;
        ComponentNameWithWakeful componentNameWithWakeful = new ComponentNameWithWakeful(componentName, z2);
        HashMap<ComponentNameWithWakeful, WorkEnqueuer> map = sClassWorkEnqueuer;
        WorkEnqueuer workEnqueuer = map.get(componentNameWithWakeful);
        if (workEnqueuer != null) {
            return workEnqueuer;
        }
        if (Build.VERSION.SDK_INT < 26 || z2) {
            compatWorkEnqueuer = new CompatWorkEnqueuer(context, componentName);
        } else {
            if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            compatWorkEnqueuer = new JobWorkEnqueuer(context, componentName, i);
        }
        map.put(componentNameWithWakeful, compatWorkEnqueuer);
        return compatWorkEnqueuer;
    }

    protected void onHandleWork(final Intent intent) {
        getHandler().post(new Runnable() {
            @Override
            public void run() {
                this.onStartCommand(intent, 0, 1);
            }
        });
    }

    public void setInterruptIfStopped(boolean z) {
        this.mInterruptIfStopped = z;
    }

    public boolean isStopped() {
        return this.mStopped;
    }

    boolean doStopCurrentWork() {
        CommandProcessor commandProcessor = this.mCurProcessor;
        if (commandProcessor != null) {
            commandProcessor.cancel(this.mInterruptIfStopped);
        }
        this.mStopped = true;
        return onStopCurrentWork();
    }

    void ensureProcessorRunningLocked(boolean z) {
        if (this.mCurProcessor == null) {
            this.mCurProcessor = new CommandProcessor();
            WorkEnqueuer workEnqueuer = this.mCompatWorkEnqueuer;
            if (workEnqueuer != null && z) {
                workEnqueuer.serviceProcessingStarted();
            }
            this.mCurProcessor.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    void processorFinished() {
        ArrayList<CompatWorkItem> arrayList = this.mCompatQueue;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.mCurProcessor = null;
                ArrayList<CompatWorkItem> arrayList2 = this.mCompatQueue;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    ensureProcessorRunningLocked(false);
                } else if (!this.mDestroyed) {
                    this.mCompatWorkEnqueuer.serviceProcessingFinished();
                }
            }
        }
    }

    GenericWorkItem dequeueWork() {
        GenericWorkItem genericWorkItemDequeueWork;
        CompatJobEngine compatJobEngine = this.mJobImpl;
        if (compatJobEngine != null && (genericWorkItemDequeueWork = compatJobEngine.dequeueWork()) != null) {
            return genericWorkItemDequeueWork;
        }
        synchronized (this.mCompatQueue) {
            if (this.mCompatQueue.size() > 0) {
                return this.mCompatQueue.remove(0);
            }
            return null;
        }
    }
}
