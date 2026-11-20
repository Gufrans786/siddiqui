package com.facebook.datasource;

public abstract class BaseBooleanSubscriber implements DataSubscriber<Boolean> {
    @Override
    public void onCancellation(DataSource<Boolean> dataSource) {
    }

    protected abstract void onFailureImpl(DataSource<Boolean> dataSource);

    protected abstract void onNewResultImpl(boolean z);

    @Override
    public void onProgressUpdate(DataSource<Boolean> dataSource) {
    }

    @Override
    public void onNewResult(DataSource<Boolean> dataSource) {
        try {
            onNewResultImpl(dataSource.getResult().booleanValue());
        } finally {
            dataSource.close();
        }
    }

    @Override
    public void onFailure(DataSource<Boolean> dataSource) {
        try {
            onFailureImpl(dataSource);
        } finally {
            dataSource.close();
        }
    }
}
