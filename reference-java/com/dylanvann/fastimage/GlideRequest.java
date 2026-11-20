package com.dylanvann.fastimage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestListener;
import java.io.File;
import java.net.URL;
import java.util.List;

public class GlideRequest<TranscodeType> extends RequestBuilder<TranscodeType> implements Cloneable {
    @Override
    public RequestBuilder apply(BaseRequestOptions baseRequestOptions) {
        return apply((BaseRequestOptions<?>) baseRequestOptions);
    }

    @Override
    public BaseRequestOptions apply(BaseRequestOptions baseRequestOptions) {
        return apply((BaseRequestOptions<?>) baseRequestOptions);
    }

    @Override
    public BaseRequestOptions decode(Class cls) {
        return decode((Class<?>) cls);
    }

    @Override
    public BaseRequestOptions optionalTransform(Transformation transformation) {
        return optionalTransform((Transformation<Bitmap>) transformation);
    }

    @Override
    public BaseRequestOptions set(Option option, Object obj) {
        return set((Option<Object>) option, obj);
    }

    @Override
    public BaseRequestOptions transform(Transformation transformation) {
        return transform((Transformation<Bitmap>) transformation);
    }

    @Override
    public BaseRequestOptions transform(Transformation[] transformationArr) {
        return transform((Transformation<Bitmap>[]) transformationArr);
    }

    @Override
    @Deprecated
    public BaseRequestOptions transforms(Transformation[] transformationArr) {
        return transforms((Transformation<Bitmap>[]) transformationArr);
    }

    GlideRequest(Class<TranscodeType> cls, RequestBuilder<?> requestBuilder) {
        super(cls, requestBuilder);
    }

    GlideRequest(Glide glide, RequestManager requestManager, Class<TranscodeType> cls, Context context) {
        super(glide, requestManager, cls, context);
    }

    @Override
    public GlideRequest<File> getDownloadOnlyRequest() {
        return new GlideRequest(File.class, this).apply((BaseRequestOptions<?>) DOWNLOAD_ONLY_OPTIONS);
    }

    @Override
    public GlideRequest<TranscodeType> sizeMultiplier(float f) {
        return (GlideRequest) super.sizeMultiplier(f);
    }

    @Override
    public GlideRequest<TranscodeType> useUnlimitedSourceGeneratorsPool(boolean z) {
        return (GlideRequest) super.useUnlimitedSourceGeneratorsPool(z);
    }

    @Override
    public GlideRequest<TranscodeType> useAnimationPool(boolean z) {
        return (GlideRequest) super.useAnimationPool(z);
    }

    @Override
    public GlideRequest<TranscodeType> onlyRetrieveFromCache(boolean z) {
        return (GlideRequest) super.onlyRetrieveFromCache(z);
    }

    @Override
    public GlideRequest<TranscodeType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        return (GlideRequest) super.diskCacheStrategy(diskCacheStrategy);
    }

    @Override
    public GlideRequest<TranscodeType> priority(Priority priority) {
        return (GlideRequest) super.priority(priority);
    }

    @Override
    public GlideRequest<TranscodeType> placeholder(Drawable drawable) {
        return (GlideRequest) super.placeholder(drawable);
    }

    @Override
    public GlideRequest<TranscodeType> placeholder(int i) {
        return (GlideRequest) super.placeholder(i);
    }

    @Override
    public GlideRequest<TranscodeType> fallback(Drawable drawable) {
        return (GlideRequest) super.fallback(drawable);
    }

    @Override
    public GlideRequest<TranscodeType> fallback(int i) {
        return (GlideRequest) super.fallback(i);
    }

    @Override
    public GlideRequest<TranscodeType> error(Drawable drawable) {
        return (GlideRequest) super.error(drawable);
    }

    @Override
    public GlideRequest<TranscodeType> error(int i) {
        return (GlideRequest) super.error(i);
    }

    @Override
    public GlideRequest<TranscodeType> theme(Resources.Theme theme) {
        return (GlideRequest) super.theme(theme);
    }

    @Override
    public GlideRequest<TranscodeType> skipMemoryCache(boolean z) {
        return (GlideRequest) super.skipMemoryCache(z);
    }

    @Override
    public GlideRequest<TranscodeType> override(int i, int i2) {
        return (GlideRequest) super.override(i, i2);
    }

    @Override
    public GlideRequest<TranscodeType> override(int i) {
        return (GlideRequest) super.override(i);
    }

    @Override
    public GlideRequest<TranscodeType> signature(Key key) {
        return (GlideRequest) super.signature(key);
    }

    @Override
    public <Y> GlideRequest<TranscodeType> set(Option<Y> option, Y y) {
        return (GlideRequest) super.set((Option) option, (Object) y);
    }

    @Override
    public GlideRequest<TranscodeType> decode(Class<?> cls) {
        return (GlideRequest) super.decode(cls);
    }

    @Override
    public GlideRequest<TranscodeType> encodeFormat(Bitmap.CompressFormat compressFormat) {
        return (GlideRequest) super.encodeFormat(compressFormat);
    }

    @Override
    public GlideRequest<TranscodeType> encodeQuality(int i) {
        return (GlideRequest) super.encodeQuality(i);
    }

    @Override
    public GlideRequest<TranscodeType> frame(long j) {
        return (GlideRequest) super.frame(j);
    }

    @Override
    public GlideRequest<TranscodeType> format(DecodeFormat decodeFormat) {
        return (GlideRequest) super.format(decodeFormat);
    }

    @Override
    public GlideRequest<TranscodeType> disallowHardwareConfig() {
        return (GlideRequest) super.disallowHardwareConfig();
    }

    @Override
    public GlideRequest<TranscodeType> downsample(DownsampleStrategy downsampleStrategy) {
        return (GlideRequest) super.downsample(downsampleStrategy);
    }

    @Override
    public GlideRequest<TranscodeType> timeout(int i) {
        return (GlideRequest) super.timeout(i);
    }

    @Override
    public GlideRequest<TranscodeType> optionalCenterCrop() {
        return (GlideRequest) super.optionalCenterCrop();
    }

    @Override
    public GlideRequest<TranscodeType> centerCrop() {
        return (GlideRequest) super.centerCrop();
    }

    @Override
    public GlideRequest<TranscodeType> optionalFitCenter() {
        return (GlideRequest) super.optionalFitCenter();
    }

    @Override
    public GlideRequest<TranscodeType> fitCenter() {
        return (GlideRequest) super.fitCenter();
    }

    @Override
    public GlideRequest<TranscodeType> optionalCenterInside() {
        return (GlideRequest) super.optionalCenterInside();
    }

    @Override
    public GlideRequest<TranscodeType> centerInside() {
        return (GlideRequest) super.centerInside();
    }

    @Override
    public GlideRequest<TranscodeType> optionalCircleCrop() {
        return (GlideRequest) super.optionalCircleCrop();
    }

    @Override
    public GlideRequest<TranscodeType> circleCrop() {
        return (GlideRequest) super.circleCrop();
    }

    @Override
    public GlideRequest<TranscodeType> transform(Transformation<Bitmap> transformation) {
        return (GlideRequest) super.transform(transformation);
    }

    @Override
    public GlideRequest<TranscodeType> transform(Transformation<Bitmap>... transformationArr) {
        return (GlideRequest) super.transform(transformationArr);
    }

    @Override
    @Deprecated
    public GlideRequest<TranscodeType> transforms(Transformation<Bitmap>... transformationArr) {
        return (GlideRequest) super.transforms(transformationArr);
    }

    @Override
    public GlideRequest<TranscodeType> optionalTransform(Transformation<Bitmap> transformation) {
        return (GlideRequest) super.optionalTransform(transformation);
    }

    @Override
    public <Y> GlideRequest<TranscodeType> optionalTransform(Class<Y> cls, Transformation<Y> transformation) {
        return (GlideRequest) super.optionalTransform((Class) cls, (Transformation) transformation);
    }

    @Override
    public <Y> GlideRequest<TranscodeType> transform(Class<Y> cls, Transformation<Y> transformation) {
        return (GlideRequest) super.transform((Class) cls, (Transformation) transformation);
    }

    @Override
    public GlideRequest<TranscodeType> dontTransform() {
        return (GlideRequest) super.dontTransform();
    }

    @Override
    public GlideRequest<TranscodeType> dontAnimate() {
        return (GlideRequest) super.dontAnimate();
    }

    @Override
    public GlideRequest<TranscodeType> lock() {
        return (GlideRequest) super.lock();
    }

    @Override
    public GlideRequest<TranscodeType> autoClone() {
        return (GlideRequest) super.autoClone();
    }

    @Override
    public GlideRequest<TranscodeType> apply(BaseRequestOptions<?> baseRequestOptions) {
        return (GlideRequest) super.apply(baseRequestOptions);
    }

    @Override
    public GlideRequest<TranscodeType> transition(TransitionOptions<?, ? super TranscodeType> transitionOptions) {
        return (GlideRequest) super.transition((TransitionOptions) transitionOptions);
    }

    @Override
    public GlideRequest<TranscodeType> listener(RequestListener<TranscodeType> requestListener) {
        return (GlideRequest) super.listener((RequestListener) requestListener);
    }

    @Override
    public GlideRequest<TranscodeType> addListener(RequestListener<TranscodeType> requestListener) {
        return (GlideRequest) super.addListener((RequestListener) requestListener);
    }

    @Override
    public GlideRequest<TranscodeType> error(RequestBuilder<TranscodeType> requestBuilder) {
        return (GlideRequest) super.error((RequestBuilder) requestBuilder);
    }

    @Override
    public GlideRequest<TranscodeType> error(Object obj) {
        return (GlideRequest) super.error(obj);
    }

    @Override
    public GlideRequest<TranscodeType> thumbnail(RequestBuilder<TranscodeType> requestBuilder) {
        return (GlideRequest) super.thumbnail((RequestBuilder) requestBuilder);
    }

    @Override
    @SafeVarargs
    public final GlideRequest<TranscodeType> thumbnail(RequestBuilder<TranscodeType>... requestBuilderArr) {
        return (GlideRequest) super.thumbnail((RequestBuilder[]) requestBuilderArr);
    }

    @Override
    public GlideRequest<TranscodeType> thumbnail(List<RequestBuilder<TranscodeType>> list) {
        return (GlideRequest) super.thumbnail((List) list);
    }

    @Override
    @Deprecated
    public GlideRequest<TranscodeType> thumbnail(float f) {
        return (GlideRequest) super.thumbnail(f);
    }

    @Override
    public GlideRequest<TranscodeType> load(Object obj) {
        return (GlideRequest) super.load(obj);
    }

    @Override
    public GlideRequest<TranscodeType> load(Bitmap bitmap) {
        return (GlideRequest) super.load(bitmap);
    }

    @Override
    public GlideRequest<TranscodeType> load(Drawable drawable) {
        return (GlideRequest) super.load(drawable);
    }

    @Override
    public GlideRequest<TranscodeType> load(String str) {
        return (GlideRequest) super.load(str);
    }

    @Override
    public GlideRequest<TranscodeType> load(Uri uri) {
        return (GlideRequest) super.load(uri);
    }

    @Override
    public GlideRequest<TranscodeType> load(File file) {
        return (GlideRequest) super.load(file);
    }

    @Override
    public GlideRequest<TranscodeType> load(Integer num) {
        return (GlideRequest) super.load(num);
    }

    @Override
    @Deprecated
    public GlideRequest<TranscodeType> load(URL url) {
        return (GlideRequest) super.load(url);
    }

    @Override
    public GlideRequest<TranscodeType> load(byte[] bArr) {
        return (GlideRequest) super.load(bArr);
    }

    @Override
    public GlideRequest<TranscodeType> mo194clone() {
        return (GlideRequest) super.mo194clone();
    }
}
