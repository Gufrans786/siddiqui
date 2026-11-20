package com.facebook.cache.disk;

public class ScoreBasedEvictionComparatorSupplier implements EntryEvictionComparatorSupplier {
    private final float mAgeWeight;
    private final float mSizeWeight;

    public ScoreBasedEvictionComparatorSupplier(float f, float f2) {
        this.mAgeWeight = f;
        this.mSizeWeight = f2;
    }

    @Override
    public EntryEvictionComparator get() {
        return new EntryEvictionComparator() {
            long now = System.currentTimeMillis();

            @Override
            public int compare(DiskStorage.Entry entry, DiskStorage.Entry entry2) {
                float fCalculateScore = ScoreBasedEvictionComparatorSupplier.this.calculateScore(entry, this.now);
                float fCalculateScore2 = ScoreBasedEvictionComparatorSupplier.this.calculateScore(entry2, this.now);
                if (fCalculateScore < fCalculateScore2) {
                    return 1;
                }
                return fCalculateScore2 == fCalculateScore ? 0 : -1;
            }
        };
    }

    float calculateScore(DiskStorage.Entry entry, long j) {
        return (this.mAgeWeight * (j - entry.getTimestamp())) + (this.mSizeWeight * entry.getSize());
    }
}
