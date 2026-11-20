package com.mapbox.maps.extension.style.color;

import android.graphics.Bitmap;
import com.mapbox.bindgen.Value;
import com.mapbox.maps.ColorTheme;
import com.mapbox.maps.ExtensionUtils;
import com.mapbox.maps.Image;
import com.mapbox.maps.StylePropertyValue;
import com.mapbox.maps.StylePropertyValueKind;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0007\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"colorTheme", "Lcom/mapbox/maps/ColorTheme;", "bitmap", "Landroid/graphics/Bitmap;", "image", "Lcom/mapbox/maps/Image;", "base64", "", "extension-style_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class ColorThemeExtKt {
    public static final ColorTheme colorTheme() {
        ColorTheme colorThemeValueOf = ColorTheme.valueOf(new StylePropertyValue(Value.nullValue(), StylePropertyValueKind.UNDEFINED));
        Intrinsics.checkNotNullExpressionValue(colorThemeValueOf, "valueOf(\n  StyleProperty…ValueKind.UNDEFINED\n  )\n)");
        return colorThemeValueOf;
    }

    public static final ColorTheme colorTheme(String base64) {
        Intrinsics.checkNotNullParameter(base64, "base64");
        ColorTheme colorThemeValueOf = ColorTheme.valueOf(new StylePropertyValue(Value.valueOf(base64), StylePropertyValueKind.CONSTANT));
        Intrinsics.checkNotNullExpressionValue(colorThemeValueOf, "valueOf(\n  StyleProperty…yValueKind.CONSTANT\n  )\n)");
        return colorThemeValueOf;
    }

    public static final ColorTheme colorTheme(Image image) {
        Intrinsics.checkNotNullParameter(image, "image");
        ColorTheme colorThemeValueOf = ColorTheme.valueOf(image);
        Intrinsics.checkNotNullExpressionValue(colorThemeValueOf, "valueOf(image)");
        return colorThemeValueOf;
    }

    public static final ColorTheme colorTheme(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        ColorTheme colorTheme = ColorTheme.valueOf(ExtensionUtils.toMapboxImage(bitmap));
        Intrinsics.checkNotNullExpressionValue(colorTheme, "colorTheme");
        return colorTheme;
    }
}
