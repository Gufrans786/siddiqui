package com.dylanvann.fastimage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import java.io.File;
import java.net.URL;

public class GlideRequests extends RequestManager {
    @Override
    public RequestManager addDefaultRequestListener(RequestListener requestListener) {
        return addDefaultRequestListener((RequestListener<Object>) requestListener);
    }

    public GlideRequests(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
        super(glide, lifecycle, requestManagerTreeNode, context);
    }

    @Override
    public <ResourceType> GlideRequest<ResourceType> as(Class<ResourceType> cls) {
        return new GlideRequest<>(this.glide, this, cls, this.context);
    }

    @Override
    public synchronized GlideRequests applyDefaultRequestOptions(RequestOptions requestOptions) {
        return (GlideRequests) super.applyDefaultRequestOptions(requestOptions);
    }

    @Override
    public synchronized GlideRequests setDefaultRequestOptions(RequestOptions requestOptions) {
        return (GlideRequests) super.setDefaultRequestOptions(requestOptions);
    }

    @Override
    public synchronized GlideRequests clearOnStop() {
        return (GlideRequests) super.clearOnStop();
    }

    @Override
    public GlideRequests addDefaultRequestListener(RequestListener<Object> requestListener) {
        return (GlideRequests) super.addDefaultRequestListener(requestListener);
    }

    @Override
    public GlideRequest<Bitmap> asBitmap() {
        return (GlideRequest) super.asBitmap();
    }

    @Override
    public GlideRequest<GifDrawable> asGif() {
        return (GlideRequest) super.asGif();
    }

    @Override
    public GlideRequest<Drawable> asDrawable() {
        return (GlideRequest) super.asDrawable();
    }

    @Override
    public RequestBuilder<Drawable> load(Bitmap bitmap) {
        return (GlideRequest) super.load(bitmap);
    }

    @Override
    public RequestBuilder<Drawable> load(Drawable drawable) {
        return (GlideRequest) super.load(drawable);
    }

    @Override
    public RequestBuilder<Drawable> load(String str) {
        return (GlideRequest) super.load(str);
    }

    @Override
    public RequestBuilder<Drawable> load(Uri uri) {
        return (GlideRequest) super.load(uri);
    }

    @Override
    public RequestBuilder<Drawable> load(File file) {
        return (GlideRequest) super.load(file);
    }

    @Override
    public RequestBuilder<Drawable> load(Integer num) {
        return (GlideRequest) super.load(num);
    }

    @Override
    @Deprecated
    public RequestBuilder<Drawable> load(URL url) {
        return (GlideRequest) super.load(url);
    }

    @Override
    public RequestBuilder<Drawable> load(byte[] bArr) {
        return (GlideRequest) super.load(bArr);
    }

    @Override
    public RequestBuilder<Drawable> load(Object obj) {
        return (GlideRequest) super.load(obj);
    }

    @Override
    public GlideRequest<File> downloadOnly() {
        return (GlideRequest) super.downloadOnly();
    }

    @Override
    public GlideRequest<File> download(Object obj) {
        return (GlideRequest) super.download(obj);
    }

    @Override
    public GlideRequest<File> asFile() {
        return (GlideRequest) super.asFile();
    }

    @Override
    protected void setRequestOptions(RequestOptions requestOptions) {
        if (requestOptions instanceof GlideOptions) {
            super.setRequestOptions(requestOptions);
        } else {
            super.setRequestOptions(new GlideOptions().apply((BaseRequestOptions<?>) requestOptions));
        }
    }
}
