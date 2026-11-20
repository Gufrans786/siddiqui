package androidx.webkit.internal;

import androidx.webkit.NoVarySearchHeader;
import java.util.List;
import org.chromium.support_lib_boundary.NoVarySearchDataBoundaryInterface;

public class NoVarySearchHeaderAdapter implements NoVarySearchDataBoundaryInterface {
    private final NoVarySearchHeader mImpl;

    public NoVarySearchHeaderAdapter(NoVarySearchHeader noVarySearchHeader) {
        this.mImpl = noVarySearchHeader;
    }

    @Override
    public boolean getVaryOnKeyOrder() {
        return this.mImpl.varyOnKeyOrder;
    }

    @Override
    public boolean getIgnoreDifferencesInParameters() {
        return this.mImpl.ignoreDifferencesInParameters;
    }

    @Override
    public List<String> getIgnoredQueryParameters() {
        return this.mImpl.ignoredQueryParameters;
    }

    @Override
    public List<String> getConsideredQueryParameters() {
        return this.mImpl.consideredQueryParameters;
    }
}
