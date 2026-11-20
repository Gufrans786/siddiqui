package com.mapbox.bindgen;

import java.lang.ref.WeakReference;
import java.util.HashMap;

class JniGlobalRegistry {
    private static final int SHARD_BITS = 8;
    private static final int SHARD_COUNT = 256;
    private static final long SHARD_MASK = 255;
    private static final HashMap<Long, ObjectReferences>[] storageShards;

    public static native void activate();

    public static native void deactivate();

    JniGlobalRegistry() {
    }

    static {
        HashMap<Long, ObjectReferences>[] mapArr = new HashMap[256];
        for (int i = 0; i < 256; i++) {
            mapArr[i] = new HashMap<>();
        }
        storageShards = mapArr;
    }

    private static HashMap<Long, ObjectReferences> storageShardFor(long j) {
        return storageShards[(int) ((j >> 8) & 255)];
    }

    private static int newReference(long j, Object obj) {
        HashMap<Long, ObjectReferences> mapStorageShardFor = storageShardFor(j);
        synchronized (mapStorageShardFor) {
            ObjectReferences objectReferences = mapStorageShardFor.get(Long.valueOf(j));
            if (objectReferences == null) {
                mapStorageShardFor.put(Long.valueOf(j), new ObjectReferences(obj));
                return 0;
            }
            return objectReferences.addAdditional(obj);
        }
    }

    public static int newStrongReference(long j, Object obj) {
        if (obj != null) {
            return newReference(j, obj);
        }
        return -1;
    }

    public static int newWeakReference(long j, Object obj) {
        if (obj != null) {
            return newReference(j, new WeakReference(obj));
        }
        return -1;
    }

    public static Object get(long j, int i) {
        HashMap<Long, ObjectReferences> mapStorageShardFor = storageShardFor(j);
        synchronized (mapStorageShardFor) {
            ObjectReferences objectReferences = mapStorageShardFor.get(Long.valueOf(j));
            if (objectReferences == null) {
                return null;
            }
            Object obj = objectReferences.get(i);
            if (!(obj instanceof WeakReference)) {
                return obj;
            }
            return ((WeakReference) obj).get();
        }
    }

    public static void delete(long j, int i) {
        HashMap<Long, ObjectReferences> mapStorageShardFor = storageShardFor(j);
        synchronized (mapStorageShardFor) {
            ObjectReferences objectReferences = mapStorageShardFor.get(Long.valueOf(j));
            if (objectReferences == null) {
                return;
            }
            objectReferences.delete(i);
            if (objectReferences.getReferenceCount() == 0) {
                mapStorageShardFor.remove(Long.valueOf(j));
            }
        }
    }

    public static int[] getShardUtilization() {
        int[] iArr = new int[256];
        for (int i = 0; i < 256; i++) {
            iArr[i] = storageShards[i].size();
        }
        return iArr;
    }
}
