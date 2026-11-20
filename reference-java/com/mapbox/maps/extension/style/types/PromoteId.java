package com.mapbox.maps.extension.style.types;

import ch.qos.logback.core.CoreConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import com.mapbox.maps.extension.style.utils.TypeUtilsKt;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001b\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B\u001b\b\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\r\u0010\u0017\u001a\u00020\u0018H\u0000¢\u0006\u0002\b\u0019R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/mapbox/maps/extension/style/types/PromoteId;", "", "expression", "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "sourceId", "", "(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Ljava/lang/String;)V", "propertyName", "(Ljava/lang/String;Ljava/lang/String;)V", "getExpression", "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;", "getPropertyName", "()Ljava/lang/String;", "getSourceId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "toValue", "Lcom/mapbox/bindgen/Value;", "toValue$extension_style_release", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PromoteId {

    public static final Companion INSTANCE = new Companion(null);
    private final Expression expression;
    private final String propertyName;
    private final String sourceId;

    public PromoteId(Expression expression) {
        this(expression, (String) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        Intrinsics.checkNotNullParameter(expression, "expression");
    }

    public PromoteId(String propertyName) {
        this(propertyName, (String) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
    }

    public static PromoteId copy$default(PromoteId promoteId, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = promoteId.propertyName;
        }
        if ((i & 2) != 0) {
            str2 = promoteId.sourceId;
        }
        return promoteId.copy(str, str2);
    }

    public final String getPropertyName() {
        return this.propertyName;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final PromoteId copy(String propertyName, String sourceId) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        return new PromoteId(propertyName, sourceId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PromoteId)) {
            return false;
        }
        PromoteId promoteId = (PromoteId) other;
        return Intrinsics.areEqual(this.propertyName, promoteId.propertyName) && Intrinsics.areEqual(this.sourceId, promoteId.sourceId);
    }

    public int hashCode() {
        int iHashCode = this.propertyName.hashCode() * 31;
        String str = this.sourceId;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "PromoteId(propertyName=" + this.propertyName + ", sourceId=" + this.sourceId + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public PromoteId(String propertyName, String str) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        this.propertyName = propertyName;
        this.sourceId = str;
        Expression expressionUnwrapToExpression = null;
        try {
            Value value = Value.fromJson(propertyName).getValue();
            if (value != null) {
                expressionUnwrapToExpression = TypeUtilsKt.unwrapToExpression(value);
            }
        } catch (Throwable unused) {
        }
        this.expression = expressionUnwrapToExpression;
    }

    public PromoteId(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2);
    }

    public final String getPropertyName() {
        return this.propertyName;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final Expression getExpression() {
        return this.expression;
    }

    public PromoteId(Expression expression, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(expression, (i & 2) != 0 ? null : str);
    }

    public PromoteId(Expression expression, String str) {
        Intrinsics.checkNotNullParameter(expression, "expression");
        String json = expression.toJson();
        Intrinsics.checkNotNullExpressionValue(json, "expression.toJson()");
        this(json, str);
    }

    public static final Value toValue$lambda$0(PromoteId this$0, String it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        return Value.valueOf(this$0.propertyName);
    }

    public final Value toValue$extension_style_release() {
        Value valueOrElse = Value.fromJson(this.propertyName).getValueOrElse(new Expected.Transformer() {
            @Override
            public final Object invoke(Object obj) {
                return PromoteId.toValue$lambda$0(this.f$0, (String) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(valueOrElse, "fromJson(propertyName).g…e.valueOf(propertyName) }");
        Value value = valueOrElse;
        return this.sourceId != null ? new Value((HashMap<String, Value>) MapsKt.hashMapOf(TuplesKt.to(this.sourceId, value))) : value;
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0000¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/mapbox/maps/extension/style/types/PromoteId$Companion;", "", "()V", "fromProperty", "Lcom/mapbox/maps/extension/style/types/PromoteId;", "propertyName", "fromProperty$extension_style_release", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PromoteId fromProperty$extension_style_release(Object propertyName) {
            Intrinsics.checkNotNullParameter(propertyName, "propertyName");
            int i = 2;
            String str = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            Object[] objArr5 = 0;
            if (propertyName instanceof String) {
                return new PromoteId((String) propertyName, str, i, (DefaultConstructorMarker) (objArr5 == true ? 1 : 0));
            }
            if (propertyName instanceof List) {
                return new PromoteId(TypeUtilsKt.unwrapToExpression(TypeUtils.INSTANCE.wrapToValue(propertyName)), (String) (objArr4 == true ? 1 : 0), i, (DefaultConstructorMarker) (objArr3 == true ? 1 : 0));
            }
            if (propertyName instanceof HashMap) {
                try {
                    HashMap map = (HashMap) propertyName;
                    Set setKeySet = map.keySet();
                    Intrinsics.checkNotNullExpressionValue(setKeySet, "propertyMap.keys");
                    String str2 = "";
                    if (!setKeySet.isEmpty()) {
                        Object next = map.keySet().iterator().next();
                        Intrinsics.checkNotNullExpressionValue(next, "propertyMap.keys.iterator().next()");
                        String str3 = (String) next;
                        Object obj = map.get(str3);
                        if (!(obj == null ? true : obj instanceof String)) {
                            if (obj instanceof List) {
                                return new PromoteId(TypeUtilsKt.unwrapToExpression(TypeUtils.INSTANCE.wrapToValue(obj)), str3);
                            }
                            throw new RuntimeException("PromoteId value should be either String or Expression");
                        }
                        String str4 = (String) obj;
                        if (str4 != null) {
                            str2 = str4;
                        }
                        return new PromoteId(str2, str3);
                    }
                    return new PromoteId(str2, (String) (objArr2 == true ? 1 : 0), i, (DefaultConstructorMarker) (objArr == true ? 1 : 0));
                } catch (RuntimeException unused) {
                    throw new IllegalArgumentException(propertyName + " must be in the format HashMap<String,String> or HashMap<String,Expression>");
                }
            }
            throw new UnsupportedOperationException("Wrapping " + propertyName.getClass().getSimpleName() + " to PromoteId is not supported.");
        }
    }
}
