package com.rnmapbox.rnmbx.utils;

import android.content.Context;
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
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/rnmapbox/rnmbx/utils/DownloadedImage;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.rnmapbox.rnmbx.utils.DownloadMapImageTask$execute$1$images$1", f = "DownloadMapImageTask.kt", i = {}, l = {41}, m = "invokeSuspend", n = {}, s = {})
final class DownloadMapImageTask$execute$1$images$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends DownloadedImage>>, Object> {
    final Context $context;
    final Map.Entry<String, ImageEntry>[] $entries;
    int label;
    final DownloadMapImageTask this$0;

    DownloadMapImageTask$execute$1$images$1(DownloadMapImageTask downloadMapImageTask, Map.Entry<String, ImageEntry>[] entryArr, Context context, Continuation<? super DownloadMapImageTask$execute$1$images$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadMapImageTask;
        this.$entries = entryArr;
        this.$context = context;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadMapImageTask$execute$1$images$1(this.this$0, this.$entries, this.$context, continuation);
    }

    @Override
    public Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends DownloadedImage>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super List<DownloadedImage>>) continuation);
    }

    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<DownloadedImage>> continuation) {
        return ((DownloadMapImageTask$execute$1$images$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Object objDownloadImages = this.this$0.downloadImages(this.$entries, this.$context, this);
        return objDownloadImages == coroutine_suspended ? coroutine_suspended : objDownloadImages;
    }
}
