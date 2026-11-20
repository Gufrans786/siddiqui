package androidx.webkit.internal;

import androidx.webkit.NoVarySearchHeader;
import androidx.webkit.SpeculativeLoadingParameters;
import java.lang.reflect.InvocationHandler;
import java.util.HashMap;
import java.util.Map;
import org.chromium.support_lib_boundary.SpeculativeLoadingParametersBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

public class SpeculativeLoadingParametersAdapter implements SpeculativeLoadingParametersBoundaryInterface {
    private final SpeculativeLoadingParameters mSpeculativeLoadingParameters;

    public SpeculativeLoadingParametersAdapter(SpeculativeLoadingParameters speculativeLoadingParameters) {
        this.mSpeculativeLoadingParameters = speculativeLoadingParameters;
    }

    @Override
    public Map<String, String> getAdditionalHeaders() {
        SpeculativeLoadingParameters speculativeLoadingParameters = this.mSpeculativeLoadingParameters;
        return speculativeLoadingParameters == null ? new HashMap() : speculativeLoadingParameters.getAdditionalHeaders();
    }

    @Override
    public InvocationHandler getNoVarySearchData() {
        NoVarySearchHeader expectedNoVarySearchData;
        SpeculativeLoadingParameters speculativeLoadingParameters = this.mSpeculativeLoadingParameters;
        if (speculativeLoadingParameters == null || (expectedNoVarySearchData = speculativeLoadingParameters.getExpectedNoVarySearchData()) == null) {
            return null;
        }
        return BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new NoVarySearchHeaderAdapter(expectedNoVarySearchData));
    }

    @Override
    public boolean isJavaScriptEnabled() {
        SpeculativeLoadingParameters speculativeLoadingParameters = this.mSpeculativeLoadingParameters;
        if (speculativeLoadingParameters == null) {
            return false;
        }
        return speculativeLoadingParameters.isJavaScriptEnabled();
    }
}
