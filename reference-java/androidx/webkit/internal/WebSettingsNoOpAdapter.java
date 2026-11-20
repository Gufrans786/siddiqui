package androidx.webkit.internal;

import androidx.webkit.UserAgentMetadata;
import androidx.webkit.WebViewMediaIntegrityApiStatusConfig;
import java.util.Collections;
import java.util.Set;

public class WebSettingsNoOpAdapter extends WebSettingsAdapter {
    @Override
    public int getAttributionRegistrationBehavior() {
        return 1;
    }

    @Override
    public boolean getBackForwardCacheEnabled() {
        return false;
    }

    @Override
    public int getDisabledActionModeMenuItems() {
        return 0;
    }

    @Override
    public boolean getEnterpriseAuthenticationAppLinkPolicyEnabled() {
        return false;
    }

    @Override
    public int getForceDark() {
        return 1;
    }

    @Override
    public int getForceDarkStrategy() {
        return 2;
    }

    @Override
    public boolean getHasEnrolledInstrumentEnabled() {
        return false;
    }

    @Override
    public boolean getOffscreenPreRaster() {
        return false;
    }

    @Override
    public boolean getPaymentRequestEnabled() {
        return false;
    }

    @Override
    public boolean getSafeBrowsingEnabled() {
        return true;
    }

    @Override
    public int getSpeculativeLoadingStatus() {
        return 0;
    }

    @Override
    public int getWebAuthenticationSupport() {
        return 0;
    }

    @Override
    public boolean isAlgorithmicDarkeningAllowed() {
        return false;
    }

    @Override
    public void setAlgorithmicDarkeningAllowed(boolean z) {
    }

    @Override
    public void setAttributionRegistrationBehavior(int i) {
    }

    @Override
    public void setBackForwardCacheEnabled(boolean z) {
    }

    @Override
    public void setDisabledActionModeMenuItems(int i) {
    }

    @Override
    public void setEnterpriseAuthenticationAppLinkPolicyEnabled(boolean z) {
    }

    @Override
    public void setForceDark(int i) {
    }

    @Override
    public void setForceDarkStrategy(int i) {
    }

    @Override
    public void setHasEnrolledInstrumentEnabled(boolean z) {
    }

    @Override
    public void setOffscreenPreRaster(boolean z) {
    }

    @Override
    public void setPaymentRequestEnabled(boolean z) {
    }

    @Override
    public void setRequestedWithHeaderOriginAllowList(Set<String> set) {
    }

    @Override
    public void setSafeBrowsingEnabled(boolean z) {
    }

    @Override
    public void setSpeculativeLoadingStatus(int i) {
    }

    @Override
    public void setUserAgentMetadata(UserAgentMetadata userAgentMetadata) {
    }

    @Override
    public void setWebAuthenticationSupport(int i) {
    }

    @Override
    public void setWebViewMediaIntegrityApiStatus(WebViewMediaIntegrityApiStatusConfig webViewMediaIntegrityApiStatusConfig) {
    }

    public WebSettingsNoOpAdapter() {
        super(null);
    }

    @Override
    public Set<String> getRequestedWithHeaderOriginAllowList() {
        return Collections.emptySet();
    }

    @Override
    public UserAgentMetadata getUserAgentMetadata() {
        return UserAgentMetadataInternal.getUserAgentMetadataFromMap(Collections.emptyMap());
    }

    @Override
    public WebViewMediaIntegrityApiStatusConfig getWebViewMediaIntegrityApiStatus() {
        return new WebViewMediaIntegrityApiStatusConfig.Builder(2).build();
    }
}
