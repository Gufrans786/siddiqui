package com.oppwa.mobile.connect.threeds;

import java.util.concurrent.Callable;

public abstract class BaseTask<T> implements Callable<T> {
    @Override
    public T call() throws Exception {
        return null;
    }

    public void onError(Exception exc) {
        exc.printStackTrace();
    }

    public void onPostExecute(T t) {
    }
}
