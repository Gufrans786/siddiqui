package com.oppwa.mobile.connect.utils;

import android.app.Activity;
import com.alipay.sdk.app.PayTask;
import com.oppwa.mobile.connect.provider.Connect;
import com.transistorsoft.locationmanager.logger.TSLog;
import io.card.payment.CardIOActivity;

public class LibraryHelper {
    public static boolean isPlayServicesWalletAvailable = com.oppwa.mobile.connect.utils.a.GOOGLE_PLAY_SERVICES_WALLET.b();
    public static boolean isPlayServicesBaseAvailable = com.oppwa.mobile.connect.utils.a.GOOGLE_PLAY_SERVICES_BASE.b();
    public static boolean isAlipayAvailable = com.oppwa.mobile.connect.utils.a.ALIPAY.b();
    public static boolean isCardIOAvailable = com.oppwa.mobile.connect.utils.a.CARD_IO.b();
    public static boolean isIovationAvailable = com.oppwa.mobile.connect.utils.a.IOVATION.b();
    public static boolean isThreeDS2Available = com.oppwa.mobile.connect.utils.a.THREEDS_IPWORKS.b();
    public static boolean isKlarnaAvailable = com.oppwa.mobile.connect.utils.a.KLARNA.b();

    static class a {
        static final int[] a;

        static {
            int[] iArr = new int[com.oppwa.mobile.connect.utils.a.values().length];
            a = iArr;
            try {
                iArr[com.oppwa.mobile.connect.utils.a.ALIPAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[com.oppwa.mobile.connect.utils.a.CARD_IO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static String a(com.oppwa.mobile.connect.utils.a aVar, String str) {
        if (aVar.b()) {
            return TSLog.TAB + aVar.a() + (str != null ? " version: " + str : "") + "\n";
        }
        return "";
    }

    public static String getLogLibrariesInfo(Activity activity) {
        StringBuilder sb = new StringBuilder("SDK version: ");
        sb.append(Connect.getVersion());
        sb.append("\n\nLibraries configuration:\n");
        for (com.oppwa.mobile.connect.utils.a aVar : com.oppwa.mobile.connect.utils.a.values()) {
            sb.append(a(aVar, a(aVar, activity)));
        }
        return sb.toString();
    }

    private static String a(com.oppwa.mobile.connect.utils.a aVar, Activity activity) {
        if (!aVar.b()) {
            return null;
        }
        int i = a.a[aVar.ordinal()];
        if (i == 1) {
            return new PayTask(activity).getVersion();
        }
        if (i != 2) {
            return null;
        }
        return CardIOActivity.sdkVersion();
    }
}
