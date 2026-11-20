package com.reactnativecommunity.webview;

import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNCWebViewManagerDelegate;
import com.facebook.react.viewmanagers.RNCWebViewManagerInterface;
import com.facebook.react.views.scroll.ScrollEventType;
import com.reactnativecommunity.webview.events.SubResourceErrorEvent;
import com.reactnativecommunity.webview.events.TopCustomMenuSelectionEvent;
import com.reactnativecommunity.webview.events.TopHttpErrorEvent;
import com.reactnativecommunity.webview.events.TopLoadingErrorEvent;
import com.reactnativecommunity.webview.events.TopLoadingFinishEvent;
import com.reactnativecommunity.webview.events.TopLoadingProgressEvent;
import com.reactnativecommunity.webview.events.TopLoadingStartEvent;
import com.reactnativecommunity.webview.events.TopMessageEvent;
import com.reactnativecommunity.webview.events.TopOpenWindowEvent;
import com.reactnativecommunity.webview.events.TopRenderProcessGoneEvent;
import com.reactnativecommunity.webview.events.TopShouldStartLoadWithRequestEvent;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@ReactModule(name = RNCWebViewManagerImpl.NAME)
public class RNCWebViewManager extends ViewGroupManager<RNCWebViewWrapper> implements RNCWebViewManagerInterface<RNCWebViewWrapper> {
    private final ViewManagerDelegate<RNCWebViewWrapper> mDelegate = new RNCWebViewManagerDelegate(this);
    private final RNCWebViewManagerImpl mRNCWebViewManagerImpl = new RNCWebViewManagerImpl(true);

    @Override
    public void setAllowingReadAccessToURL(RNCWebViewWrapper rNCWebViewWrapper, String str) {
    }

    @Override
    public void setAllowsAirPlayForMediaPlayback(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setAllowsBackForwardNavigationGestures(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setAllowsInlineMediaPlayback(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setAllowsLinkPreview(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setAllowsPictureInPictureMediaPlayback(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setAutoManageStatusBarEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setAutomaticallyAdjustContentInsets(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setBounces(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setContentInset(RNCWebViewWrapper rNCWebViewWrapper, ReadableMap readableMap) {
    }

    @Override
    public void setContentInsetAdjustmentBehavior(RNCWebViewWrapper rNCWebViewWrapper, String str) {
    }

    @Override
    public void setContentMode(RNCWebViewWrapper rNCWebViewWrapper, String str) {
    }

    @Override
    public void setDataDetectorTypes(RNCWebViewWrapper rNCWebViewWrapper, ReadableArray readableArray) {
    }

    @Override
    public void setDecelerationRate(RNCWebViewWrapper rNCWebViewWrapper, double d) {
    }

    @Override
    public void setDirectionalLockEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setEnableApplePay(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setFraudulentWebsiteWarningEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setHasOnFileDownload(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setHideKeyboardAccessoryView(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setIndicatorStyle(RNCWebViewWrapper rNCWebViewWrapper, String str) {
    }

    @Override
    public void setKeyboardDisplayRequiresUserAction(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setLimitsNavigationsToAppBoundDomains(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setMediaCapturePermissionGrantType(RNCWebViewWrapper rNCWebViewWrapper, String str) {
    }

    @Override
    public void setPagingEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setPullToRefreshEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setRefreshControlLightMode(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setScrollEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setSharedCookiesEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    @ReactProp(name = "suppressMenuItems")
    public void setSuppressMenuItems(RNCWebViewWrapper rNCWebViewWrapper, ReadableArray readableArray) {
    }

    @Override
    public void setTextInteractionEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    public void setUseSharedProcessPool(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
    }

    @Override
    protected ViewManagerDelegate<RNCWebViewWrapper> getDelegate() {
        return this.mDelegate;
    }

    @Override
    public String getName() {
        return RNCWebViewManagerImpl.NAME;
    }

    @Override
    public RNCWebViewWrapper createViewInstance(ThemedReactContext themedReactContext) {
        return this.mRNCWebViewManagerImpl.createViewInstance(themedReactContext);
    }

    @Override
    @ReactProp(name = "allowFileAccess")
    public void setAllowFileAccess(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setAllowFileAccess(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "allowFileAccessFromFileURLs")
    public void setAllowFileAccessFromFileURLs(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setAllowFileAccessFromFileURLs(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "allowUniversalAccessFromFileURLs")
    public void setAllowUniversalAccessFromFileURLs(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setAllowUniversalAccessFromFileURLs(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "allowsFullscreenVideo")
    public void setAllowsFullscreenVideo(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setAllowsFullscreenVideo(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "allowsProtectedMedia")
    public void setAllowsProtectedMedia(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setAllowsProtectedMedia(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "androidLayerType")
    public void setAndroidLayerType(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setAndroidLayerType(rNCWebViewWrapper, str);
    }

    @Override
    @ReactProp(name = "applicationNameForUserAgent")
    public void setApplicationNameForUserAgent(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setApplicationNameForUserAgent(rNCWebViewWrapper, str);
    }

    @Override
    @ReactProp(name = "basicAuthCredential")
    public void setBasicAuthCredential(RNCWebViewWrapper rNCWebViewWrapper, ReadableMap readableMap) {
        this.mRNCWebViewManagerImpl.setBasicAuthCredential(rNCWebViewWrapper, readableMap);
    }

    @Override
    @ReactProp(name = "cacheEnabled")
    public void setCacheEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setCacheEnabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "cacheMode")
    public void setCacheMode(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setCacheMode(rNCWebViewWrapper, str);
    }

    @Override
    @ReactProp(name = "domStorageEnabled")
    public void setDomStorageEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setDomStorageEnabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "downloadingMessage")
    public void setDownloadingMessage(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setDownloadingMessage(str);
    }

    @Override
    @ReactProp(name = "forceDarkOn")
    public void setForceDarkOn(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setForceDarkOn(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "geolocationEnabled")
    public void setGeolocationEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setGeolocationEnabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "hasOnScroll")
    public void setHasOnScroll(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setHasOnScroll(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "incognito")
    public void setIncognito(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setIncognito(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "injectedJavaScript")
    public void setInjectedJavaScript(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setInjectedJavaScript(rNCWebViewWrapper, str);
    }

    @Override
    @ReactProp(name = "injectedJavaScriptBeforeContentLoaded")
    public void setInjectedJavaScriptBeforeContentLoaded(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setInjectedJavaScriptBeforeContentLoaded(rNCWebViewWrapper, str);
    }

    @Override
    @ReactProp(name = "injectedJavaScriptForMainFrameOnly")
    public void setInjectedJavaScriptForMainFrameOnly(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setInjectedJavaScriptForMainFrameOnly(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "injectedJavaScriptBeforeContentLoadedForMainFrameOnly")
    public void setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setInjectedJavaScriptBeforeContentLoadedForMainFrameOnly(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "injectedJavaScriptObject")
    public void setInjectedJavaScriptObject(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setInjectedJavaScriptObject(rNCWebViewWrapper, str);
    }

    @Override
    @ReactProp(name = "javaScriptCanOpenWindowsAutomatically")
    public void setJavaScriptCanOpenWindowsAutomatically(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setJavaScriptCanOpenWindowsAutomatically(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "javaScriptEnabled")
    public void setJavaScriptEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setJavaScriptEnabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "lackPermissionToDownloadMessage")
    public void setLackPermissionToDownloadMessage(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setLackPermissionToDownloadMessage(str);
    }

    @Override
    @ReactProp(name = "hasOnOpenWindowEvent")
    public void setHasOnOpenWindowEvent(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setHasOnOpenWindowEvent(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "mediaPlaybackRequiresUserAction")
    public void setMediaPlaybackRequiresUserAction(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setMediaPlaybackRequiresUserAction(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "menuItems")
    public void setMenuItems(RNCWebViewWrapper rNCWebViewWrapper, ReadableArray readableArray) {
        this.mRNCWebViewManagerImpl.setMenuCustomItems(rNCWebViewWrapper, readableArray);
    }

    @Override
    @ReactProp(name = "messagingEnabled")
    public void setMessagingEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setMessagingEnabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "messagingModuleName")
    public void setMessagingModuleName(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setMessagingModuleName(rNCWebViewWrapper, str);
    }

    @Override
    @ReactProp(name = "minimumFontSize")
    public void setMinimumFontSize(RNCWebViewWrapper rNCWebViewWrapper, int i) {
        this.mRNCWebViewManagerImpl.setMinimumFontSize(rNCWebViewWrapper, i);
    }

    @Override
    @ReactProp(name = "mixedContentMode")
    public void setMixedContentMode(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setMixedContentMode(rNCWebViewWrapper, str);
    }

    @Override
    @ReactProp(name = "nestedScrollEnabled")
    public void setNestedScrollEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setNestedScrollEnabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "overScrollMode")
    public void setOverScrollMode(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setOverScrollMode(rNCWebViewWrapper, str);
    }

    @Override
    @ReactProp(name = "saveFormDataDisabled")
    public void setSaveFormDataDisabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setSaveFormDataDisabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "scalesPageToFit")
    public void setScalesPageToFit(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setScalesPageToFit(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "setBuiltInZoomControls")
    public void setSetBuiltInZoomControls(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setSetBuiltInZoomControls(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "setDisplayZoomControls")
    public void setSetDisplayZoomControls(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setSetDisplayZoomControls(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "setSupportMultipleWindows")
    public void setSetSupportMultipleWindows(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setSetSupportMultipleWindows(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "showsHorizontalScrollIndicator")
    public void setShowsHorizontalScrollIndicator(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setShowsHorizontalScrollIndicator(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "showsVerticalScrollIndicator")
    public void setShowsVerticalScrollIndicator(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setShowsVerticalScrollIndicator(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "newSource")
    public void setNewSource(RNCWebViewWrapper rNCWebViewWrapper, ReadableMap readableMap) {
        this.mRNCWebViewManagerImpl.setSource(rNCWebViewWrapper, readableMap);
    }

    @Override
    @ReactProp(name = "textZoom")
    public void setTextZoom(RNCWebViewWrapper rNCWebViewWrapper, int i) {
        this.mRNCWebViewManagerImpl.setTextZoom(rNCWebViewWrapper, i);
    }

    @Override
    @ReactProp(name = "thirdPartyCookiesEnabled")
    public void setThirdPartyCookiesEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setThirdPartyCookiesEnabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "webviewDebuggingEnabled")
    public void setWebviewDebuggingEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setWebviewDebuggingEnabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "paymentRequestEnabled")
    public void setPaymentRequestEnabled(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        this.mRNCWebViewManagerImpl.setPaymentRequestEnabled(rNCWebViewWrapper, z);
    }

    @Override
    @ReactProp(name = "userAgent")
    public void setUserAgent(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        this.mRNCWebViewManagerImpl.setUserAgent(rNCWebViewWrapper, str);
    }

    @Override
    public void goBack(RNCWebViewWrapper rNCWebViewWrapper) {
        rNCWebViewWrapper.getWebView().goBack();
    }

    @Override
    public void goForward(RNCWebViewWrapper rNCWebViewWrapper) {
        rNCWebViewWrapper.getWebView().goForward();
    }

    @Override
    public void reload(RNCWebViewWrapper rNCWebViewWrapper) {
        rNCWebViewWrapper.getWebView().reload();
    }

    @Override
    public void stopLoading(RNCWebViewWrapper rNCWebViewWrapper) {
        rNCWebViewWrapper.getWebView().stopLoading();
    }

    @Override
    public void injectJavaScript(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        rNCWebViewWrapper.getWebView().evaluateJavascriptWithFallback(str);
    }

    @Override
    public void requestFocus(RNCWebViewWrapper rNCWebViewWrapper) {
        rNCWebViewWrapper.requestFocus();
    }

    @Override
    public void postMessage(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("data", str);
            rNCWebViewWrapper.getWebView().evaluateJavascriptWithFallback("(function () {var event;var data = " + jSONObject.toString() + ";try {event = new MessageEvent('message', data);} catch (e) {event = document.createEvent('MessageEvent');event.initMessageEvent('message', true, true, data.data, data.origin, data.lastEventId, data.source);}document.dispatchEvent(event);})();");
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void loadUrl(RNCWebViewWrapper rNCWebViewWrapper, String str) {
        rNCWebViewWrapper.getWebView().loadUrl(str);
    }

    @Override
    public void clearFormData(RNCWebViewWrapper rNCWebViewWrapper) {
        rNCWebViewWrapper.getWebView().clearFormData();
    }

    @Override
    public void clearCache(RNCWebViewWrapper rNCWebViewWrapper, boolean z) {
        rNCWebViewWrapper.getWebView().clearCache(z);
    }

    @Override
    public void clearHistory(RNCWebViewWrapper rNCWebViewWrapper) {
        rNCWebViewWrapper.getWebView().clearHistory();
    }

    @Override
    public void addEventEmitters(ThemedReactContext themedReactContext, RNCWebViewWrapper rNCWebViewWrapper) {
        rNCWebViewWrapper.getWebView().setWebViewClient(new RNCWebViewClient());
    }

    @Override
    public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
        Map<String, Object> exportedCustomDirectEventTypeConstants = super.getExportedCustomDirectEventTypeConstants();
        if (exportedCustomDirectEventTypeConstants == null) {
            exportedCustomDirectEventTypeConstants = MapBuilder.newHashMap();
        }
        exportedCustomDirectEventTypeConstants.put(TopLoadingStartEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoadingStart"));
        exportedCustomDirectEventTypeConstants.put(TopLoadingFinishEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoadingFinish"));
        exportedCustomDirectEventTypeConstants.put(TopLoadingErrorEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoadingError"));
        exportedCustomDirectEventTypeConstants.put(SubResourceErrorEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoadingSubResourceError"));
        exportedCustomDirectEventTypeConstants.put(TopMessageEvent.EVENT_NAME, MapBuilder.of("registrationName", "onMessage"));
        exportedCustomDirectEventTypeConstants.put(TopLoadingProgressEvent.EVENT_NAME, MapBuilder.of("registrationName", "onLoadingProgress"));
        exportedCustomDirectEventTypeConstants.put(TopShouldStartLoadWithRequestEvent.EVENT_NAME, MapBuilder.of("registrationName", "onShouldStartLoadWithRequest"));
        exportedCustomDirectEventTypeConstants.put(ScrollEventType.getJSEventName(ScrollEventType.SCROLL), MapBuilder.of("registrationName", "onScroll"));
        exportedCustomDirectEventTypeConstants.put(TopHttpErrorEvent.EVENT_NAME, MapBuilder.of("registrationName", "onHttpError"));
        exportedCustomDirectEventTypeConstants.put(TopRenderProcessGoneEvent.EVENT_NAME, MapBuilder.of("registrationName", "onRenderProcessGone"));
        exportedCustomDirectEventTypeConstants.put(TopCustomMenuSelectionEvent.EVENT_NAME, MapBuilder.of("registrationName", "onCustomMenuSelection"));
        exportedCustomDirectEventTypeConstants.put(TopOpenWindowEvent.EVENT_NAME, MapBuilder.of("registrationName", "onOpenWindow"));
        return exportedCustomDirectEventTypeConstants;
    }

    @Override
    public Map<String, Integer> getCommandsMap() {
        return this.mRNCWebViewManagerImpl.getCommandsMap();
    }

    @Override
    public void receiveCommand(RNCWebViewWrapper rNCWebViewWrapper, String str, ReadableArray readableArray) {
        super.receiveCommand(rNCWebViewWrapper, str, readableArray);
    }

    @Override
    public void onAfterUpdateTransaction(RNCWebViewWrapper rNCWebViewWrapper) {
        super.onAfterUpdateTransaction(rNCWebViewWrapper);
        this.mRNCWebViewManagerImpl.onAfterUpdateTransaction(rNCWebViewWrapper);
    }

    @Override
    public void onDropViewInstance(RNCWebViewWrapper rNCWebViewWrapper) {
        this.mRNCWebViewManagerImpl.onDropViewInstance(rNCWebViewWrapper);
        super.onDropViewInstance(rNCWebViewWrapper);
    }
}
