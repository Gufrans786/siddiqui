package com.facebook.datasource;

import com.facebook.common.executors.CallerThreadExecutor;
import com.facebook.common.internal.Supplier;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.Nullable;

public class RetainingDataSourceSupplier<T> implements Supplier<DataSource<T>> {
    private final Set<RetainingDataSource> mDataSources = Collections.newSetFromMap(new WeakHashMap());

    @Nullable
    private Supplier<DataSource<T>> mCurrentDataSourceSupplier = null;

    @Override
    public DataSource<T> get() {
        RetainingDataSource retainingDataSource = new RetainingDataSource();
        retainingDataSource.setSupplier(this.mCurrentDataSourceSupplier);
        this.mDataSources.add(retainingDataSource);
        return retainingDataSource;
    }

    public void replaceSupplier(Supplier<DataSource<T>> supplier) {
        this.mCurrentDataSourceSupplier = supplier;
        for (RetainingDataSource retainingDataSource : this.mDataSources) {
            if (!retainingDataSource.isClosed()) {
                retainingDataSource.setSupplier(supplier);
            }
        }
    }

    private static class RetainingDataSource<T> extends AbstractDataSource<T> {

        @Nullable
        private DataSource<T> mDataSource;

        public void onDataSourceFailed() {
        }

        @Override
        public boolean hasMultipleResults() {
            return true;
        }

        private RetainingDataSource() {
            this.mDataSource = null;
        }

        public void setSupplier(@Nullable Supplier<DataSource<T>> supplier) {
            if (isClosed()) {
                return;
            }
            DataSource<T> dataSource = supplier != null ? supplier.get() : null;
            synchronized (this) {
                if (isClosed()) {
                    closeSafely(dataSource);
                    return;
                }
                DataSource<T> dataSource2 = this.mDataSource;
                this.mDataSource = dataSource;
                if (dataSource != null) {
                    dataSource.subscribe(new InternalDataSubscriber(), CallerThreadExecutor.getInstance());
                }
                closeSafely(dataSource2);
            }
        }

        @Override
        @Nullable
        public synchronized T getResult() {
            DataSource<T> dataSource;
            dataSource = this.mDataSource;
            return dataSource != null ? dataSource.getResult() : null;
        }

        @Override
        public synchronized boolean hasResult() {
            DataSource<T> dataSource;
            dataSource = this.mDataSource;
            return dataSource != null && dataSource.hasResult();
        }

        @Override
        public boolean close() {
            synchronized (this) {
                if (!super.close()) {
                    return false;
                }
                DataSource<T> dataSource = this.mDataSource;
                this.mDataSource = null;
                closeSafely(dataSource);
                return true;
            }
        }

        public void onDataSourceNewResult(DataSource<T> dataSource) {
            if (dataSource == this.mDataSource) {
                setResult(null, false, dataSource.getExtras());
            }
        }

        public void onDatasourceProgress(DataSource<T> dataSource) {
            if (dataSource == this.mDataSource) {
                setProgress(dataSource.getProgress());
            }
        }

        private static <T> void closeSafely(DataSource<T> dataSource) {
            if (dataSource != null) {
                dataSource.close();
            }
        }

        private class InternalDataSubscriber implements DataSubscriber<T> {
            @Override
            public void onCancellation(DataSource<T> dataSource) {
            }

            private InternalDataSubscriber() {
            }

            @Override
            public void onNewResult(DataSource<T> dataSource) {
                if (dataSource.hasResult()) {
                    RetainingDataSource.this.onDataSourceNewResult(dataSource);
                } else if (dataSource.isFinished()) {
                    RetainingDataSource.this.onDataSourceFailed();
                }
            }

            @Override
            public void onFailure(DataSource<T> dataSource) {
                RetainingDataSource.this.onDataSourceFailed();
            }

            @Override
            public void onProgressUpdate(DataSource<T> dataSource) {
                RetainingDataSource.this.onDatasourceProgress(dataSource);
            }
        }
    }
}
