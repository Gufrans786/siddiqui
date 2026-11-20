package com.oppwa.mobile.connect.utils;

enum a {
    ALIPAY("Alipay", "com.alipay.sdk.app.PayTask"),
    CARD_IO("CardIO", "io.card.payment.CardIOActivity"),
    GOOGLE_PLAY_SERVICES_BASE("Google Play Services", "com.google.android.gms.security.ProviderInstaller"),
    GOOGLE_PLAY_SERVICES_WALLET("Google Play Wallet", "com.google.android.gms.wallet.PaymentsClient"),
    IOVATION("FraudForce", "com.iovation.mobile.android.FraudForceManager"),
    KLARNA("Klarna", "com.klarna.mobile.sdk.api.payments.KlarnaPaymentView"),
    THREEDS_IPWORKS("ThreeDS2 IPWorks", "com.nsoftware.ipworks3ds.sdk.ThreeDS2Service");

    private final String a;
    private final String b;

    a(String str, String str2) {
        this.b = str;
        this.a = str2;
    }

    public String a() {
        return this.b;
    }

    boolean b() {
        try {
            Class.forName(this.a);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
