package com.mapbox.maps.plugin.attribution;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.gms.common.internal.ImagesContract;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.geofencing.GeofencingError;
import com.mapbox.common.geofencing.GeofencingUtilsUserConsentResponseCallback;
import com.mapbox.maps.MapboxLogger;
import com.mapbox.maps.geofencing.MapGeofencingConsent;
import com.mapbox.maps.module.MapTelemetry;
import com.mapbox.maps.plugin.delegates.MapAttributionDelegate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 22\u00020\u00012\u00020\u0002:\u00012B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010 \u001a\u00020!2\u0006\u0010\t\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020!H\u0016J\b\u0010&\u001a\u00020'H\u0003J\u0010\u0010(\u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010)\u001a\u00020!2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\b\u0010+\u001a\u00020!H\u0002J\u0010\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020.H\u0002J\b\u0010/\u001a\u00020!H\u0002J\u0010\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020.H\u0002R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\t\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0013\u0010\fR&\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0015\u0010\f\u001a\u0004\b\u0016\u0010\u000e\"\u0004\b\u0017\u0010\u0010R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u001c\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001d\u0010\f\u001a\u0004\b\u001e\u0010\u000e\"\u0004\b\u001f\u0010\u0010¨\u00063"}, d2 = {"Lcom/mapbox/maps/plugin/attribution/AttributionDialogManagerImpl;", "Lcom/mapbox/maps/plugin/attribution/AttributionDialogManager;", "Landroid/content/DialogInterface$OnClickListener;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "(Landroid/content/Context;)V", "attributionList", "", "Lcom/mapbox/maps/plugin/attribution/Attribution;", "dialog", "Landroidx/appcompat/app/AlertDialog;", "getDialog$plugin_attribution_release$annotations", "()V", "getDialog$plugin_attribution_release", "()Landroidx/appcompat/app/AlertDialog;", "setDialog$plugin_attribution_release", "(Landroidx/appcompat/app/AlertDialog;)V", "geofencingConsent", "Lcom/mapbox/maps/geofencing/MapGeofencingConsent;", "getGeofencingConsent$annotations", "geofencingDialog", "getGeofencingDialog$plugin_attribution_release$annotations", "getGeofencingDialog$plugin_attribution_release", "setGeofencingDialog$plugin_attribution_release", "mapAttributionDelegate", "Lcom/mapbox/maps/plugin/delegates/MapAttributionDelegate;", "telemetry", "Lcom/mapbox/maps/module/MapTelemetry;", "telemetryDialog", "getTelemetryDialog$plugin_attribution_release$annotations", "getTelemetryDialog$plugin_attribution_release", "setTelemetryDialog$plugin_attribution_release", ViewProps.ON_CLICK, "", "Landroid/content/DialogInterface;", "which", "", "onStop", "prepareDialogBuilder", "Landroidx/appcompat/app/AlertDialog$Builder;", "showAttribution", "showAttributionDialog", "attributions", "showGeofencingConsentDialog", "showMapAttributionWebPage", "attributionUrl", "", "showTelemetryDialog", "showWebPage", ImagesContract.URL, "Companion", "plugin-attribution_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AttributionDialogManagerImpl implements AttributionDialogManager, DialogInterface.OnClickListener {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final String FEEDBACK_KEY_WORD = "feedback";
    private List<Attribution> attributionList;
    private final Context context;
    private AlertDialog dialog;
    private MapGeofencingConsent geofencingConsent;
    private AlertDialog geofencingDialog;
    private MapAttributionDelegate mapAttributionDelegate;
    private MapTelemetry telemetry;
    private AlertDialog telemetryDialog;

    public static void getDialog$plugin_attribution_release$annotations() {
    }

    private static void getGeofencingConsent$annotations() {
    }

    public static void getGeofencingDialog$plugin_attribution_release$annotations() {
    }

    public static void getTelemetryDialog$plugin_attribution_release$annotations() {
    }

    public AttributionDialogManagerImpl(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final AlertDialog getDialog() {
        return this.dialog;
    }

    public final void setDialog$plugin_attribution_release(AlertDialog alertDialog) {
        this.dialog = alertDialog;
    }

    public final AlertDialog getTelemetryDialog() {
        return this.telemetryDialog;
    }

    public final void setTelemetryDialog$plugin_attribution_release(AlertDialog alertDialog) {
        this.telemetryDialog = alertDialog;
    }

    public final AlertDialog getGeofencingDialog() {
        return this.geofencingDialog;
    }

    public final void setGeofencingDialog$plugin_attribution_release(AlertDialog alertDialog) {
        this.geofencingDialog = alertDialog;
    }

    @Override
    public void showAttribution(MapAttributionDelegate mapAttributionDelegate) {
        Intrinsics.checkNotNullParameter(mapAttributionDelegate, "mapAttributionDelegate");
        this.mapAttributionDelegate = mapAttributionDelegate;
        this.telemetry = mapAttributionDelegate.telemetry();
        MapGeofencingConsent mapGeofencingConsentGeofencingConsent = mapAttributionDelegate.geofencingConsent();
        this.geofencingConsent = mapGeofencingConsentGeofencingConsent;
        this.attributionList = mapAttributionDelegate.parseAttributions(this.context, new AttributionParserConfig(false, false, false, false, false, mapGeofencingConsentGeofencingConsent != null ? mapGeofencingConsentGeofencingConsent.shouldShowConsent() : false, 31, null));
        Context context = this.context;
        if (context instanceof Activity ? ((Activity) context).isFinishing() : false) {
            return;
        }
        List<Attribution> list = this.attributionList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attributionList");
            list = null;
        }
        showAttributionDialog(list);
    }

    private final void showAttributionDialog(final List<Attribution> attributions) {
        AlertDialog.Builder builderPrepareDialogBuilder = prepareDialogBuilder();
        builderPrepareDialogBuilder.setTitle(R.string.mapbox_attributionsDialogTitle);
        final Context context = this.context;
        final int i = R.layout.mapbox_attribution_list_item;
        builderPrepareDialogBuilder.setAdapter(new ArrayAdapter<Attribution>(attributions, context, i) {
            final List<Attribution> $attributions;

            {
                super(context, i, attributions);
                this.$attributions = attributions;
            }

            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                Intrinsics.checkNotNullParameter(parent, "parent");
                View view = super.getView(position, convertView, parent);
                Intrinsics.checkNotNullExpressionValue(view, "super.getView(position, convertView, parent)");
                Attribution attribution = this.$attributions.get(position);
                TextView textView = (TextView) view.findViewById(android.R.id.text1);
                textView.setTextColor(attribution.getUrl().length() == 0 ? -7829368 : ContextCompat.getColor(textView.getContext(), R.color.mapbox_blue));
                textView.setText(attribution.getTitle());
                return view;
            }
        }, this);
        this.dialog = builderPrepareDialogBuilder.show();
    }

    @Override
    public void onClick(DialogInterface dialog, int which) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        List<Attribution> list = this.attributionList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("attributionList");
            list = null;
        }
        Attribution attribution = list.get(which);
        String url = attribution.getUrl();
        if (Intrinsics.areEqual(url, Attribution.ABOUT_TELEMETRY_URL)) {
            showTelemetryDialog();
        } else if (Intrinsics.areEqual(url, Attribution.GEOFENCING_URL_MARKER)) {
            showGeofencingConsentDialog();
        } else {
            showMapAttributionWebPage(attribution.getUrl());
        }
    }

    @Override
    public void onStop() {
        AlertDialog alertDialog = this.dialog;
        if (alertDialog != null) {
            if (!alertDialog.isShowing()) {
                alertDialog = null;
            }
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
        }
        AlertDialog alertDialog2 = this.telemetryDialog;
        if (alertDialog2 != null) {
            if (!alertDialog2.isShowing()) {
                alertDialog2 = null;
            }
            if (alertDialog2 != null) {
                alertDialog2.dismiss();
            }
        }
        AlertDialog alertDialog3 = this.geofencingDialog;
        if (alertDialog3 != null) {
            AlertDialog alertDialog4 = alertDialog3.isShowing() ? alertDialog3 : null;
            if (alertDialog4 != null) {
                alertDialog4.dismiss();
            }
        }
    }

    private final void showTelemetryDialog() {
        AlertDialog.Builder builderPrepareDialogBuilder = prepareDialogBuilder();
        builderPrepareDialogBuilder.setTitle(R.string.mapbox_attributionTelemetryTitle);
        builderPrepareDialogBuilder.setMessage(R.string.mapbox_attributionTelemetryMessage);
        builderPrepareDialogBuilder.setPositiveButton(R.string.mapbox_attributionTelemetryPositive, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                AttributionDialogManagerImpl.showTelemetryDialog$lambda$3(this.f$0, dialogInterface, i);
            }
        });
        builderPrepareDialogBuilder.setNeutralButton(R.string.mapbox_attributionTelemetryNeutral, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                AttributionDialogManagerImpl.showTelemetryDialog$lambda$4(this.f$0, dialogInterface, i);
            }
        });
        builderPrepareDialogBuilder.setNegativeButton(R.string.mapbox_attributionTelemetryNegative, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                AttributionDialogManagerImpl.showTelemetryDialog$lambda$5(this.f$0, dialogInterface, i);
            }
        });
        this.telemetryDialog = builderPrepareDialogBuilder.show();
    }

    public static final void showTelemetryDialog$lambda$3(AttributionDialogManagerImpl this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MapTelemetry mapTelemetry = this$0.telemetry;
        if (mapTelemetry != null) {
            mapTelemetry.setUserTelemetryRequestState(true);
        }
        dialogInterface.cancel();
    }

    public static final void showTelemetryDialog$lambda$4(AttributionDialogManagerImpl this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String string = this$0.context.getResources().getString(R.string.mapbox_telemetryLink);
        Intrinsics.checkNotNullExpressionValue(string, "context.resources.getStr…ing.mapbox_telemetryLink)");
        this$0.showWebPage(string);
        dialogInterface.cancel();
    }

    public static final void showTelemetryDialog$lambda$5(AttributionDialogManagerImpl this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MapTelemetry mapTelemetry = this$0.telemetry;
        if (mapTelemetry != null) {
            mapTelemetry.setUserTelemetryRequestState(false);
        }
        dialogInterface.cancel();
    }

    private final void showGeofencingConsentDialog() {
        AlertDialog.Builder builderPrepareDialogBuilder = prepareDialogBuilder();
        builderPrepareDialogBuilder.setTitle(R.string.mapbox_attributionGeofencingTitle);
        builderPrepareDialogBuilder.setMessage(R.string.mapbox_attributionGeofencingMessage);
        MapGeofencingConsent mapGeofencingConsent = this.geofencingConsent;
        boolean userConsent = mapGeofencingConsent != null ? mapGeofencingConsent.getUserConsent() : false;
        int i = userConsent ? R.string.mapbox_attributionGeofencingConsentedPositive : R.string.mapbox_attributionGeofencingRevokedPositive;
        int i2 = userConsent ? R.string.mapbox_attributionGeofencingConsentedNegative : R.string.mapbox_attributionGeofencingRevokedNegative;
        final GeofencingUtilsUserConsentResponseCallback geofencingUtilsUserConsentResponseCallback = new GeofencingUtilsUserConsentResponseCallback() {
            @Override
            public final void run(Expected expected) {
                AttributionDialogManagerImpl.showGeofencingConsentDialog$lambda$7(expected);
            }
        };
        builderPrepareDialogBuilder.setPositiveButton(i, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i3) {
                AttributionDialogManagerImpl.showGeofencingConsentDialog$lambda$8(this.f$0, geofencingUtilsUserConsentResponseCallback, dialogInterface, i3);
            }
        });
        builderPrepareDialogBuilder.setNegativeButton(i2, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i3) {
                AttributionDialogManagerImpl.showGeofencingConsentDialog$lambda$9(this.f$0, geofencingUtilsUserConsentResponseCallback, dialogInterface, i3);
            }
        });
        this.geofencingDialog = builderPrepareDialogBuilder.show();
    }

    public static final void showGeofencingConsentDialog$lambda$7(Expected result) {
        Intrinsics.checkNotNullParameter(result, "result");
        GeofencingError geofencingError = (GeofencingError) result.getError();
        if (geofencingError != null) {
            MapboxLogger.logW("GeofencingConsent", "Unable to set user consent: " + geofencingError.getType());
        }
    }

    public static final void showGeofencingConsentDialog$lambda$8(AttributionDialogManagerImpl this$0, GeofencingUtilsUserConsentResponseCallback callback, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        MapGeofencingConsent mapGeofencingConsent = this$0.geofencingConsent;
        if (mapGeofencingConsent != null) {
            mapGeofencingConsent.setUserConsent(true, callback);
        }
        dialogInterface.cancel();
    }

    public static final void showGeofencingConsentDialog$lambda$9(AttributionDialogManagerImpl this$0, GeofencingUtilsUserConsentResponseCallback callback, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        MapGeofencingConsent mapGeofencingConsent = this$0.geofencingConsent;
        if (mapGeofencingConsent != null) {
            mapGeofencingConsent.setUserConsent(false, callback);
        }
        dialogInterface.cancel();
    }

    private final void showMapAttributionWebPage(String attributionUrl) {
        MapAttributionDelegate mapAttributionDelegate = this.mapAttributionDelegate;
        if (mapAttributionDelegate != null && StringsKt.contains$default((CharSequence) attributionUrl, (CharSequence) FEEDBACK_KEY_WORD, false, 2, (Object) null)) {
            attributionUrl = mapAttributionDelegate.buildMapBoxFeedbackUrl(this.context);
        }
        if (attributionUrl.length() > 0) {
            showWebPage(attributionUrl);
        }
    }

    private final void showWebPage(String url) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(url));
            this.context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(this.context, R.string.mapbox_attributionErrorNoBrowser, 1).show();
        } catch (Throwable th) {
            Toast.makeText(this.context, th.getLocalizedMessage(), 1).show();
        }
    }

    private final AlertDialog.Builder prepareDialogBuilder() {
        boolean zHasValue;
        AlertDialog.Builder builder;
        TypedArray typedArrayObtainStyledAttributes = this.context.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…styleable.AppCompatTheme)");
        try {
            zHasValue = typedArrayObtainStyledAttributes.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar);
        } catch (Throwable unused) {
            zHasValue = false;
        }
        if (zHasValue) {
            builder = new AlertDialog.Builder(this.context);
        } else {
            builder = new AlertDialog.Builder(new ContextThemeWrapper(this.context, androidx.appcompat.R.style.Theme_AppCompat_DayNight_Dialog_Alert));
        }
        typedArrayObtainStyledAttributes.recycle();
        return builder;
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/mapbox/maps/plugin/attribution/AttributionDialogManagerImpl$Companion;", "", "()V", "FEEDBACK_KEY_WORD", "", "plugin-attribution_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
