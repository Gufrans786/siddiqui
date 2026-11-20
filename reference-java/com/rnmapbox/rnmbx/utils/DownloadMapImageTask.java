package com.rnmapbox.rnmbx.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.joran.action.Action;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.UriUtil;
import com.facebook.datasource.DataSource;
import com.facebook.datasource.DataSources;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.CloseableStaticBitmap;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.maps.MapboxMap;
import com.rnmapbox.rnmbx.components.images.ImageManager;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__CollectionKt;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \"2\u00020\u0001:\u0002!\"B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u0012\u001a\u00020\u00132\u0018\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00160\u0015¢\u0006\u0002\u0010\u0019J6\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\u0018\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00160\u00152\u0006\u0010\u0002\u001a\u00020\u0003H\u0082@¢\u0006\u0002\u0010\u001dJ\"\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0010\u0012\f\u0012\n \u0011*\u0004\u0018\u00010\u00030\u00030\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/DownloadMapImageTask;", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "map", "Lcom/mapbox/maps/MapboxMap;", "imageManager", "Lcom/rnmapbox/rnmbx/components/images/ImageManager;", "callback", "Lcom/rnmapbox/rnmbx/utils/DownloadMapImageTask$OnAllImagesLoaded;", "<init>", "(Landroid/content/Context;Lcom/mapbox/maps/MapboxMap;Lcom/rnmapbox/rnmbx/components/images/ImageManager;Lcom/rnmapbox/rnmbx/utils/DownloadMapImageTask$OnAllImagesLoaded;)V", "mMap", "Ljava/lang/ref/WeakReference;", "mCallback", "mImageManager", "contextRef", "kotlin.jvm.PlatformType", "execute", "", RemoteConfigConstants.ResponseFieldKey.ENTRIES, "", "", "", "Lcom/rnmapbox/rnmbx/utils/ImageEntry;", "([Ljava/util/Map$Entry;)V", "downloadImages", "", "Lcom/rnmapbox/rnmbx/utils/DownloadedImage;", "([Ljava/util/Map$Entry;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "downloadImage", Action.KEY_ATTRIBUTE, "imageEntry", "OnAllImagesLoaded", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DownloadMapImageTask {
    public static final String LOG_TAG = "DownloadMapImageTask";
    private final WeakReference<Context> contextRef;
    private final OnAllImagesLoaded mCallback;
    private final WeakReference<ImageManager> mImageManager;
    private final WeakReference<MapboxMap> mMap;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/rnmapbox/rnmbx/utils/DownloadMapImageTask$OnAllImagesLoaded;", "", "onAllImagesLoaded", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnAllImagesLoaded {
        void onAllImagesLoaded();
    }

    public DownloadMapImageTask(Context context, MapboxMap map, ImageManager imageManager, OnAllImagesLoaded onAllImagesLoaded) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(map, "map");
        this.mMap = new WeakReference<>(map);
        this.mCallback = onAllImagesLoaded;
        this.mImageManager = new WeakReference<>(imageManager);
        this.contextRef = new WeakReference<>(context.getApplicationContext());
    }

    public DownloadMapImageTask(Context context, MapboxMap mapboxMap, ImageManager imageManager, OnAllImagesLoaded onAllImagesLoaded, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, mapboxMap, imageManager, (i & 8) != 0 ? null : onAllImagesLoaded);
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.rnmapbox.rnmbx.utils.DownloadMapImageTask$execute$1", f = "DownloadMapImageTask.kt", i = {}, l = {40}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final Context $context;
        final Map.Entry<String, ImageEntry>[] $entries;
        int label;

        AnonymousClass1(Map.Entry<String, ImageEntry>[] entryArr, Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$entries = entryArr;
            this.$context = context;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadMapImageTask.this.new AnonymousClass1(this.$entries, this.$context, continuation);
        }

        @Override
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new DownloadMapImageTask$execute$1$images$1(DownloadMapImageTask.this, this.$entries, this.$context, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            OnAllImagesLoaded onAllImagesLoaded = DownloadMapImageTask.this.mCallback;
            if (onAllImagesLoaded != null) {
                onAllImagesLoaded.onAllImagesLoaded();
            }
            return Unit.INSTANCE;
        }
    }

    public final void execute(Map.Entry<String, ImageEntry>[] entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        Context context = this.contextRef.get();
        if (context == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new AnonymousClass1(entries, context, null), 3, null);
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/rnmapbox/rnmbx/utils/DownloadedImage;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.rnmapbox.rnmbx.utils.DownloadMapImageTask$downloadImages$2", f = "DownloadMapImageTask.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends DownloadedImage>>, Object> {
        final Context $context;
        final Map.Entry<String, ImageEntry>[] $entries;
        int label;
        final DownloadMapImageTask this$0;

        AnonymousClass2(Map.Entry<String, ImageEntry>[] entryArr, DownloadMapImageTask downloadMapImageTask, Context context, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$entries = entryArr;
            this.this$0 = downloadMapImageTask;
            this.$context = context;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$entries, this.this$0, this.$context, continuation);
        }

        @Override
        public Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends DownloadedImage>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super List<DownloadedImage>>) continuation);
        }

        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<DownloadedImage>> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object list$default = FlowKt__CollectionKt.toList$default(FlowKt.filterNotNull(FlowKt.flatMapMerge(FlowKt.asFlow(this.$entries), this.$entries.length, new AnonymousClass1(this.this$0, this.$context, null))), null, this, 1, null);
            return list$default == coroutine_suspended ? coroutine_suspended : list$default;
        }

        @Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/flow/Flow;", "Lcom/rnmapbox/rnmbx/utils/DownloadedImage;", "entry", "", "", "Lcom/rnmapbox/rnmbx/utils/ImageEntry;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.rnmapbox.rnmbx.utils.DownloadMapImageTask$downloadImages$2$1", f = "DownloadMapImageTask.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<Map.Entry<? extends String, ? extends ImageEntry>, Continuation<? super Flow<? extends DownloadedImage>>, Object> {
            final Context $context;
            Object L$0;
            int label;
            final DownloadMapImageTask this$0;

            AnonymousClass1(DownloadMapImageTask downloadMapImageTask, Context context, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = downloadMapImageTask;
                this.$context = context;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$context, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override
            public Object invoke(Map.Entry<? extends String, ? extends ImageEntry> entry, Continuation<? super Flow<? extends DownloadedImage>> continuation) {
                return invoke2((Map.Entry<String, ImageEntry>) entry, (Continuation<? super Flow<DownloadedImage>>) continuation);
            }

            public final Object invoke2(Map.Entry<String, ImageEntry> entry, Continuation<? super Flow<DownloadedImage>> continuation) {
                return ((AnonymousClass1) create(entry, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/rnmapbox/rnmbx/utils/DownloadedImage;"}, k = 3, mv = {2, 1, 0}, xi = 48)
            @DebugMetadata(c = "com.rnmapbox.rnmbx.utils.DownloadMapImageTask$downloadImages$2$1$1", f = "DownloadMapImageTask.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
            static final class C00731 extends SuspendLambda implements Function2<FlowCollector<? super DownloadedImage>, Continuation<? super Unit>, Object> {
                final Context $context;
                final Map.Entry<String, ImageEntry> $entry;
                private Object L$0;
                int label;
                final DownloadMapImageTask this$0;

                C00731(DownloadMapImageTask downloadMapImageTask, Map.Entry<String, ImageEntry> entry, Context context, Continuation<? super C00731> continuation) {
                    super(2, continuation);
                    this.this$0 = downloadMapImageTask;
                    this.$entry = entry;
                    this.$context = context;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C00731 c00731 = new C00731(this.this$0, this.$entry, this.$context, continuation);
                    c00731.L$0 = obj;
                    return c00731;
                }

                @Override
                public final Object invoke(FlowCollector<? super DownloadedImage> flowCollector, Continuation<? super Unit> continuation) {
                    return ((C00731) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        if (((FlowCollector) this.L$0).emit(this.this$0.downloadImage(this.$entry.getKey(), this.$entry.getValue(), this.$context), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return FlowKt.flow(new C00731(this.this$0, (Map.Entry) this.L$0, this.$context, null));
            }
        }
    }

    public final Object downloadImages(Map.Entry<String, ImageEntry>[] entryArr, Context context, Continuation<? super List<DownloadedImage>> continuation) {
        return CoroutineScopeKt.coroutineScope(new AnonymousClass2(entryArr, this, context, null), continuation);
    }

    public final DownloadedImage downloadImage(String key, ImageEntry imageEntry, Context context) {
        CloseableReference closeableReference;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = imageEntry.getUri();
        DownloadedImage downloadedImage = null;
        if (StringsKt.startsWith$default((String) objectRef.element, "/", false, 2, (Object) null)) {
            ?? string = Uri.fromFile(new File((String) objectRef.element)).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            objectRef.element = string;
        } else if (!StringsKt.startsWith$default((String) objectRef.element, "http://", false, 2, (Object) null) && !StringsKt.startsWith$default((String) objectRef.element, "https://", false, 2, (Object) null)) {
            int identifier = context.getResources().getIdentifier((String) objectRef.element, "drawable", context.getApplicationContext().getPackageName());
            if (identifier > 0) {
                ?? string2 = UriUtil.getUriForResourceId(identifier).toString();
                Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                objectRef.element = string2;
            } else {
                Log.e(LOG_TAG, "Failed to find resource for image: " + key + " " + imageEntry.getInfo().getName() + " " + imageEntry.getUri());
            }
        }
        DataSource<CloseableReference<CloseableImage>> dataSourceFetchDecodedImage = Fresco.getImagePipeline().fetchDecodedImage(ImageRequestBuilder.newBuilderWithSource(Uri.parse((String) objectRef.element)).setRotationOptions(RotationOptions.INSTANCE.autoRotate()).build(), this);
        try {
            closeableReference = (CloseableReference) DataSources.waitForFinalResult(dataSourceFetchDecodedImage);
            if (closeableReference != null) {
                try {
                    CloseableImage closeableImage = (CloseableImage) closeableReference.get();
                    if (closeableImage != null && (closeableImage instanceof CloseableStaticBitmap)) {
                        Bitmap bitmapCopy = ((CloseableStaticBitmap) closeableImage).getUnderlyingBitmap().copy(Bitmap.Config.ARGB_8888, true);
                        bitmapCopy.setDensity(SyslogConstants.LOG_LOCAL4);
                        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new DownloadMapImageTask$downloadImage$1$1(this, key, bitmapCopy, imageEntry, objectRef, null), 3, null);
                        Intrinsics.checkNotNull(bitmapCopy);
                        downloadedImage = new DownloadedImage(key, bitmapCopy, imageEntry.getInfo());
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        Log.e(LOG_TAG, "Failed to load image: " + objectRef.element, th);
                        return null;
                    } finally {
                        dataSourceFetchDecodedImage.close();
                        if (closeableReference != null) {
                            CloseableReference.closeSafely((CloseableReference<?>) closeableReference);
                        }
                    }
                }
            }
            dataSourceFetchDecodedImage.close();
            if (closeableReference != null) {
                CloseableReference.closeSafely((CloseableReference<?>) closeableReference);
            }
            return downloadedImage;
        } catch (Throwable th2) {
            th = th2;
            closeableReference = null;
        }
    }
}
