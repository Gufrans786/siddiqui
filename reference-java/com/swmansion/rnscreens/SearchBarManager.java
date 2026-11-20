package com.swmansion.rnscreens;

import android.util.Log;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.facebook.react.viewmanagers.RNSSearchBarManagerDelegate;
import com.facebook.react.viewmanagers.RNSSearchBarManagerInterface;
import com.facebook.react.views.textinput.ReactTextInputShadowNode;
import com.reactcommunity.rndatetimepicker.Common;
import com.swmansion.rnscreens.events.SearchBarBlurEvent;
import com.swmansion.rnscreens.events.SearchBarChangeTextEvent;
import com.swmansion.rnscreens.events.SearchBarCloseEvent;
import com.swmansion.rnscreens.events.SearchBarFocusEvent;
import com.swmansion.rnscreens.events.SearchBarOpenEvent;
import com.swmansion.rnscreens.events.SearchBarSearchButtonPressEvent;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@ReactModule(name = SearchBarManager.REACT_CLASS)
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0014\b\u0007\u0018\u0000 :2\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003:\u0001:B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0014J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0014J\u001a\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0017J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0017J\u001f\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0017¢\u0006\u0002\u0010\u0019J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0015H\u0017J\u001a\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\nH\u0017J\u001a\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\nH\u0017J\u001f\u0010 \u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0017¢\u0006\u0002\u0010\u0019J\u001f\u0010!\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0017¢\u0006\u0002\u0010\u0019J\u001f\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0017¢\u0006\u0002\u0010\u0019J\u0018\u0010#\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0015H\u0017J\u0014\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020'0&H\u0016J\u0010\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\nH\u0002J\u0012\u0010*\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010+\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010,\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010-\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010.\u001a\u00020\u0015H\u0016J\u001c\u0010/\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u00100\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u00101\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u00102\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\nH\u0016J\u0018\u00103\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u0015H\u0016J\u001a\u00105\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u00104\u001a\u00020\u0015H\u0016J\u001c\u00106\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u00104\u001a\u0004\u0018\u00010\nH\u0016J\u001c\u00107\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u00104\u001a\u0004\u0018\u00010\nH\u0016J\u001c\u00108\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u00104\u001a\u0004\u0018\u00010\nH\u0016J!\u00109\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u00104\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0002\u0010\u0019R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcom/swmansion/rnscreens/SearchBarManager;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "Lcom/swmansion/rnscreens/SearchBarView;", "Lcom/facebook/react/viewmanagers/RNSSearchBarManagerInterface;", "<init>", "()V", "delegate", "Lcom/facebook/react/uimanager/ViewManagerDelegate;", "getDelegate", "getName", "", "createViewInstance", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/uimanager/ThemedReactContext;", "onAfterUpdateTransaction", "", "view", "setAutoCapitalize", "autoCapitalize", "setAutoFocus", "autoFocus", "", "setBarTintColor", "color", "", "(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Integer;)V", "setDisableBackButtonOverride", "disableBackButtonOverride", "setInputType", "inputType", "setPlaceholder", ReactTextInputShadowNode.PROP_PLACEHOLDER, "setTextColor", "setHeaderIconColor", "setHintTextColor", "setShouldShowHintSearchIcon", "shouldShowHintSearchIcon", "getExportedCustomDirectEventTypeConstants", "", "", "logNotAvailable", "propName", "blur", "focus", "clearText", "toggleCancelButton", "flag", "setText", "text", "cancelSearch", "setPlacement", "setAllowToolbarIntegration", "value", "setHideWhenScrolling", "setObscureBackground", "setHideNavigationBar", "setCancelButtonText", "setTintColor", "Companion", "react-native-screens_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SearchBarManager extends ViewGroupManager<SearchBarView> implements RNSSearchBarManagerInterface<SearchBarView> {
    public static final String REACT_CLASS = "RNSSearchBar";
    private final ViewManagerDelegate<SearchBarView> delegate;

    public SearchBarManager() {
        super(null, 1, null);
        this.delegate = new RNSSearchBarManagerDelegate(this);
    }

    @Override
    protected ViewManagerDelegate<SearchBarView> getDelegate() {
        return this.delegate;
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public SearchBarView createViewInstance(ThemedReactContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new SearchBarView(context);
    }

    @Override
    public void onAfterUpdateTransaction(SearchBarView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onAfterUpdateTransaction(view);
        view.onUpdate();
    }

    @Override
    @com.facebook.react.uimanager.annotations.ReactProp(name = "autoCapitalize")
    public void setAutoCapitalize(com.swmansion.rnscreens.SearchBarView r2, java.lang.String r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.swmansion.rnscreens.SearchBarManager.setAutoCapitalize(com.swmansion.rnscreens.SearchBarView, java.lang.String):void");
    }

    @Override
    @ReactProp(name = "autoFocus")
    public void setAutoFocus(SearchBarView view, boolean autoFocus) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setAutoFocus(autoFocus);
    }

    @Override
    @ReactProp(customType = "Color", name = "barTintColor")
    public void setBarTintColor(SearchBarView view, Integer color) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTintColor(color);
    }

    @Override
    @ReactProp(name = "disableBackButtonOverride")
    public void setDisableBackButtonOverride(SearchBarView view, boolean disableBackButtonOverride) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setShouldOverrideBackButton(!disableBackButtonOverride);
    }

    @Override
    @com.facebook.react.uimanager.annotations.ReactProp(name = "inputType")
    public void setInputType(com.swmansion.rnscreens.SearchBarView r2, java.lang.String r3) {
        throw new UnsupportedOperationException("Method not decompiled: com.swmansion.rnscreens.SearchBarManager.setInputType(com.swmansion.rnscreens.SearchBarView, java.lang.String):void");
    }

    @Override
    @ReactProp(name = ReactTextInputShadowNode.PROP_PLACEHOLDER)
    public void setPlaceholder(SearchBarView view, String placeholder) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (placeholder != null) {
            view.setPlaceholder(placeholder);
        }
    }

    @Override
    @ReactProp(customType = "Color", name = Common.TEXT_COLOR)
    public void setTextColor(SearchBarView view, Integer color) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTextColor(color);
    }

    @Override
    @ReactProp(customType = "Color", name = "headerIconColor")
    public void setHeaderIconColor(SearchBarView view, Integer color) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setHeaderIconColor(color);
    }

    @Override
    @ReactProp(customType = "Color", name = "hintTextColor")
    public void setHintTextColor(SearchBarView view, Integer color) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setHintTextColor(color);
    }

    @Override
    @ReactProp(name = "shouldShowHintSearchIcon")
    public void setShouldShowHintSearchIcon(SearchBarView view, boolean shouldShowHintSearchIcon) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setShouldShowHintSearchIcon(shouldShowHintSearchIcon);
    }

    @Override
    public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
        return MapsKt.hashMapOf(TuplesKt.to(SearchBarBlurEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onSearchBlur"))), TuplesKt.to(SearchBarChangeTextEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onChangeText"))), TuplesKt.to(SearchBarCloseEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onClose"))), TuplesKt.to(SearchBarFocusEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onSearchFocus"))), TuplesKt.to(SearchBarOpenEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onOpen"))), TuplesKt.to(SearchBarSearchButtonPressEvent.EVENT_NAME, MapsKt.hashMapOf(TuplesKt.to("registrationName", "onSearchButtonPress"))));
    }

    private final void logNotAvailable(String propName) {
        Log.w("[RNScreens]", propName + " prop is not available on Android");
    }

    @Override
    public void blur(SearchBarView view) {
        if (view != null) {
            view.handleBlurJsRequest();
        }
    }

    @Override
    public void focus(SearchBarView view) {
        if (view != null) {
            view.handleFocusJsRequest();
        }
    }

    @Override
    public void clearText(SearchBarView view) {
        if (view != null) {
            view.handleClearTextJsRequest();
        }
    }

    @Override
    public void toggleCancelButton(SearchBarView view, boolean flag) {
        if (view != null) {
            view.handleToggleCancelButtonJsRequest(flag);
        }
    }

    @Override
    public void setText(SearchBarView view, String text) {
        if (view != null) {
            view.handleSetTextJsRequest(text);
        }
    }

    @Override
    public void cancelSearch(SearchBarView view) {
        if (view != null) {
            view.handleCancelSearchJsRequest();
        }
    }

    @Override
    public void setPlacement(SearchBarView view, String placeholder) {
        Intrinsics.checkNotNullParameter(view, "view");
        logNotAvailable("setPlacement");
    }

    @Override
    public void setAllowToolbarIntegration(SearchBarView view, boolean value) {
        Intrinsics.checkNotNullParameter(view, "view");
        logNotAvailable("allowToolbarIntegration");
    }

    @Override
    public void setHideWhenScrolling(SearchBarView view, boolean value) {
        logNotAvailable("hideWhenScrolling");
    }

    @Override
    public void setObscureBackground(SearchBarView view, String value) {
        logNotAvailable("obscureBackground");
    }

    @Override
    public void setHideNavigationBar(SearchBarView view, String value) {
        logNotAvailable("hideNavigationBar");
    }

    @Override
    public void setCancelButtonText(SearchBarView view, String value) {
        logNotAvailable("cancelButtonText");
    }

    @Override
    public void setTintColor(SearchBarView view, Integer value) {
        logNotAvailable("tintColor");
    }
}
