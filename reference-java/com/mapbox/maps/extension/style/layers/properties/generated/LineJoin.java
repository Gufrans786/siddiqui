package com.mapbox.maps.extension.style.layers.properties.generated;

import ch.qos.logback.core.CoreConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0003H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LayerProperty;", "value", "", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LineJoin implements LayerProperty {
    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final LineJoin BEVEL = new LineJoin("bevel");
    public static final LineJoin ROUND = new LineJoin("round");
    public static final LineJoin MITER = new LineJoin("miter");
    public static final LineJoin NONE = new LineJoin("none");

    @JvmStatic
    public static final LineJoin valueOf(String str) {
        return INSTANCE.valueOf(str);
    }

    private LineJoin(String str) {
        this.value = str;
    }

    @Override
    public String getValue() {
        return this.value;
    }

    public boolean equals(Object other) {
        return (other instanceof LineJoin) && Intrinsics.areEqual(getValue(), ((LineJoin) other).getValue());
    }

    public int hashCode() {
        return getValue().hashCode();
    }

    public String toString() {
        return "LineJoin(value=" + getValue() + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin$Companion;", "", "()V", "BEVEL", "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;", "MITER", "NONE", "ROUND", CoreConstants.VALUE_OF, "value", "", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LineJoin valueOf(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            switch (value.hashCode()) {
                case 2402104:
                    if (value.equals("NONE")) {
                        return LineJoin.NONE;
                    }
                    break;
                case 63092826:
                    if (value.equals("BEVEL")) {
                        return LineJoin.BEVEL;
                    }
                    break;
                case 73368805:
                    if (value.equals("MITER")) {
                        return LineJoin.MITER;
                    }
                    break;
                case 78166382:
                    if (value.equals("ROUND")) {
                        return LineJoin.ROUND;
                    }
                    break;
            }
            throw new RuntimeException("LineJoin.valueOf does not support [" + value + AbstractJsonLexerKt.END_LIST);
        }
    }
}
