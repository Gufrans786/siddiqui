package nts;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Handler;
import com.nsoftware.ipworks3ds.sdk.AuthenticationRequestParameters;
import com.nsoftware.ipworks3ds.sdk.ChallengeParameters;
import com.nsoftware.ipworks3ds.sdk.ChallengeStatusReceiver;
import com.nsoftware.ipworks3ds.sdk.Transaction;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;
import java.util.Objects;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0555 implements Transaction {

    public C0295 f3155;

    public ProgressDialogC0491 f3156;

    public final String f3157;

    public final String f3158;

    public class RunnableC0556 implements Runnable {
        public RunnableC0556() {
        }

        @Override
        public void run() {
            ProgressDialogC0491 progressDialogC0491 = C0555.this.f3156;
            if (progressDialogC0491 != null) {
                progressDialogC0491.dismiss();
            }
        }
    }

    public class RunnableC0557 implements Runnable {

        public final Activity f3161;

        public RunnableC0557(Activity activity) {
            this.f3161 = activity;
        }

        @Override
        public void run() {
            C0555 c0555 = C0555.this;
            Activity activity = this.f3161;
            if (c0555.f3156 == null) {
                C0273.f1383.m3989(C0558.m5445(262, 26, 85));
                C0400 c0400 = C0273.f1383.f1389;
                boolean z = c0400.f2089;
                boolean z2 = c0400.f2085;
                String str = c0555.f3158;
                ProgressDialogC0491 progressDialogC0491 = new ProgressDialogC0491(activity);
                progressDialogC0491.m5180(2);
                progressDialogC0491.f2795 = z2;
                progressDialogC0491.f2792 = z;
                progressDialogC0491.f2798 = str;
                progressDialogC0491.f2791 = true;
                c0555.f3156 = progressDialogC0491;
            }
            c0555.f3156.show();
        }
    }

    public C0555(String str, String str2) {
        this.f3158 = str;
        this.f3157 = str2;
    }

    public static EnumC0457 m5442() {
        C0600 c0600 = C0273.f1383.m3986().f3298;
        String strM4571 = c0600 == null ? "" : c0600.f3316.f2513.m4571();
        if ("01".equals(strM4571)) {
            return EnumC0457.TEXT;
        }
        if ("02".equals(strM4571)) {
            return EnumC0457.SINGLE_SELECT;
        }
        if ("03".equals(strM4571)) {
            return EnumC0457.MULTI_SELECT;
        }
        if ("04".equals(strM4571)) {
            return EnumC0457.OOB;
        }
        if ("05".equals(strM4571)) {
            return EnumC0457.HTML;
        }
        C0273.f1383.m3992(C0558.m5445(306, 16, 25) + strM4571);
        return EnumC0457.INVALID;
    }

    @Override
    public void close() {
        C0273 c0273 = C0273.f1383;
        String strM5445 = C0558.m5445(288, 18, 83);
        C0594 c0594 = c0273.f1394;
        if (c0594 != null) {
            c0594.m5589(2, strM5445, C0273.f1386);
        }
        this.f3155 = null;
        ProgressDialogC0491 progressDialogC0491 = this.f3156;
        if (progressDialogC0491 != null) {
            progressDialogC0491.dismiss();
        }
        this.f3156 = null;
        C0273.f1383.m3986().m5588();
    }

    @Override
    public void doChallenge(Activity activity, ChallengeParameters challengeParameters, ChallengeStatusReceiver challengeStatusReceiver, int i) throws InvalidInputException, SDKRuntimeException {
        if (i < 5) {
            throw new InvalidInputException(C0558.m5445(90, 48, 59));
        }
        C0273.f1383.f1388 = new C0108(challengeStatusReceiver);
        try {
            activity.runOnUiThread(new RunnableC0557(activity));
            try {
                C0594 c0594M3986 = C0273.f1383.m3986();
                String threeDSServerAuthResponse = challengeParameters.getThreeDSServerAuthResponse();
                c0594M3986.m5586(C0558.m5445(CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 15, 101) + Objects.toString(challengeParameters.getThreeDSRequestorAppURL(), ""));
                if (threeDSServerAuthResponse == null || threeDSServerAuthResponse.length() == 0) {
                    c0594M3986.m5586(C0558.m5445(153, 17, 21) + Objects.toString(challengeParameters.getAcsTransactionID(), ""));
                    c0594M3986.m5586(C0558.m5445(170, 20, 101) + Objects.toString(challengeParameters.get3DSServerTransactionID(), ""));
                    c0594M3986.m5586(C0558.m5445(190, 17, 125) + Objects.toString(challengeParameters.getAcsSignedContent(), ""));
                    C0600 c0600 = c0594M3986.f3298;
                    if (c0600 != null) {
                        c0600.m5610((String) null);
                    }
                } else {
                    C0600 c0601 = c0594M3986.f3298;
                    if (c0601 != null) {
                        c0601.m5610(threeDSServerAuthResponse);
                    }
                }
                c0594M3986.m5586(C0558.m5445(207, 14, 75) + i);
                if (!ActivityC0477.m5149((Handler) null)) {
                    activity.runOnUiThread(new RunnableC0556());
                } else {
                    activity.runOnUiThread(new RunnableC0556());
                    activity.startActivity(C0558.m5474(activity));
                }
            } catch (C0369 e) {
                C0273.f1383.m3987(C0558.m5445(221, 41, 48) + e.toString());
                C0273.f1383.m3993(e);
                activity.runOnUiThread(new RunnableC0556());
            }
        } catch (Throwable th) {
            activity.runOnUiThread(new RunnableC0556());
            throw th;
        }
    }

    @Override
    public AuthenticationRequestParameters getAuthenticationRequestParameters() throws SDKRuntimeException {
        if (this.f3155 == null) {
            C0594 c0594M3986 = C0273.f1383.m3986();
            c0594M3986.m5582();
            try {
                c0594M3986.m5586(C0558.m5445(0, 16, 104) + this.f3157);
                c0594M3986.m5583(this.f3158);
                C0600 c0600 = c0594M3986.f3298;
                String strM5603 = c0600 == null ? "" : c0600.m5603();
                String strM5586 = c0594M3986.m5586(C0558.m5445(16, 10, 21));
                String strM5587 = c0594M3986.m5586(C0558.m5445(26, 21, 43));
                String strM5588 = c0594M3986.m5586(C0558.m5445(47, 18, 0));
                String strM5585 = c0594M3986.m5585();
                C0600 c0601 = c0594M3986.f3298;
                this.f3155 = new C0295(strM5585, strM5586, strM5587, c0601 != null ? c0601.f3316.m4848() : "", strM5588, this.f3157, strM5603);
            } catch (C0369 e) {
                C0273.f1383.m3987(C0558.m5445(65, 25, 41) + e.toString());
                throw new C0632(e);
            }
        }
        return this.f3155;
    }

    @Override
    public ProgressDialog getProgressView(Activity activity) throws InvalidInputException {
        if (this.f3156 == null) {
            C0273 c0273 = C0273.f1383;
            String strM5445 = C0558.m5445(262, 26, 85);
            C0594 c0594 = c0273.f1394;
            if (c0594 != null) {
                c0594.m5589(2, strM5445, C0273.f1386);
            }
            C0400 c0400 = C0273.f1383.f1389;
            boolean z = c0400.f2089;
            boolean z2 = c0400.f2085;
            String str = this.f3158;
            ProgressDialogC0491 progressDialogC0491 = new ProgressDialogC0491(activity);
            progressDialogC0491.m5180(2);
            progressDialogC0491.f2795 = z2;
            progressDialogC0491.f2792 = z;
            progressDialogC0491.f2798 = str;
            progressDialogC0491.f2791 = true;
            this.f3156 = progressDialogC0491;
        }
        return this.f3156;
    }
}
