package com.payfort.fortpaymentsdk.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.joran.action.Action;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.gson.Gson;
import com.nimbusds.jose.jwk.JWKParameterNames;
import com.payfort.fortpaymentsdk.BuildConfig;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ2\u0010\u0012\u001a\u00020\u00042\u0018\u0010\u0013\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u0015\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0000¢\u0006\u0002\b\u001eJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\u0010J,\u0010 \u001a\u0004\u0018\u00010\u00042\u0018\u0010!\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00142\b\u0010\"\u001a\u0004\u0018\u00010\u0004J\u000e\u0010#\u001a\u00020$2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010%\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u0010J\u001d\u0010&\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\u0004H\u0000¢\u0006\u0002\b(J\u0011\u0010)\u001a\u00020\u0004*\u00020\u0004H\u0000¢\u0006\u0002\b*R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/payfort/fortpaymentsdk/utils/Utils;", "", "()V", Utils.PREF_UNIQUE_ID, "", "uniqueID", "backToMerchant", "", "activity", "Landroid/app/Activity;", "sdkResponse", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "convertDpToPixel", "", JWKParameterNames.RSA_FIRST_FACTOR_CRT_EXPONENT, CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "displayCancelPaymentDialog", "formatAmount", "merchantRequestMap", "", "decimalPoints", "", "includeCurrencyCode", "", "getCurrencySymbolResId", "currencyCode", "(Ljava/lang/String;)Ljava/lang/Integer;", "getDeviceId", "getLatestEnvironment", "getLatestEnvironment$fortpayment_release", "getOsDetails", "getParamValue", "requestMap", Action.KEY_ATTRIBUTE, "getScreenSize", "Landroid/graphics/Point;", "haveNetworkConnection", "saveLatestEnvironment", Constants.EXTRAS.SDK_ENVIRONMENT, "saveLatestEnvironment$fortpayment_release", "normalize", "normalize$fortpayment_release", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Utils {
    public static final Utils INSTANCE = new Utils();
    private static final String PREF_UNIQUE_ID = "PREF_UNIQUE_ID";
    private static String uniqueID;

    private Utils() {
    }

    public final String getOsDetails(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Point screenSize = getScreenSize(context);
        HashMap map = new HashMap();
        map.put("OS", "ANDROID");
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        map.put("MANUFACTURER", MANUFACTURER);
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        map.put("MODEL", MODEL);
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        map.put("BASE_OS", RELEASE);
        map.put("SDK_INT", Integer.valueOf(Build.VERSION.SDK_INT));
        map.put("VERSION_CODES.BASE", 1);
        map.put("FORT_SDK_VERSION_NUMBER", BuildConfig.VERSION_NAME);
        map.put("SCREEN_WIDTH", Integer.valueOf(screenSize.x));
        map.put("SCREEN_HEIGHT", Integer.valueOf(screenSize.y));
        return new Gson().toJson(map);
    }

    public final boolean haveNetworkConnection(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        Network[] allNetworks = connectivityManager.getAllNetworks();
        Intrinsics.checkNotNullExpressionValue(allNetworks, "connectivityManager.allNetworks");
        for (Network network : allNetworks) {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
            Intrinsics.checkNotNull(networkInfo);
            if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                return true;
            }
        }
        return false;
    }

    public final Point getScreenSize(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        Intrinsics.checkNotNullExpressionValue(defaultDisplay, "wm.defaultDisplay");
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public final synchronized String getDeviceId(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (uniqueID == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(PREF_UNIQUE_ID, 0);
            String string = sharedPreferences.getString(PREF_UNIQUE_ID, null);
            uniqueID = string;
            if (string == null) {
                uniqueID = UUID.randomUUID().toString();
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString(PREF_UNIQUE_ID, uniqueID);
                editorEdit.commit();
            }
        }
        return uniqueID;
    }

    public final void saveLatestEnvironment$fortpayment_release(Context context, String environment) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(environment, "environment");
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREF_UNIQUE_ID, 0).edit();
        editorEdit.putString(Constants.FORT_PARAMS.ENVIRONMENT, environment);
        editorEdit.commit();
    }

    public final String getLatestEnvironment$fortpayment_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return String.valueOf(context.getSharedPreferences(PREF_UNIQUE_ID, 0).getString(Constants.FORT_PARAMS.ENVIRONMENT, ""));
    }

    public static String formatAmount$default(Utils utils, Map map, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        return utils.formatAmount(map, i, z);
    }

    public final String formatAmount(Map<String, ? extends Object> merchantRequestMap, int decimalPoints, boolean includeCurrencyCode) {
        String upperCase;
        String paramValue = getParamValue(merchantRequestMap, Constants.FORT_PARAMS.AMOUNT);
        String paramValue2 = getParamValue(merchantRequestMap, "currency");
        BigDecimal bigDecimal = new BigDecimal(new BigInteger(paramValue), decimalPoints);
        if (includeCurrencyCode) {
            String string = bigDecimal.toString();
            if (paramValue2 != null) {
                upperCase = paramValue2.toUpperCase();
                Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase()");
            } else {
                upperCase = null;
            }
            return string + " " + upperCase;
        }
        String string2 = bigDecimal.toString();
        Intrinsics.checkNotNullExpressionValue(string2, "{\n            amountAsBi…imal.toString()\n        }");
        return string2;
    }

    public final Integer getCurrencySymbolResId(String currencyCode) {
        String upperCase;
        if (currencyCode != null) {
            upperCase = currencyCode.toUpperCase();
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase()");
        } else {
            upperCase = null;
        }
        if (Intrinsics.areEqual(upperCase, "AED")) {
            return Integer.valueOf(R.drawable.ic_currency_aed);
        }
        if (Intrinsics.areEqual(upperCase, "SAR")) {
            return Integer.valueOf(R.drawable.ic_currency_sar);
        }
        return null;
    }

    public final String getParamValue(Map<String, ? extends Object> requestMap, String key) {
        if (requestMap == null || !requestMap.containsKey(key) || requestMap.get(key) == null) {
            return null;
        }
        return String.valueOf(requestMap.get(key));
    }

    public final void backToMerchant(Activity activity, SdkResponse sdkResponse) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intent intent = new Intent(Constants.LOCAL_BROADCAST_EVENTS.RESPONSE_EVENT);
        intent.putExtra(Constants.EXTRAS.SDK_RESPONSE, sdkResponse);
        LocalBroadcastManager.getInstance(activity).sendBroadcast(intent);
        activity.finish();
    }

    @JvmStatic
    public static final float convertDpToPixel(float dp, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return dp * (context.getResources().getDisplayMetrics().densityDpi / SyslogConstants.LOG_LOCAL4);
    }

    public final void displayCancelPaymentDialog(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.create().requestWindowFeature(1);
        builder.setTitle((CharSequence) null);
        builder.setMessage(activity.getResources().getString(R.string.pf_cancel_payment_msg));
        builder.setPositiveButton(activity.getResources().getString(R.string.pf_cancel_payment_btn_yes), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                Utils.displayCancelPaymentDialog$lambda$2(activity, dialogInterface, i);
            }
        });
        builder.setNegativeButton(activity.getResources().getString(R.string.pf_cancel_payment_btn_no), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.show();
    }

    public static final void displayCancelPaymentDialog$lambda$2(Activity activity, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        LocalBroadcastManager.getInstance(activity).sendBroadcast(new Intent(Constants.LOCAL_BROADCAST_EVENTS.RESPONSE_EVENT));
        dialogInterface.dismiss();
        activity.finish();
    }

    public final String normalize$fortpayment_release(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String str2 = str;
        int length = str2.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) str2.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        return new Regex("\\s+|-").replace(str2.subSequence(i, length + 1).toString(), "");
    }
}
