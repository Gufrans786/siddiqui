package com.transistorsoft.tsbackgroundfetch;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.PersistableBundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FetchJobService extends JobService {
    private static final List<ExecutedJob> sExecutedJobs = new ArrayList();

    public interface CompletionHandler {
        void finish();
    }

    @Override
    public boolean onStartJob(final JobParameters jobParameters) {
        PersistableBundle extras = jobParameters.getExtras();
        if (System.currentTimeMillis() - extras.getLong("scheduled_at") < 1000) {
            jobFinished(jobParameters, false);
            return false;
        }
        String string = extras.getString(BackgroundFetchConfig.FIELD_TASK_ID);
        List<ExecutedJob> list = sExecutedJobs;
        synchronized (list) {
            Iterator<ExecutedJob> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().isDuplicate(string)) {
                    Log.d(BackgroundFetch.TAG, "- Caught duplicate Job " + string + ": [IGNORED]");
                    jobFinished(jobParameters, false);
                    return false;
                }
            }
            List<ExecutedJob> list2 = sExecutedJobs;
            list2.add(new ExecutedJob(string));
            if (list2.size() > 5) {
                list2.remove(0);
            }
            BackgroundFetch.getInstance(getApplicationContext()).onFetch(new BGTask(this, string, new CompletionHandler() {
                @Override
                public final void finish() {
                    this.f$0.m1429x9a26d241(jobParameters);
                }
            }, jobParameters.getJobId()));
            return true;
        }
    }

    void m1429x9a26d241(JobParameters jobParameters) {
        Log.d(BackgroundFetch.TAG, "- jobFinished");
        jobFinished(jobParameters, false);
    }

    @Override
    public boolean onStopJob(JobParameters jobParameters) {
        Log.d(BackgroundFetch.TAG, "- onStopJob");
        BGTask task = BGTask.getTask(jobParameters.getExtras().getString(BackgroundFetchConfig.FIELD_TASK_ID));
        if (task != null) {
            task.onTimeout(getApplicationContext());
        }
        jobFinished(jobParameters, false);
        return true;
    }

    private static class ExecutedJob {
        private static final long OFFSET_TIME = 5000;
        private final String mTaskId;
        private final long mTimestamp = System.currentTimeMillis();

        ExecutedJob(String str) {
            this.mTaskId = str;
        }

        boolean isDuplicate(String str) {
            return str.equalsIgnoreCase(this.mTaskId) && System.currentTimeMillis() - this.mTimestamp < 5000;
        }

        public String toString() {
            return "[LastJob taskId: " + this.mTaskId + ", timestamp: " + this.mTimestamp + "]";
        }
    }
}
