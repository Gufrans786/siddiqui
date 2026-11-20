package com.reactnative.ivpusic.imagepicker;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.module.annotations.ReactModule;

@ReactModule(name = NativeImageCropPickerSpec.NAME)
public class PickerModule extends NativeImageCropPickerSpec {
    private final ImageCropPicker picker;

    public PickerModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.picker = new ImageCropPicker(reactApplicationContext);
    }

    @Override
    public void openPicker(ReadableMap readableMap, Promise promise) {
        this.picker.openPicker(readableMap, promise);
    }

    @Override
    public void openCamera(ReadableMap readableMap, Promise promise) {
        this.picker.openCamera(readableMap, promise);
    }

    @Override
    public void openCropper(ReadableMap readableMap, Promise promise) {
        this.picker.openCropper(readableMap, promise);
    }

    @Override
    public void clean(Promise promise) {
        this.picker.clean(promise);
    }

    @Override
    public void cleanSingle(String str, Promise promise) {
        this.picker.cleanSingle(str, promise);
    }
}
