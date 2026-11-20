package com.transistorsoft.locationmanager.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.PersistableBundle;
import com.facebook.react.uimanager.ViewProps;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.util.BackgroundTaskManager;

public class ScheduleJobService extends JobService {

    class a implements Runnable {
        final JobParameters a;

        class C0082a implements ScheduleEvent.Callback {
            C0082a() {
            }

            @Override
            public void onFinish() {
                a aVar = a.this;
                ScheduleJobService.this.jobFinished(aVar.a, false);
            }
        }

        class b implements BackgroundTaskManager.Callback {
            b() {
            }

            @Override
            public void onFinish() {
                a aVar = a.this;
                ScheduleJobService.this.jobFinished(aVar.a, false);
            }
        }

        a(JobParameters jobParameters) {
            this.a = jobParameters;
        }

        @Override
        public void run() {
            PersistableBundle extras = this.a.getExtras();
            if (extras.containsKey(TSScheduleManager.ACTION_ONESHOT)) {
                ScheduleEvent.a(ScheduleJobService.this.getApplicationContext(), extras.getString(TSScheduleManager.ACTION_NAME, ""), new C0082a());
                return;
            }
            if (extras.containsKey(BackgroundTaskManager.ACTION)) {
                BackgroundTaskManager.getInstance().onStartJob(ScheduleJobService.this.getApplicationContext(), extras.getInt(BackgroundTaskManager.TASK_ID_FIELD), new b());
            } else {
                ScheduleEvent.a(ScheduleJobService.this.getApplicationContext(), this.a.getExtras().getBoolean(ViewProps.ENABLED), this.a.getExtras().getInt("trackingMode", 1));
                ScheduleJobService.this.jobFinished(this.a, false);
            }
        }
    }

    @Override
    public boolean onStartJob(JobParameters jobParameters) {
        BackgroundGeolocation.getThreadPool().execute(new a(jobParameters));
        return true;
    }

    @Override
    public boolean onStopJob(JobParameters jobParameters) {
        TSLog.logger.debug("");
        return true;
    }
}
