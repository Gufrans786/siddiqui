package com.facebook.imagepipeline.datasource;

import com.facebook.common.executors.CallerThreadExecutor;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.AbstractDataSource;
import com.facebook.datasource.DataSource;
import com.facebook.datasource.DataSubscriber;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.annotation.Nullable;

public class ListDataSource<T> extends AbstractDataSource<List<CloseableReference<T>>> {
    private final DataSource<CloseableReference<T>>[] mDataSources;
    private int mFinishedDataSources = 0;

    protected ListDataSource(DataSource<CloseableReference<T>>[] dataSourceArr) {
        this.mDataSources = dataSourceArr;
    }

    public static <T> ListDataSource<T> create(DataSource<CloseableReference<T>>... dataSourceArr) {
        Preconditions.checkNotNull(dataSourceArr);
        Preconditions.checkState(dataSourceArr.length > 0);
        ListDataSource<T> listDataSource = new ListDataSource<>(dataSourceArr);
        for (DataSource<CloseableReference<T>> dataSource : dataSourceArr) {
            if (dataSource != null) {
                Objects.requireNonNull(listDataSource);
                dataSource.subscribe(new InternalDataSubscriber(), CallerThreadExecutor.getInstance());
            }
        }
        return listDataSource;
    }

    @Override
    @Nullable
    public synchronized List<CloseableReference<T>> getResult() {
        if (!hasResult()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.mDataSources.length);
        for (DataSource<CloseableReference<T>> dataSource : this.mDataSources) {
            arrayList.add(dataSource.getResult());
        }
        return arrayList;
    }

    @Override
    public synchronized boolean hasResult() {
        return !isClosed() && this.mFinishedDataSources == this.mDataSources.length;
    }

    @Override
    public boolean close() {
        if (!super.close()) {
            return false;
        }
        for (DataSource<CloseableReference<T>> dataSource : this.mDataSources) {
            dataSource.close();
        }
        return true;
    }

    public void onDataSourceFinished() {
        if (increaseAndCheckIfLast()) {
            setResult(null, true, null);
        }
    }

    private synchronized boolean increaseAndCheckIfLast() {
        int i;
        i = this.mFinishedDataSources + 1;
        this.mFinishedDataSources = i;
        return i == this.mDataSources.length;
    }

    public void onDataSourceFailed(DataSource<CloseableReference<T>> dataSource) {
        Throwable failureCause = dataSource.getFailureCause();
        if (failureCause == null) {
            failureCause = new Throwable("Unknown failure cause");
        }
        setFailure(failureCause);
    }

    public void onDataSourceCancelled() {
        setFailure(new CancellationException());
    }

    public void onDataSourceProgress() {
        float progress = 0.0f;
        for (DataSource<CloseableReference<T>> dataSource : this.mDataSources) {
            progress += dataSource.getProgress();
        }
        setProgress(progress / this.mDataSources.length);
    }

    private class InternalDataSubscriber implements DataSubscriber<CloseableReference<T>> {
        boolean mFinished;

        private InternalDataSubscriber() {
            this.mFinished = false;
        }

        private synchronized boolean tryFinish() {
            if (this.mFinished) {
                return false;
            }
            this.mFinished = true;
            return true;
        }

        @Override
        public void onFailure(DataSource<CloseableReference<T>> dataSource) {
            ListDataSource.this.onDataSourceFailed(dataSource);
        }

        @Override
        public void onCancellation(DataSource<CloseableReference<T>> dataSource) {
            ListDataSource.this.onDataSourceCancelled();
        }

        @Override
        public void onNewResult(DataSource<CloseableReference<T>> dataSource) {
            if (dataSource.isFinished() && tryFinish()) {
                ListDataSource.this.onDataSourceFinished();
            }
        }

        @Override
        public void onProgressUpdate(DataSource<CloseableReference<T>> dataSource) {
            ListDataSource.this.onDataSourceProgress();
        }
    }
}
