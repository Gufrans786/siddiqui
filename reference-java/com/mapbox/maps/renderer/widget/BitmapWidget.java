package com.mapbox.maps.renderer.widget;

import android.graphics.Bitmap;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001B-\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tB#\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\nB\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\b\u0010\u0011\u001a\u00020\u0005H\u0016J\b\u0010\u0012\u001a\u00020\u0007H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0005H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0007H\u0016J\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0090\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, d2 = {"Lcom/mapbox/maps/renderer/widget/BitmapWidget;", "Lcom/mapbox/maps/renderer/widget/Widget;", "bitmap", "Landroid/graphics/Bitmap;", "position", "Lcom/mapbox/maps/renderer/widget/WidgetPosition;", "marginX", "", "marginY", "(Landroid/graphics/Bitmap;Lcom/mapbox/maps/renderer/widget/WidgetPosition;FF)V", "(Landroid/graphics/Bitmap;Lcom/mapbox/maps/renderer/widget/WidgetPosition;F)V", "originalPosition", "(Landroid/graphics/Bitmap;Lcom/mapbox/maps/renderer/widget/WidgetPosition;)V", "renderer", "Lcom/mapbox/maps/renderer/widget/BitmapWidgetRenderer;", "getRenderer$maps_sdk_release", "()Lcom/mapbox/maps/renderer/widget/BitmapWidgetRenderer;", "getPosition", "getRotation", "setPosition", "", "widgetPosition", "setRotation", "angleDegrees", "updateBitmap", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class BitmapWidget extends Widget {
    private final WidgetPosition originalPosition;
    private final BitmapWidgetRenderer renderer;

    public BitmapWidget(Bitmap bitmap) {
        this(bitmap, (WidgetPosition) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
    }

    public BitmapWidget(Bitmap bitmap, WidgetPosition widgetPosition, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bitmap, (i & 2) != 0 ? WidgetPositionKt.WidgetPosition(new Function1<WidgetPosition.Builder, Unit>() {
            @Override
            public Unit invoke(WidgetPosition.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }

            public final void invoke2(WidgetPosition.Builder WidgetPosition) {
                Intrinsics.checkNotNullParameter(WidgetPosition, "$this$WidgetPosition");
                WidgetPosition.m1147setVerticalAlignment(WidgetPosition.Vertical.TOP);
                WidgetPosition.m1144setHorizontalAlignment(WidgetPosition.Horizontal.LEFT);
                WidgetPosition.m1145setOffsetX(0.0f);
                WidgetPosition.m1146setOffsetY(0.0f);
            }
        }) : widgetPosition);
    }

    public BitmapWidget(Bitmap bitmap, WidgetPosition originalPosition) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(originalPosition, "originalPosition");
        this.originalPosition = originalPosition;
        this.renderer = new BitmapWidgetRenderer(bitmap, originalPosition);
    }

    public BitmapWidget(Bitmap bitmap, WidgetPosition widgetPosition, float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 2) != 0) {
            widgetPosition = new WidgetPosition(WidgetPosition.Horizontal.LEFT, WidgetPosition.Vertical.TOP);
        }
        this(bitmap, widgetPosition, (i & 4) != 0 ? 0.0f : f, (i & 8) != 0 ? 0.0f : f2);
    }

    @Deprecated(message = "Constructor with margins is deprecated, the offset parameters has been merged into the WidgetPosition class, and the legacy constructor might be removed in future releases.", replaceWith = @ReplaceWith(expression = "BitmapWidget(context, position)", imports = {}))
    public BitmapWidget(Bitmap bitmap, final WidgetPosition position, final float f, final float f2) {
        this(bitmap, WidgetPositionKt.WidgetPosition(new Function1<WidgetPosition.Builder, Unit>() {

            @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
            public class WhenMappings {
                public static final int[] $EnumSwitchMapping$0;
                public static final int[] $EnumSwitchMapping$1;

                static {
                    int[] iArr = new int[WidgetPosition.Horizontal.values().length];
                    try {
                        iArr[WidgetPosition.Horizontal.LEFT.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[WidgetPosition.Horizontal.CENTER.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[WidgetPosition.Horizontal.RIGHT.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                    int[] iArr2 = new int[WidgetPosition.Vertical.values().length];
                    try {
                        iArr2[WidgetPosition.Vertical.TOP.ordinal()] = 1;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr2[WidgetPosition.Vertical.CENTER.ordinal()] = 2;
                    } catch (NoSuchFieldError unused5) {
                    }
                    try {
                        iArr2[WidgetPosition.Vertical.BOTTOM.ordinal()] = 3;
                    } catch (NoSuchFieldError unused6) {
                    }
                    $EnumSwitchMapping$1 = iArr2;
                }
            }

            {
                super(1);
            }

            @Override
            public Unit invoke(WidgetPosition.Builder builder) {
                invoke2(builder);
                return Unit.INSTANCE;
            }

            public final void invoke2(WidgetPosition.Builder WidgetPosition) {
                float f3;
                float f4;
                Intrinsics.checkNotNullParameter(WidgetPosition, "$this$WidgetPosition");
                WidgetPosition.m1144setHorizontalAlignment(position.getHorizontalAlignment());
                WidgetPosition.m1147setVerticalAlignment(position.getVerticalAlignment());
                int i = WhenMappings.$EnumSwitchMapping$0[position.getHorizontalAlignment().ordinal()];
                if (i == 1 || i == 2) {
                    f3 = f;
                } else {
                    if (i != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    f3 = -f;
                }
                WidgetPosition.m1145setOffsetX(f3);
                int i2 = WhenMappings.$EnumSwitchMapping$1[position.getVerticalAlignment().ordinal()];
                if (i2 == 1 || i2 == 2) {
                    f4 = f2;
                } else {
                    if (i2 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    f4 = -f2;
                }
                WidgetPosition.m1146setOffsetY(f4);
            }
        }));
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(position, "position");
    }

    public BitmapWidget(Bitmap bitmap, WidgetPosition widgetPosition, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 2) != 0) {
            widgetPosition = new WidgetPosition(WidgetPosition.Horizontal.LEFT, WidgetPosition.Vertical.TOP);
        }
        this(bitmap, widgetPosition, (i & 4) != 0 ? 0.0f : f);
    }

    @Deprecated(message = "Constructor with margins is deprecated, the offset parameters has been merged into the WidgetPosition class, and the legacy constructor might be removed in future releases.", replaceWith = @ReplaceWith(expression = "BitmapWidget(context, position)", imports = {}))
    public BitmapWidget(Bitmap bitmap, WidgetPosition position, float f) {
        this(bitmap, position, f, 0.0f);
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(position, "position");
    }

    @Override
    public BitmapWidgetRenderer getRenderer() {
        return this.renderer;
    }

    public final void updateBitmap(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        getRenderer().updateBitmap(bitmap);
        triggerRepaint$maps_sdk_release();
    }

    @Override
    public void setPosition(WidgetPosition widgetPosition) {
        Intrinsics.checkNotNullParameter(widgetPosition, "widgetPosition");
        getRenderer().setPosition(widgetPosition);
        triggerRepaint$maps_sdk_release();
    }

    @Override
    public WidgetPosition getPosition() {
        return getRenderer().getPosition();
    }

    @Override
    public void setRotation(float angleDegrees) {
        getRenderer().setRotation(angleDegrees);
        triggerRepaint$maps_sdk_release();
    }

    @Override
    public float getRotation() {
        return getRenderer().getRotationDegrees();
    }
}
