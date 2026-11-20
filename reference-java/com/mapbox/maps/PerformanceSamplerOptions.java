package com.mapbox.maps;

public enum PerformanceSamplerOptions {
    CUMULATIVE_RENDERING_STATS,
    PER_FRAME_RENDERING_STATS;

    private int getValue() {
        return ordinal();
    }
}
