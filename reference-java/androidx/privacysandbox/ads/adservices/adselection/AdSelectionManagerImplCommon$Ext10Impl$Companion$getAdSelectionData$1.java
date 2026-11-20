package androidx.privacysandbox.ads.adservices.adselection;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$Ext10Impl$Companion", f = "AdSelectionManagerImplCommon.kt", i = {0, 0}, l = {231}, m = "getAdSelectionData", n = {"adSelectionManager", "getAdSelectionDataRequest"}, s = {"L$0", "L$1"})
final class AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    Object result;
    final AdSelectionManagerImplCommon.Ext10Impl.Companion this$0;

    AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1(AdSelectionManagerImplCommon.Ext10Impl.Companion companion, Continuation<? super AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1> continuation) {
        super(continuation);
        this.this$0 = companion;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getAdSelectionData(null, null, this);
    }
}
