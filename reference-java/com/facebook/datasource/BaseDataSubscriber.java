package com.facebook.datasource;

import javax.annotation.Nonnull;

public abstract class BaseDataSubscriber<T> implements DataSubscriber<T> {
    @Override
    public void onCancellation(@Nonnull DataSource<T> dataSource) {
    }

    protected abstract void onFailureImpl(@Nonnull DataSource<T> dataSource);

    protected abstract void onNewResultImpl(@Nonnull DataSource<T> dataSource);

    @Override
    public void onProgressUpdate(@Nonnull DataSource<T> dataSource) {
    }

    @Override
    public void onNewResult(@Nonnull DataSource<T> dataSource) {
        boolean zIsFinished = dataSource.isFinished();
        try {
            onNewResultImpl(dataSource);
        } finally {
            if (zIsFinished) {
                dataSource.close();
            }
        }
    }

    @Override
    public void onFailure(@Nonnull DataSource<T> dataSource) {
        try {
            onFailureImpl(dataSource);
        } finally {
            dataSource.close();
        }
    }
}
