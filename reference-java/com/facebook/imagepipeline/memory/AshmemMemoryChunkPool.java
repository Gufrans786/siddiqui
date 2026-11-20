package com.facebook.imagepipeline.memory;

import com.facebook.common.memory.MemoryTrimmableRegistry;

public class AshmemMemoryChunkPool extends MemoryChunkPool {
    public AshmemMemoryChunkPool(MemoryTrimmableRegistry memoryTrimmableRegistry, PoolParams poolParams, PoolStatsTracker poolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker);
    }

    @Override
    public MemoryChunk alloc2(int i) {
        return new AshmemMemoryChunk(i);
    }
}
