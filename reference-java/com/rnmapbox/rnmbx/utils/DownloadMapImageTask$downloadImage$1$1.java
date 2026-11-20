package com.rnmapbox.rnmbx.utils;

import android.graphics.Bitmap;
import android.util.Log;
import com.mapbox.maps.MapboxMap;
import com.mapbox.maps.Style;
import com.rnmapbox.rnmbx.components.images.ImageManager;
import com.rnmapbox.rnmbx.v11compat.image.ImageKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.rnmapbox.rnmbx.utils.DownloadMapImageTask$downloadImage$1$1", f = "DownloadMapImageTask.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DownloadMapImageTask$downloadImage$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final Bitmap $bitmap;
    final ImageEntry $imageEntry;
    final String $key;
    final Ref.ObjectRef<String> $uri;
    int label;
    final DownloadMapImageTask this$0;

    DownloadMapImageTask$downloadImage$1$1(DownloadMapImageTask downloadMapImageTask, String str, Bitmap bitmap, ImageEntry imageEntry, Ref.ObjectRef<String> objectRef, Continuation<? super DownloadMapImageTask$downloadImage$1$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadMapImageTask;
        this.$key = str;
        this.$bitmap = bitmap;
        this.$imageEntry = imageEntry;
        this.$uri = objectRef;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadMapImageTask$downloadImage$1$1(this.this$0, this.$key, this.$bitmap, this.$imageEntry, this.$uri, continuation);
    }

    @Override
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((DownloadMapImageTask$downloadImage$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            MapboxMap mapboxMap = (MapboxMap) this.this$0.mMap.get();
            Style styleDeprecated = mapboxMap != null ? mapboxMap.getStyleDeprecated() : null;
            if (styleDeprecated != null) {
                ImageManager imageManager = (ImageManager) this.this$0.mImageManager.get();
                if (imageManager != null) {
                    String str = this.$key;
                    Bitmap bitmap = this.$bitmap;
                    Intrinsics.checkNotNull(bitmap);
                    imageManager.resolve(str, bitmap);
                }
                String str2 = this.$key;
                Bitmap bitmap2 = this.$bitmap;
                Intrinsics.checkNotNull(bitmap2);
                ImageKt.addBitmapImage(styleDeprecated, str2, bitmap2, this.$imageEntry.getInfo());
            } else {
                Boxing.boxInt(Log.e(DownloadMapImageTask.LOG_TAG, "Failed to get map style to add bitmap: " + ((Object) this.$uri.element)));
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
