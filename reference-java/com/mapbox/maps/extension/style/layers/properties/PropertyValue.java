package com.mapbox.maps.extension.style.layers.properties;

import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.extension.style.expressions.generated.Expression;
import com.mapbox.maps.extension.style.types.StyleTransition;
import com.mapbox.maps.extension.style.utils.ColorUtils;
import com.mapbox.maps.extension.style.utils.TypeUtils;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \u001a*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u001aB\u0017\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0002\u0010\u0006J\r\u0010\u0017\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0013J\b\u0010\u0019\u001a\u00020\u0004H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b8G¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\rR\u0011\u0010\u000e\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u000f\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0005\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;", ExifInterface.GPS_DIRECTION_TRUE, "", "propertyName", "", "propertyValue", "(Ljava/lang/String;Ljava/lang/Object;)V", "colorInt", "", "getColorInt", "()Ljava/lang/Integer;", "isExpression", "", "()Z", "isTransition", "isValue", "getPropertyName", "()Ljava/lang/String;", "getPropertyValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "value", "Lcom/mapbox/bindgen/Value;", "getValue", "()Lcom/mapbox/bindgen/Value;", "toString", "Companion", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class PropertyValue<T> {
    private static final String TAG = "Mbgl-PropertyValue";
    private final String propertyName;
    private final T propertyValue;
    private final Value value;

    public PropertyValue(String propertyName, T t) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        this.propertyName = propertyName;
        this.propertyValue = t;
        try {
            TypeUtils typeUtils = TypeUtils.INSTANCE;
            Intrinsics.checkNotNull(t, "null cannot be cast to non-null type kotlin.Any");
            this.value = typeUtils.wrapToValue(t);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Incorrect property value for " + this.propertyName + ": " + e.getMessage(), e.getCause());
        }
    }

    public final String getPropertyName() {
        return this.propertyName;
    }

    public final T getPropertyValue() {
        return this.propertyValue;
    }

    public final Value getValue() {
        return this.value;
    }

    public final boolean isExpression() {
        return this.propertyValue instanceof Expression;
    }

    public final boolean isTransition() {
        return this.propertyValue instanceof StyleTransition;
    }

    public final boolean isValue() {
        return (isExpression() || isTransition()) ? false : true;
    }

    public final T m1037getValue() {
        if (isValue()) {
            return this.propertyValue;
        }
        return null;
    }

    public final Integer getColorInt() {
        if (!isValue() || !(this.propertyValue instanceof String)) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format("%s is not a String value and can not be converted to a color it", Arrays.copyOf(new Object[]{this.propertyName}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            Log.e(TAG, str);
            return null;
        }
        try {
            ColorUtils colorUtils = ColorUtils.INSTANCE;
            T t = this.propertyValue;
            Intrinsics.checkNotNull(t, "null cannot be cast to non-null type kotlin.String");
            return colorUtils.rgbaToColor((String) t);
        } catch (Exception e) {
            Log.e(TAG, String.format("%s could not be converted to a Color int: %s", this.propertyName, e.getMessage()));
            return null;
        }
    }

    public String toString() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%s: %s", Arrays.copyOf(new Object[]{this.propertyName, this.propertyValue}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
        return str;
    }
}
