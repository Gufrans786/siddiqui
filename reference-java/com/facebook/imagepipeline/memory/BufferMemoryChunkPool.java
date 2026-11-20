package com.facebook.imagepipeline.memory;

import com.facebook.common.memory.MemoryTrimmableRegistry;

public class BufferMemoryChunkPool extends MemoryChunkPool {
    public BufferMemoryChunkPool(MemoryTrimmableRegistry memoryTrimmableRegistry, PoolParams poolParams, PoolStatsTracker poolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker);
    }

    @Override
    public MemoryChunk alloc2(int i) {
        return new BufferMemoryChunk(i);
    }
}
