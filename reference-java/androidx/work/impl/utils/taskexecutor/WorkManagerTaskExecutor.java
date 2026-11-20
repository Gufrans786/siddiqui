package androidx.work.impl.utils.taskexecutor;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.SerialExecutorImpl;
import java.util.concurrent.Executor;

public class WorkManagerTaskExecutor implements TaskExecutor {
    private final SerialExecutorImpl mBackgroundExecutor;
    final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    private final Executor mMainThreadExecutor = new Executor() {
        @Override
        public void execute(Runnable command) {
            WorkManagerTaskExecutor.this.mMainThreadHandler.post(command);
        }
    };

    public WorkManagerTaskExecutor(Executor backgroundExecutor) {
        this.mBackgroundExecutor = new SerialExecutorImpl(backgroundExecutor);
    }

    @Override
    public Executor getMainThreadExecutor() {
        return this.mMainThreadExecutor;
    }

    @Override
    public SerialExecutorImpl getSerialTaskExecutor() {
        return this.mBackgroundExecutor;
    }
}
