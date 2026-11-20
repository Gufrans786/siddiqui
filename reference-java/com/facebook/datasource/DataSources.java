package com.facebook.datasource;

import com.facebook.common.internal.Supplier;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;

public class DataSources {
    private DataSources() {
    }

    public static <T> DataSource<T> immediateFailedDataSource(Throwable th) {
        SimpleDataSource simpleDataSourceCreate = SimpleDataSource.create();
        simpleDataSourceCreate.setFailure(th);
        return simpleDataSourceCreate;
    }

    public static <T> DataSource<T> immediateDataSource(T t) {
        SimpleDataSource simpleDataSourceCreate = SimpleDataSource.create();
        simpleDataSourceCreate.setResult(t);
        return simpleDataSourceCreate;
    }

    public static DataSource<Void> immediateSuccessfulDataSource() {
        return SuccessfulVoidDataSource.INSTANCE;
    }

    public static <T> Supplier<DataSource<T>> getFailedDataSourceSupplier(final Throwable th) {
        return new Supplier<DataSource<T>>() {
            @Override
            public DataSource<T> get() {
                return DataSources.immediateFailedDataSource(th);
            }
        };
    }

    @Nullable
    public static <T> T waitForFinalResult(DataSource<T> dataSource) throws Throwable {
        return (T) waitForFinalResult(dataSource, -1L, TimeUnit.MILLISECONDS);
    }

    @Nullable
    public static <T> T waitForFinalResult(DataSource<T> dataSource, long j, TimeUnit timeUnit) throws Throwable {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final ValueHolder valueHolder = new ValueHolder();
        final ValueHolder valueHolder2 = new ValueHolder();
        dataSource.subscribe(new DataSubscriber<T>() {
            @Override
            public void onProgressUpdate(DataSource<T> dataSource2) {
            }

            @Override
            public void onNewResult(DataSource<T> dataSource2) {
                if (dataSource2.isFinished()) {
                    try {
                        valueHolder.value = dataSource2.getResult();
                    } finally {
                        countDownLatch.countDown();
                    }
                }
            }

            @Override
            public void onFailure(DataSource<T> dataSource2) {
                try {
                    valueHolder2.value = (T) dataSource2.getFailureCause();
                } finally {
                    countDownLatch.countDown();
                }
            }

            @Override
            public void onCancellation(DataSource<T> dataSource2) {
                countDownLatch.countDown();
            }
        }, new Executor() {
            @Override
            public void execute(Runnable runnable) {
                runnable.run();
            }
        });
        if (j < 0) {
            countDownLatch.await();
        } else if (!countDownLatch.await(j, timeUnit)) {
            throw new TimeoutException();
        }
        if (valueHolder2.value != null) {
            throw ((Throwable) valueHolder2.value);
        }
        return valueHolder.value;
    }

    private static class ValueHolder<T> {

        @Nullable
        public T value;

        private ValueHolder() {
            this.value = null;
        }
    }
}
