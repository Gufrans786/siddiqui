package com.rnamazonpaymentservicesdk;

import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.annotations.ReactPropGroup;
import java.util.Map;

public class CustomCheckoutViewManager extends ViewGroupManager<FrameLayout> {
    public static final String REACT_CLASS = "CustomCheckout";
    public final int COMMAND_CREATE = 1;
    private int propHeight;
    private int propWidth;
    ReactApplicationContext reactContext;

    public CustomCheckoutViewManager(ReactApplicationContext reactApplicationContext) {
        this.reactContext = reactApplicationContext;
    }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public FrameLayout createViewInstance(ThemedReactContext themedReactContext) {
        return new FrameLayout(themedReactContext);
    }

    @Override
    public Map<String, Integer> getCommandsMap() {
        return MapBuilder.of("create", 1);
    }

    @Override
    public void receiveCommand(FrameLayout frameLayout, String str, ReadableArray readableArray) {
        super.receiveCommand(frameLayout, str, readableArray);
        int i = readableArray.getInt(0);
        if (Integer.parseInt(str) != 1) {
            return;
        }
        createFragment(frameLayout, i);
    }

    @ReactPropGroup(customType = "Style", names = {"width", "height"})
    public void setStyle(FrameLayout frameLayout, int i, Integer num) {
        if (i == 0) {
            this.propWidth = num.intValue();
        }
        if (i == 1) {
            this.propHeight = num.intValue();
        }
    }

    public void createFragment(FrameLayout frameLayout, int i) {
        setupLayout((ViewGroup) frameLayout.findViewById(i));
        ((FragmentActivity) this.reactContext.getCurrentActivity()).getSupportFragmentManager().beginTransaction().replace(i, new CustomCheckoutFragment(), String.valueOf(i)).commit();
    }

    public void setupLayout(final View view) {
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() {
            @Override
            public void doFrame(long j) {
                CustomCheckoutViewManager.this.manuallyLayoutChildren(view);
                view.getViewTreeObserver().dispatchOnGlobalLayout();
                Choreographer.getInstance().postFrameCallback(this);
            }
        });
    }

    public void manuallyLayoutChildren(View view) {
        int i = this.propWidth;
        int i2 = this.propHeight;
        view.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        view.layout(0, 0, i, i2);
    }
}
