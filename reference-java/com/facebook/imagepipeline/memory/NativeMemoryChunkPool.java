package com.facebook.imagepipeline.memory;

import com.facebook.common.memory.MemoryTrimmableRegistry;

public class NativeMemoryChunkPool extends MemoryChunkPool {
    public NativeMemoryChunkPool(MemoryTrimmableRegistry memoryTrimmableRegistry, PoolParams poolParams, PoolStatsTracker poolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker);
    }

    @Override
    public MemoryChunk alloc2(int i) {
        return new NativeMemoryChunk(i);
    }
}
