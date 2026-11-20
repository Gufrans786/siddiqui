package androidx.webkit.internal;

import androidx.webkit.Navigation;
import androidx.webkit.Page;
import org.chromium.support_lib_boundary.WebViewNavigationBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewPageBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

public class NavigationAdapter implements Navigation {
    WebViewNavigationBoundaryInterface mImpl;
    PageImpl mPage;

    public NavigationAdapter(WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface) {
        this.mImpl = webViewNavigationBoundaryInterface;
    }

    @Override
    public Page getPage() {
        if (this.mImpl.getPage() == null) {
            return null;
        }
        if (this.mPage == null) {
            this.mPage = new PageImpl((WebViewPageBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewPageBoundaryInterface.class, this.mImpl.getPage()));
        }
        return this.mPage;
    }

    @Override
    public boolean wasInitiatedByPage() {
        return this.mImpl.wasInitiatedByPage();
    }

    @Override
    public boolean isSameDocument() {
        return this.mImpl.isSameDocument();
    }

    @Override
    public boolean isReload() {
        return this.mImpl.isReload();
    }

    @Override
    public boolean isHistory() {
        return this.mImpl.isHistory();
    }

    @Override
    public boolean isRestore() {
        return this.mImpl.isRestore();
    }

    @Override
    public boolean isBack() {
        return this.mImpl.isBack();
    }

    @Override
    public boolean isForward() {
        return this.mImpl.isForward();
    }

    @Override
    public boolean didCommit() {
        return this.mImpl.didCommit();
    }

    @Override
    public boolean didCommitErrorPage() {
        return this.mImpl.didCommitErrorPage();
    }

    @Override
    public int getStatusCode() {
        return this.mImpl.getStatusCode();
    }
}
