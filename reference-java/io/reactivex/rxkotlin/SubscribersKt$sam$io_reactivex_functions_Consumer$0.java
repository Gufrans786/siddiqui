package io.reactivex.rxkotlin;

import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 15})
final class SubscribersKt$sam$io_reactivex_functions_Consumer$0 implements Consumer {
    private final Function1 function;

    SubscribersKt$sam$io_reactivex_functions_Consumer$0(Function1 function1) {
        this.function = function1;
    }

    @Override
    public final void accept(Object obj) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(obj), "invoke(...)");
    }
}
