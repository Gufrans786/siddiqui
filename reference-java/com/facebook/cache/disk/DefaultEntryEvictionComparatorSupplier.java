package com.facebook.cache.disk;

public class DefaultEntryEvictionComparatorSupplier implements EntryEvictionComparatorSupplier {
    @Override
    public EntryEvictionComparator get() {
        return new EntryEvictionComparator() {
            @Override
            public int compare(DiskStorage.Entry entry, DiskStorage.Entry entry2) {
                long timestamp = entry.getTimestamp();
                long timestamp2 = entry2.getTimestamp();
                if (timestamp < timestamp2) {
                    return -1;
                }
                return timestamp2 == timestamp ? 0 : 1;
            }
        };
    }
}
