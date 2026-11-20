package com.oppwa.mobile.connect.checkout.dialog;

import android.app.KeyguardManager;
import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import androidx.appcompat.app.AppCompatActivity;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSecurityPolicyMode;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;

class d0 implements q {
    private final KeyguardManager a;
    private final CheckoutSettings b;
    private a c;

    @FunctionalInterface
    interface a {
        void a(boolean z);
    }

    d0(Context context, CheckoutSettings checkoutSettings) {
        this.a = (KeyguardManager) context.getSystemService("keyguard");
        this.b = checkoutSettings;
    }

    boolean a(String str, boolean z) {
        return a(z ? this.b.getSecurityPolicyModeForTokens() : this.b.getSecurityPolicyModeForBrand(str));
    }

    @Override
    public void b() {
        this.c.a(false);
    }

    @Override
    public void c() {
        this.c.a(true);
    }

    boolean d() {
        return this.a.isKeyguardSecure();
    }

    void a(AppCompatActivity appCompatActivity, a aVar) {
        FingerprintManager fingerprintManager;
        if (d()) {
            this.c = aVar;
            if (appCompatActivity.checkSelfPermission("android.permission.USE_FINGERPRINT") == 0 && (fingerprintManager = (FingerprintManager) appCompatActivity.getSystemService("fingerprint")) != null && fingerprintManager.isHardwareDetected() && fingerprintManager.hasEnrolledFingerprints()) {
                a(appCompatActivity, this);
            } else {
                appCompatActivity.startActivityForResult(this.a.createConfirmDeviceCredentialIntent(null, appCompatActivity.getString(R.string.checkout_auth_confirm_payment)), 700);
            }
        }
    }

    private void a(AppCompatActivity appCompatActivity, q qVar) {
        FingerprintAuthDialogFragment fingerprintAuthDialogFragmentNewInstance = FingerprintAuthDialogFragment.newInstance(null);
        fingerprintAuthDialogFragmentNewInstance.setListener(qVar);
        fingerprintAuthDialogFragmentNewInstance.show(appCompatActivity.getSupportFragmentManager(), (String) null);
    }

    private boolean a(CheckoutSecurityPolicyMode checkoutSecurityPolicyMode) {
        if (checkoutSecurityPolicyMode == CheckoutSecurityPolicyMode.DEVICE_AUTH_REQUIRED) {
            return true;
        }
        if (checkoutSecurityPolicyMode == CheckoutSecurityPolicyMode.DEVICE_AUTH_REQUIRED_IF_AVAILABLE) {
            return d();
        }
        return false;
    }

    @Override
    public void a() {
        this.c.a(false);
    }
}
