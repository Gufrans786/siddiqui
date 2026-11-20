package androidx.webkit.internal;

import androidx.webkit.SpeculativeLoadingConfig;
import org.chromium.support_lib_boundary.SpeculativeLoadingConfigBoundaryInterface;

public class SpeculativeLoadingConfigAdapter implements SpeculativeLoadingConfigBoundaryInterface {
    private final SpeculativeLoadingConfig mSpeculativeLoadingConfig;

    public SpeculativeLoadingConfigAdapter(SpeculativeLoadingConfig speculativeLoadingConfig) {
        this.mSpeculativeLoadingConfig = speculativeLoadingConfig;
    }

    @Override
    public int getMaxPrefetches() {
        return this.mSpeculativeLoadingConfig.getMaxPrefetches();
    }

    @Override
    public int getPrefetchTTLSeconds() {
        return this.mSpeculativeLoadingConfig.getPrefetchTtlSeconds();
    }

    @Override
    public int getMaxPrerenders() {
        return this.mSpeculativeLoadingConfig.getMaxPrerenders();
    }
}
