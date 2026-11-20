package androidx.work.impl.utils;

import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;

public class LiveDataUtils {
    public static <In, Out> LiveData<Out> dedupedMappedLiveDataFor(LiveData<In> inputLiveData, final Function<In, Out> mappingMethod, final TaskExecutor workTaskExecutor) {
        Object obj = new Object();
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(inputLiveData, new AnonymousClass1(workTaskExecutor, obj, mappingMethod, mediatorLiveData));
        return mediatorLiveData;
    }

    class AnonymousClass1<In> implements Observer<In> {
        Out mCurrentOutput = null;
        final Object val$lock;
        final Function val$mappingMethod;
        final MediatorLiveData val$outputLiveData;
        final TaskExecutor val$workTaskExecutor;

        AnonymousClass1(final TaskExecutor val$workTaskExecutor, final Object val$lock, final Function val$mappingMethod, final MediatorLiveData val$outputLiveData) {
            this.val$workTaskExecutor = val$workTaskExecutor;
            this.val$lock = val$lock;
            this.val$mappingMethod = val$mappingMethod;
            this.val$outputLiveData = val$outputLiveData;
        }

        @Override
        public void onChanged(final In input) {
            this.val$workTaskExecutor.executeOnTaskThread(new Runnable() {
                @Override
                public void run() {
                    synchronized (AnonymousClass1.this.val$lock) {
                        ?? Apply = AnonymousClass1.this.val$mappingMethod.apply(input);
                        if (AnonymousClass1.this.mCurrentOutput == 0 && Apply != 0) {
                            AnonymousClass1.this.mCurrentOutput = Apply;
                            AnonymousClass1.this.val$outputLiveData.postValue(Apply);
                        } else if (AnonymousClass1.this.mCurrentOutput != 0 && !AnonymousClass1.this.mCurrentOutput.equals(Apply)) {
                            AnonymousClass1.this.mCurrentOutput = Apply;
                            AnonymousClass1.this.val$outputLiveData.postValue(Apply);
                        }
                    }
                }
            });
        }
    }

    private LiveDataUtils() {
    }
}
