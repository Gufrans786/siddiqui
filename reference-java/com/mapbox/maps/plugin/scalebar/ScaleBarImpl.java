package com.mapbox.maps.plugin.scalebar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import ch.qos.logback.core.CoreConstants;
import com.mapbox.maps.plugin.scalebar.generated.ScaleBarSettings;
import com.mapbox.maps.plugin.scalebar.generated.ScaleBarSettingsKt;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0011\u0018\u0000 c2\u00020\u00012\u00020\u0002:\u0002cdB\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u001f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJW\u0010F\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0018\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0.0-2\u0006\u0010;\u001a\u00020\r2\u0006\u0010H\u001a\u00020\u00152\u0006\u0010=\u001a\u00020>2\u0006\u0010I\u001a\u00020\nH\u0001¢\u0006\u0002\bJJJ\u0010K\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150L2\u0006\u0010M\u001a\u00020>2\u0006\u0010N\u001a\u00020\u00152\u0006\u0010O\u001a\u00020P2\u0006\u0010;\u001a\u00020\r2\u0006\u0010H\u001a\u00020\u00152\u0006\u0010I\u001a\u00020\nH\u0002J\u0019\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150.H\u0001¢\u0006\u0002\bRJ(\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020+2\u0006\u0010M\u001a\u00020>2\u0006\u0010V\u001a\u00020\u00152\u0006\u0010W\u001a\u00020\u0015H\u0002J\u001d\u0010X\u001a\u00020>2\u0006\u0010Y\u001a\u00020\u00152\u0006\u0010=\u001a\u00020>H\u0000¢\u0006\u0002\bZJ\u0010\u0010[\u001a\u00020T2\u0006\u0010U\u001a\u00020+H\u0014J\u0018\u0010\\\u001a\u00020T2\u0006\u0010]\u001a\u00020\n2\u0006\u0010^\u001a\u00020\nH\u0014J\u0015\u0010_\u001a\u00020\u001b2\u0006\u0010`\u001a\u00020\nH\u0001¢\u0006\u0002\baJ\f\u0010b\u001a\u00020\u0015*\u00020\u0015H\u0002R\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u001b8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u000e\u0010!\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\"\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010\u001aR\u001a\u0010%\u001a\u00020\u0015X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0018\"\u0004\b'\u0010\u001aR\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R,\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0.0-X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u00104\u001a\u0002032\u0006\u0010\u0014\u001a\u000203@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0014\u00109\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010\u000fR\u0014\u0010;\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010\u000fR\u001a\u0010=\u001a\u00020>X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR$\u0010C\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u001b@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010\u001e\"\u0004\bE\u0010 ¨\u0006e"}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/ScaleBarImpl;", "Lcom/mapbox/maps/plugin/scalebar/ScaleBar;", "Landroid/view/View;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "barPaint", "Landroid/graphics/Paint;", "getBarPaint$plugin_scalebar_release", "()Landroid/graphics/Paint;", "currentSegmentsConfiguration", "Lcom/mapbox/maps/plugin/scalebar/SegmentsConfiguration;", "decimalFormat", "Ljava/text/DecimalFormat;", "value", "", "distancePerPixel", "getDistancePerPixel", "()F", "setDistancePerPixel", "(F)V", "", "enable", "getEnable", "()Z", "setEnable", "(Z)V", "isScaleBarVisible", "mapViewWidth", "getMapViewWidth", "setMapViewWidth", "pixelRatio", "getPixelRatio", "setPixelRatio", "refreshHandler", "Lcom/mapbox/maps/plugin/scalebar/ScaleBarImpl$RefreshHandler;", "reusableCanvas", "Landroid/graphics/Canvas;", "scaleTable", "", "Landroid/util/Pair;", "getScaleTable$plugin_scalebar_release", "()Ljava/util/List;", "setScaleTable$plugin_scalebar_release", "(Ljava/util/List;)V", "Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;", "settings", "getSettings", "()Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;", "setSettings", "(Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings;)V", "strokePaint", "getStrokePaint$plugin_scalebar_release", "textPaint", "getTextPaint$plugin_scalebar_release", "unit", "", "getUnit$plugin_scalebar_release", "()Ljava/lang/String;", "setUnit$plugin_scalebar_release", "(Ljava/lang/String;)V", "useContinuousRendering", "getUseContinuousRendering", "setUseContinuousRendering", "calculateSegmentsConfiguration", "maxDistance", "strokeWidth", "rightMarginPx", "calculateSegmentsConfiguration$plugin_scalebar_release", "calculateTextPositions", "Lkotlin/Triple;", "text", "anchorXPx", "alignment", "Landroid/graphics/Paint$Align;", "calculateWidthAndHeight", "calculateWidthAndHeight$plugin_scalebar_release", "drawText", "", "canvas", "x", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, "getDistanceText", "distance", "getDistanceText$plugin_scalebar_release", "onDraw", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "refreshHandlerHasMessages", "what", "refreshHandlerHasMessages$plugin_scalebar_release", "toOneDecimal", "Companion", "RefreshHandler", "plugin-scalebar_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ScaleBarImpl extends View implements ScaleBar {
    public static final float DEFAULT_MAPVIEW_WIDTH = 0.0f;
    public static final float DEFAULT_PIXEL_RATIO = 1.0f;
    public static final int INTERNAL_PADDING_DP = 10;
    public static final int MSG_RENDER_CONTINUOUS = 1;
    public static final int MSG_RENDER_ON_DEMAND = 0;
    private final Paint barPaint;
    private SegmentsConfiguration currentSegmentsConfiguration;
    private final DecimalFormat decimalFormat;
    private float distancePerPixel;
    private boolean isScaleBarVisible;
    private float mapViewWidth;
    private float pixelRatio;
    private final RefreshHandler refreshHandler;
    private Canvas reusableCanvas;
    private List<? extends Pair<Integer, Integer>> scaleTable;
    private ScaleBarSettings settings;
    private final Paint strokePaint;
    private final Paint textPaint;
    private String unit;
    private boolean useContinuousRendering;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Paint.Align.values().length];
            try {
                iArr[Paint.Align.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Paint.Align.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Paint.Align.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final float toOneDecimal(float f) {
        return ((int) (f * 10)) / 10.0f;
    }

    public final List<Pair<Integer, Integer>> getScaleTable$plugin_scalebar_release() {
        return this.scaleTable;
    }

    public final void setScaleTable$plugin_scalebar_release(List<? extends Pair<Integer, Integer>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.scaleTable = list;
    }

    public final Paint getTextPaint() {
        return this.textPaint;
    }

    public final Paint getBarPaint() {
        return this.barPaint;
    }

    public final Paint getStrokePaint() {
        return this.strokePaint;
    }

    public final String getUnit() {
        return this.unit;
    }

    public final void setUnit$plugin_scalebar_release(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.unit = str;
    }

    @Override
    public float getMapViewWidth() {
        return this.mapViewWidth;
    }

    @Override
    public void setMapViewWidth(float f) {
        this.mapViewWidth = f;
        post(new Runnable() {
            @Override
            public final void run() {
                this.f$0.requestLayout();
            }
        });
    }

    @Override
    public float getPixelRatio() {
        return this.pixelRatio;
    }

    @Override
    public void setPixelRatio(float f) {
        this.pixelRatio = f;
    }

    @Override
    public boolean getUseContinuousRendering() {
        return this.useContinuousRendering;
    }

    @Override
    public void setUseContinuousRendering(boolean z) {
        if (z) {
            if (!this.isScaleBarVisible) {
                setVisibility(0);
            }
            this.refreshHandler.removeMessages(0);
            this.refreshHandler.sendEmptyMessage(1);
        } else {
            if (!this.isScaleBarVisible) {
                setVisibility(8);
            }
            this.refreshHandler.removeMessages(1);
            this.reusableCanvas = null;
        }
        this.useContinuousRendering = z;
    }

    @Override
    public ScaleBarSettings getSettings() {
        return this.settings;
    }

    @Override
    public void setSettings(ScaleBarSettings value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.textPaint.setColor(value.getTextColor());
        this.textPaint.setTextSize(value.getTextSize());
        this.strokePaint.setTextSize(value.getTextSize());
        this.scaleTable = value.getIsMetricUnits() ? ScaleBarConstantKt.getMetricTable() : ScaleBarConstantKt.getImperialTable();
        this.unit = value.getIsMetricUnits() ? ScaleBarConstantKt.METER_UNIT : ScaleBarConstantKt.FEET_UNIT;
        this.strokePaint.setStrokeWidth(value.getShowTextBorder() ? value.getTextBorderWidth() : 0.0f);
        setEnable(value.getEnabled());
        setUseContinuousRendering(value.getUseContinuousRendering());
        if (getUseContinuousRendering()) {
            this.reusableCanvas = null;
        } else if (!this.refreshHandler.hasMessages(0)) {
            this.refreshHandler.sendEmptyMessageDelayed(0, value.getRefreshInterval());
        }
        this.settings = value;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.gravity = value.getPosition();
            layoutParams2.setMargins((int) value.getMarginLeft(), (int) value.getMarginTop(), (int) value.getMarginRight(), (int) value.getMarginBottom());
        }
        setMapViewWidth(getMapViewWidth());
    }

    @Override
    public float getDistancePerPixel() {
        return this.distancePerPixel;
    }

    @Override
    public void setDistancePerPixel(float f) {
        if (!getSettings().getIsMetricUnits()) {
            f *= 3.2808f;
        }
        if (this.distancePerPixel == f) {
            return;
        }
        this.distancePerPixel = f;
        if (getUseContinuousRendering()) {
            this.reusableCanvas = null;
        } else {
            if (Intrinsics.areEqual(calculateSegmentsConfiguration$plugin_scalebar_release(getMapViewWidth() * getDistancePerPixel() * getSettings().getRatio(), this.distancePerPixel, this.scaleTable, this.textPaint, this.strokePaint.getStrokeWidth(), this.unit, getWidth()), this.currentSegmentsConfiguration) || this.refreshHandler.hasMessages(0)) {
                return;
            }
            this.refreshHandler.sendEmptyMessageDelayed(0, getSettings().getRefreshInterval());
        }
    }

    @Override
    public boolean getIsScaleBarVisible() {
        return this.isScaleBarVisible;
    }

    @Override
    public void setEnable(boolean z) {
        this.isScaleBarVisible = z;
        if (getUseContinuousRendering()) {
            return;
        }
        setVisibility(z ? 0 : 8);
    }

    public ScaleBarImpl(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.scaleTable = ScaleBarConstantKt.getMetricTable();
        Paint paint = new Paint();
        this.textPaint = paint;
        Paint paint2 = new Paint();
        this.barPaint = paint2;
        Paint paint3 = new Paint();
        this.strokePaint = paint3;
        this.unit = ScaleBarConstantKt.METER_UNIT;
        this.pixelRatio = 1.0f;
        this.decimalFormat = new DecimalFormat("0.#");
        this.settings = ScaleBarSettingsKt.ScaleBarSettings(ScaleBarImpl$settings$1.INSTANCE);
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
        paint3.setAntiAlias(true);
        paint3.setTextAlign(Paint.Align.CENTER);
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setColor(-1);
        paint2.setAntiAlias(true);
        RefreshHandler refreshHandler = new RefreshHandler(this);
        if (getUseContinuousRendering()) {
            refreshHandler.sendEmptyMessage(1);
        }
        this.refreshHandler = refreshHandler;
    }

    public ScaleBarImpl(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.scaleTable = ScaleBarConstantKt.getMetricTable();
        Paint paint = new Paint();
        this.textPaint = paint;
        Paint paint2 = new Paint();
        this.barPaint = paint2;
        Paint paint3 = new Paint();
        this.strokePaint = paint3;
        this.unit = ScaleBarConstantKt.METER_UNIT;
        this.pixelRatio = 1.0f;
        this.decimalFormat = new DecimalFormat("0.#");
        this.settings = ScaleBarSettingsKt.ScaleBarSettings(ScaleBarImpl$settings$1.INSTANCE);
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
        paint3.setAntiAlias(true);
        paint3.setTextAlign(Paint.Align.CENTER);
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setColor(-1);
        paint2.setAntiAlias(true);
        RefreshHandler refreshHandler = new RefreshHandler(this);
        if (getUseContinuousRendering()) {
            refreshHandler.sendEmptyMessage(1);
        }
        this.refreshHandler = refreshHandler;
    }

    public ScaleBarImpl(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.scaleTable = ScaleBarConstantKt.getMetricTable();
        Paint paint = new Paint();
        this.textPaint = paint;
        Paint paint2 = new Paint();
        this.barPaint = paint2;
        Paint paint3 = new Paint();
        this.strokePaint = paint3;
        this.unit = ScaleBarConstantKt.METER_UNIT;
        this.pixelRatio = 1.0f;
        this.decimalFormat = new DecimalFormat("0.#");
        this.settings = ScaleBarSettingsKt.ScaleBarSettings(ScaleBarImpl$settings$1.INSTANCE);
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
        paint3.setAntiAlias(true);
        paint3.setTextAlign(Paint.Align.CENTER);
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setColor(-1);
        paint2.setAntiAlias(true);
        RefreshHandler refreshHandler = new RefreshHandler(this);
        if (getUseContinuousRendering()) {
            refreshHandler.sendEmptyMessage(1);
        }
        this.refreshHandler = refreshHandler;
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        Pair<Float, Float> pairCalculateWidthAndHeight$plugin_scalebar_release = calculateWidthAndHeight$plugin_scalebar_release();
        setMeasuredDimension((int) ((Number) pairCalculateWidthAndHeight$plugin_scalebar_release.first).floatValue(), (int) ((Number) pairCalculateWidthAndHeight$plugin_scalebar_release.second).floatValue());
    }

    public final Pair<Float, Float> calculateWidthAndHeight$plugin_scalebar_release() {
        float mapViewWidth = (getMapViewWidth() * getSettings().getRatio()) + (10 * getPixelRatio());
        ScaleBarSettings settings = getSettings();
        return new Pair<>(Float.valueOf(mapViewWidth), Float.valueOf(settings.getTextBarMargin() + settings.getTextSize() + settings.getHeight() + (settings.getBorderWidth() * 2)));
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int i = 0;
        if (getUseContinuousRendering()) {
            if (!this.isScaleBarVisible) {
                canvas.drawARGB(0, 0, 0, 0);
                return;
            } else if (this.reusableCanvas != null) {
                return;
            }
        }
        if (getDistancePerPixel() <= 0.0f || getMapViewWidth() <= 0.0f || getWidth() <= 0) {
            return;
        }
        ScaleBarSettings settings = getSettings();
        float mapViewWidth = getMapViewWidth() * getDistancePerPixel() * settings.getRatio();
        if (mapViewWidth <= 0.1f) {
            canvas.drawARGB(0, 0, 0, 0);
            return;
        }
        SegmentsConfiguration segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release = calculateSegmentsConfiguration$plugin_scalebar_release(mapViewWidth, getDistancePerPixel(), this.scaleTable, this.textPaint, this.strokePaint.getStrokeWidth(), this.unit, getWidth());
        this.currentSegmentsConfiguration = segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release;
        this.barPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.barPaint.setColor(settings.getSecondaryColor());
        float unitBarWidth = segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release.getUnitBarWidth() * segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release.getRectCount();
        float f = 2;
        canvas.drawRect(0.0f, (settings.getTextBarMargin() + settings.getTextSize()) - (settings.getBorderWidth() * f), unitBarWidth + (settings.getBorderWidth() * f), settings.getTextBarMargin() + settings.getTextSize() + settings.getHeight() + (settings.getBorderWidth() * f), this.barPaint);
        this.barPaint.setColor(settings.getPrimaryColor());
        canvas.drawRect(settings.getBorderWidth(), (settings.getTextBarMargin() + settings.getTextSize()) - settings.getBorderWidth(), unitBarWidth + settings.getBorderWidth(), settings.getBorderWidth() + settings.getTextBarMargin() + settings.getTextSize() + settings.getHeight(), this.barPaint);
        this.barPaint.setStyle(Paint.Style.FILL);
        int rectCount = segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release.getRectCount();
        if (rectCount >= 0) {
            while (true) {
                this.barPaint.setColor(i % 2 == 0 ? settings.getPrimaryColor() : settings.getSecondaryColor());
                String str = segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release.getLabelTexts().get(i);
                if (i == 0) {
                    this.textPaint.setTextAlign(Paint.Align.LEFT);
                    this.strokePaint.setTextAlign(Paint.Align.LEFT);
                } else {
                    this.textPaint.setTextAlign(Paint.Align.CENTER);
                    this.strokePaint.setTextAlign(Paint.Align.CENTER);
                }
                drawText(canvas, str, segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release.getLabelMarginsAndAnchor().get(i).getThird().floatValue(), settings.getTextSize());
                if (i != segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release.getRectCount()) {
                    canvas.drawRect((settings.getBorderWidth() * f) + (segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release.getUnitBarWidth() * i), settings.getTextBarMargin() + settings.getTextSize(), segmentsConfigurationCalculateSegmentsConfiguration$plugin_scalebar_release.getUnitBarWidth() * (i + 1), settings.getTextBarMargin() + settings.getTextSize() + settings.getHeight(), this.barPaint);
                }
                if (i == rectCount) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (getUseContinuousRendering()) {
            this.reusableCanvas = canvas;
        }
    }

    private final void drawText(Canvas canvas, String text, float x, float y) {
        if (getSettings().getShowTextBorder()) {
            canvas.drawText(text, x, y, this.strokePaint);
        }
        canvas.drawText(text, x, y, this.textPaint);
    }

    private final Triple<Float, Float, Float> calculateTextPositions(String text, float anchorXPx, Paint.Align alignment, Paint textPaint, float strokeWidth, int rightMarginPx) {
        float f;
        float fMeasureText = textPaint.measureText(text);
        float f2 = strokeWidth / 2.0f;
        float f3 = anchorXPx + f2;
        int i = WhenMappings.$EnumSwitchMapping$0[alignment.ordinal()];
        if (i == 1) {
            f = fMeasureText;
        } else if (i == 2) {
            f = fMeasureText / 2;
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            f = 0.0f;
        }
        float f4 = f3 + f;
        float f5 = rightMarginPx;
        if (f4 > f5) {
            anchorXPx -= f4 - f5;
        }
        float f6 = anchorXPx - f2;
        int i2 = WhenMappings.$EnumSwitchMapping$0[alignment.ordinal()];
        if (i2 == 1) {
            fMeasureText = 0.0f;
        } else if (i2 == 2) {
            fMeasureText /= 2;
        } else if (i2 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        float f7 = f6 - fMeasureText;
        if (f7 < 0.0f) {
            float f8 = strokeWidth / 2;
            f7 += f8;
            anchorXPx += f8;
            f4 += f8;
        }
        return new Triple<>(Float.valueOf(toOneDecimal(f7)), Float.valueOf(toOneDecimal(f4)), Float.valueOf(toOneDecimal(anchorXPx)));
    }

    public final String getDistanceText$plugin_scalebar_release(float distance, String unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (distance == 0.0f) {
            return "0";
        }
        if (Intrinsics.areEqual(ScaleBarConstantKt.METER_UNIT, unit)) {
            if (distance < 1000.0f) {
                return this.decimalFormat.format(Float.valueOf(distance)) + unit;
            }
            return this.decimalFormat.format((((double) distance) * 1.0d) / ((double) 1000)) + ScaleBarConstantKt.KILOMETER_UNIT;
        }
        if (distance < 5280.0f) {
            return this.decimalFormat.format(Float.valueOf(distance)) + unit;
        }
        return this.decimalFormat.format((((double) distance) * 1.0d) / ((double) ScaleBarConstantKt.FEET_PER_MILE)) + ScaleBarConstantKt.MILE_UNIT;
    }

    public final boolean refreshHandlerHasMessages$plugin_scalebar_release(int what) {
        return this.refreshHandler.hasMessages(what);
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/mapbox/maps/plugin/scalebar/ScaleBarImpl$RefreshHandler;", "Landroid/os/Handler;", "scaleBarImpl", "Lcom/mapbox/maps/plugin/scalebar/ScaleBarImpl;", "(Lcom/mapbox/maps/plugin/scalebar/ScaleBarImpl;)V", "scaleBarWidgetWeakReference", "Ljava/lang/ref/WeakReference;", "handleMessage", "", NotificationCompat.CATEGORY_MESSAGE, "Landroid/os/Message;", "plugin-scalebar_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class RefreshHandler extends Handler {
        private WeakReference<ScaleBarImpl> scaleBarWidgetWeakReference;

        public RefreshHandler(ScaleBarImpl scaleBarImpl) {
            super(Looper.getMainLooper());
            Intrinsics.checkNotNullParameter(scaleBarImpl, "scaleBarImpl");
            this.scaleBarWidgetWeakReference = new WeakReference<>(scaleBarImpl);
        }

        @Override
        public void handleMessage(Message msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            ScaleBarImpl scaleBarImpl = this.scaleBarWidgetWeakReference.get();
            if (scaleBarImpl != null) {
                int i = msg.what;
                if (i == 0) {
                    scaleBarImpl.invalidate();
                    return;
                }
                if (i != 1) {
                    return;
                }
                Canvas canvas = scaleBarImpl.reusableCanvas;
                if (canvas == null) {
                    scaleBarImpl.invalidate();
                } else {
                    scaleBarImpl.draw(canvas);
                }
                sendEmptyMessageDelayed(1, scaleBarImpl.getSettings().getRefreshInterval());
            }
        }
    }

    public final SegmentsConfiguration calculateSegmentsConfiguration$plugin_scalebar_release(float maxDistance, float distancePerPixel, List<? extends Pair<Integer, Integer>> scaleTable, Paint textPaint, float strokeWidth, String unit, int rightMarginPx) {
        Pair<Integer, Integer> pairPrevious;
        float f;
        this = this;
        Intrinsics.checkNotNullParameter(scaleTable, "scaleTable");
        textPaint = textPaint;
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        Intrinsics.checkNotNullParameter(unit, "unit");
        ListIterator<? extends Pair<Integer, Integer>> listIterator = scaleTable.listIterator(scaleTable.size());
        do {
            if (!listIterator.hasPrevious()) {
                pairPrevious = null;
                break;
            }
            pairPrevious = listIterator.previous();
        } while (((Number) pairPrevious.first).intValue() > maxDistance);
        Pair<Integer, Integer> pair = pairPrevious;
        int i = 0;
        if (pair == null) {
            pair = scaleTable.get(0);
        }
        float fIntValue = ((Number) pair.first).intValue();
        Object obj = pair.second;
        Intrinsics.checkNotNullExpressionValue(obj, "pair.second");
        int iIntValue = ((Number) obj).intValue();
        float oneDecimal = fIntValue / iIntValue;
        while (iIntValue * oneDecimal > maxDistance && iIntValue > 0) {
            iIntValue--;
            fIntValue = iIntValue * oneDecimal;
        }
        if (iIntValue == 0) {
            oneDecimal = toOneDecimal(maxDistance);
            f = oneDecimal;
            iIntValue = 1;
        } else {
            f = fIntValue;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        float f2 = 0.0f;
        int i2 = iIntValue;
        int i3 = 1;
        while (i3 != 0) {
            float f3 = f / i2;
            float oneDecimal2 = this.toOneDecimal(f3 / distancePerPixel);
            arrayList.clear();
            arrayList2.clear();
            if (i2 >= 0) {
                int i4 = i;
                while (true) {
                    float f4 = i4;
                    arrayList.add(i4, this.getDistanceText$plugin_scalebar_release(f3 * f4, unit));
                    int i5 = i4;
                    arrayList2.add(i5, this.calculateTextPositions((String) arrayList.get(i4), f4 * oneDecimal2, i4 == 0 ? Paint.Align.LEFT : Paint.Align.CENTER, textPaint, strokeWidth, rightMarginPx));
                    if (i5 == i2) {
                        break;
                    }
                    i4 = i5 + 1;
                    this = this;
                    textPaint = textPaint;
                }
            }
            int size = arrayList2.size() - 1;
            int i6 = 0;
            while (true) {
                if (i6 < size) {
                    float fFloatValue = ((Number) ((Triple) arrayList2.get(i6)).getSecond()).floatValue();
                    i6++;
                    if (fFloatValue >= ((Number) ((Triple) arrayList2.get(i6)).getFirst()).floatValue()) {
                        if (i2 != 1) {
                            i2--;
                            i = 0;
                            i3 = 1;
                            break;
                        }
                        i3 = 0;
                        arrayList.set(0, "");
                    }
                } else {
                    i3 = 0;
                }
                i = i3;
                break;
            }
            oneDecimal = f3;
            f2 = oneDecimal2;
        }
        return new SegmentsConfiguration(oneDecimal, f2, i2, CollectionsKt.toList(arrayList), CollectionsKt.toList(arrayList2));
    }
}
