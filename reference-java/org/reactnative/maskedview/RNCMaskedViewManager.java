package org.reactnative.maskedview;

import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;

public class RNCMaskedViewManager extends ViewGroupManager<RNCMaskedView> {
    private static final String REACT_CLASS = "RNCMaskedView";

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNCMaskedView createViewInstance(ThemedReactContext themedReactContext) {
        return new RNCMaskedView(themedReactContext);
    }
}
