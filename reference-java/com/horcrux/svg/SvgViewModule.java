package com.horcrux.svg;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.UiThreadUtil;
import com.facebook.react.module.annotations.ReactModule;
import javax.annotation.Nonnull;

@ReactModule(name = "RNSVGSvgViewModule")
class SvgViewModule extends NativeSvgViewModuleSpec {
    public static final String NAME = "RNSVGSvgViewModule";

    SvgViewModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @Override
    @Nonnull
    public String getName() {
        return "RNSVGSvgViewModule";
    }

    class AnonymousClass1 implements Runnable {
        final int val$attempt;
        final ReadableMap val$options;
        final Callback val$successCallback;
        final int val$tag;

        AnonymousClass1(int i, ReadableMap readableMap, Callback callback, int i2) {
            this.val$tag = i;
            this.val$options = readableMap;
            this.val$successCallback = callback;
            this.val$attempt = i2;
        }

        @Override
        public void run() {
            SvgView svgViewByTag = SvgViewManager.getSvgViewByTag(this.val$tag);
            if (svgViewByTag == null) {
                SvgViewManager.runWhenViewIsAvailable(this.val$tag, new Runnable() {
                    @Override
                    public void run() {
                        SvgView svgViewByTag2 = SvgViewManager.getSvgViewByTag(AnonymousClass1.this.val$tag);
                        if (svgViewByTag2 == null) {
                            return;
                        }
                        svgViewByTag2.setToDataUrlTask(new Runnable() {
                            @Override
                            public void run() {
                                SvgViewModule.toDataURL(AnonymousClass1.this.val$tag, AnonymousClass1.this.val$options, AnonymousClass1.this.val$successCallback, AnonymousClass1.this.val$attempt + 1);
                            }
                        });
                    }
                });
                return;
            }
            if (svgViewByTag.notRendered()) {
                svgViewByTag.setToDataUrlTask(new Runnable() {
                    @Override
                    public void run() {
                        SvgViewModule.toDataURL(AnonymousClass1.this.val$tag, AnonymousClass1.this.val$options, AnonymousClass1.this.val$successCallback, AnonymousClass1.this.val$attempt + 1);
                    }
                });
                return;
            }
            ReadableMap readableMap = this.val$options;
            if (readableMap != null) {
                this.val$successCallback.invoke(svgViewByTag.toDataURL(readableMap.getInt("width"), this.val$options.getInt("height")));
            } else {
                this.val$successCallback.invoke(svgViewByTag.toDataURL());
            }
        }
    }

    public static void toDataURL(int i, ReadableMap readableMap, Callback callback, int i2) {
        UiThreadUtil.runOnUiThread(new AnonymousClass1(i, readableMap, callback, i2));
    }

    @Override
    @ReactMethod
    public void toDataURL(Double d, ReadableMap readableMap, Callback callback) {
        toDataURL(d.intValue(), readableMap, callback, 0);
    }
}
