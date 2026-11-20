package com.google.common.collect;

import java.util.function.BinaryOperator;

public final class CollectCollectors$$ExternalSyntheticLambda42 implements BinaryOperator {
    @Override
    public final Object apply(Object obj, Object obj2) {
        return ((CollectCollectors.EnumMapAccumulator) obj).combine((CollectCollectors.EnumMapAccumulator) obj2);
    }
}
