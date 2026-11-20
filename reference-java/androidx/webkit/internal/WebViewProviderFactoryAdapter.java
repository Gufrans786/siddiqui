package androidx.webkit.internal;

import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewStartUpConfig;
import org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface;
import org.chromium.support_lib_boundary.ProfileStoreBoundaryInterface;
import org.chromium.support_lib_boundary.ProxyControllerBoundaryInterface;
import org.chromium.support_lib_boundary.ServiceWorkerControllerBoundaryInterface;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.TracingControllerBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewBuilderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

public class WebViewProviderFactoryAdapter implements WebViewProviderFactory {
    final WebViewProviderFactoryBoundaryInterface mImpl;

    public WebViewProviderFactoryAdapter(WebViewProviderFactoryBoundaryInterface webViewProviderFactoryBoundaryInterface) {
        this.mImpl = webViewProviderFactoryBoundaryInterface;
    }

    @Override
    public WebViewBuilderBoundaryInterface getWebViewBuilder() {
        return (WebViewBuilderBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewBuilderBoundaryInterface.class, this.mImpl.getWebViewBuilder());
    }

    @Override
    public WebViewProviderBoundaryInterface createWebView(WebView webView) {
        return (WebViewProviderBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewProviderBoundaryInterface.class, this.mImpl.createWebView(webView));
    }

    @Override
    public WebkitToCompatConverterBoundaryInterface getWebkitToCompatConverter() {
        return (WebkitToCompatConverterBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebkitToCompatConverterBoundaryInterface.class, this.mImpl.getWebkitToCompatConverter());
    }

    @Override
    public StaticsBoundaryInterface getStatics() {
        return (StaticsBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(StaticsBoundaryInterface.class, this.mImpl.getStatics());
    }

    @Override
    public String[] getWebViewFeatures() {
        return this.mImpl.getSupportedFeatures();
    }

    @Override
    public ServiceWorkerControllerBoundaryInterface getServiceWorkerController() {
        return (ServiceWorkerControllerBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(ServiceWorkerControllerBoundaryInterface.class, this.mImpl.getServiceWorkerController());
    }

    @Override
    public TracingControllerBoundaryInterface getTracingController() {
        return (TracingControllerBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(TracingControllerBoundaryInterface.class, this.mImpl.getTracingController());
    }

    @Override
    public ProxyControllerBoundaryInterface getProxyController() {
        return (ProxyControllerBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(ProxyControllerBoundaryInterface.class, this.mImpl.getProxyController());
    }

    @Override
    public DropDataContentProviderBoundaryInterface getDropDataProvider() {
        return (DropDataContentProviderBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(DropDataContentProviderBoundaryInterface.class, this.mImpl.getDropDataProvider());
    }

    @Override
    public ProfileStoreBoundaryInterface getProfileStore() {
        return (ProfileStoreBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(ProfileStoreBoundaryInterface.class, this.mImpl.getProfileStore());
    }

    @Override
    public void startUpWebView(WebViewStartUpConfig webViewStartUpConfig, WebViewCompat.WebViewStartUpCallback webViewStartUpCallback) {
        this.mImpl.startUpWebView(BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new WebViewStartUpConfigAdapter(webViewStartUpConfig)), BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new WebViewStartUpCallbackAdapter(webViewStartUpCallback)));
    }
}
