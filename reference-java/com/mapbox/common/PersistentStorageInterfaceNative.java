package com.mapbox.common;

import com.mapbox.bindgen.CleanerService;
import com.mapbox.bindgen.DataRef;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import java.util.Date;
import java.util.List;

final class PersistentStorageInterfaceNative implements PersistentStorageInterface {
    protected long peer;

    protected static native void cleanNativePeer(long j);

    @Override
    public native Expected<PersistentStorageError, PersistentStorageData> get(String str);

    @Override
    public native Expected<PersistentStorageError, List<PersistentStorageData>> getAll();

    @Override
    public native Expected<PersistentStorageError, List<PersistentStorageData>> getMulti(List<String> list);

    @Override
    public native Expected<PersistentStorageError, Long> getStorageSize();

    @Override
    public native Expected<PersistentStorageError, Date> put(String str, DataRef dataRef);

    @Override
    public native Expected<PersistentStorageError, Date> putMulti(List<PersistentStorageKeyValue> list);

    @Override
    public native Expected<PersistentStorageError, None> remove(String str);

    @Override
    public native Expected<PersistentStorageError, Long> removeAll();

    @Override
    public native Expected<PersistentStorageError, Long> removeMulti(List<String> list, boolean z);

    @Override
    public native Expected<PersistentStorageError, None> shrinkToFit();

    public PersistentStorageInterfaceNative(long j) {
        this.peer = j;
        CleanerService.register(this, new PersistentStorageInterfacePeerCleaner(j));
    }

    private static class PersistentStorageInterfacePeerCleaner implements Runnable {
        private long peer;

        public PersistentStorageInterfacePeerCleaner(long j) {
            this.peer = j;
        }

        @Override
        public void run() {
            PersistentStorageInterfaceNative.cleanNativePeer(this.peer);
        }
    }
}
