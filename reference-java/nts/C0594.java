package nts;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import com.facebook.imageutils.JfifUtil;
import com.nsoftware.ipworks3ds.sdk.ClientEventListener;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;
import com.oppwa.mobile.connect.checkout.dialog.CheckoutActivity;
import java.util.Iterator;
import java.util.List;
import java.util.TooManyListenersException;
import java.util.UUID;

public class C0594 implements InterfaceC0543 {

    public String f3292;

    public int f3293;

    public C0400 f3294;

    public Context f3295;

    public C0508 f3296;

    public List<C0428> f3297;

    public C0600 f3298;

    public final ClientEventListener f3299;

    public static final String f3286 = C0558.m5461(0, 29, 69);

    public static final String f3287 = C0558.m5461(29, 23, SyslogConstants.LOG_CLOCK);

    public static final String f3289 = C0558.m5461(52, 19, 44);

    public static final String f3290 = C0558.m5461(71, 21, 46);

    public static final String f3291 = C0558.m5461(92, 21, 17);

    public static final String f3288 = C0558.m5461(113, 21, 54);

    public C0594(Context context, ClientEventListener clientEventListener, C0400 c0400) {
        String str;
        this.f3295 = context;
        this.f3299 = clientEventListener;
        this.f3294 = c0400;
        this.f3296 = new C0508(c0400);
        m5590(context, c0400.f2082);
        try {
            str = this.f3295.getPackageManager().getPackageInfo(this.f3295.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            str = "";
        }
        m5582();
        String strM5600 = this.f3298.m5600();
        SharedPreferences sharedPreferences = this.f3295.getSharedPreferences(f3287, 0);
        String str2 = f3289;
        String strM5574 = m5574(sharedPreferences, str2);
        String str3 = f3291;
        String string = sharedPreferences.getString(str3, null);
        String str4 = f3290;
        String string2 = sharedPreferences.getString(str4, null);
        String str5 = f3288;
        Object string3 = sharedPreferences.getString(str5, null);
        if (string == null || string2 == null || !str.equals(string) || !strM5600.equals(string2)) {
            strM5574 = UUID.randomUUID().toString().toLowerCase();
            String strM5587 = m5587(strM5574, str, strM5600);
            sharedPreferences.edit().putString(str2, strM5574).commit();
            sharedPreferences.edit().putString(str3, str).commit();
            sharedPreferences.edit().putString(str4, strM5600).commit();
            sharedPreferences.edit().putString(str5, strM5587).commit();
        } else if (strM5574 == null || string3 == null || !m5587(strM5574, string, string2).equals(string3)) {
            sharedPreferences.edit().remove(str2).commit();
            sharedPreferences.edit().remove(str3).commit();
            sharedPreferences.edit().remove(str4).commit();
            sharedPreferences.edit().remove(str5).commit();
            throw new SDKRuntimeException(C0558.m5461(339, 25, 14));
        }
        this.f3292 = strM5574;
    }

    public String m5575() {
        C0600 c0600 = this.f3298;
        return c0600 == null ? "" : c0600.f3316.f2322.m4571();
    }

    public String m5576() {
        m5582();
        String strM4571 = this.f3298.f3316.f2539.m4571();
        if (strM4571.length() > 0) {
            return strM4571;
        }
        String strM4572 = this.f3298.f3316.f2390.m4571();
        return strM4572.length() > 0 ? strM4572 : this.f3298.f3316.f2505.m4571();
    }

    public String m5577() {
        C0600 c0600 = this.f3298;
        return c0600 == null ? "" : c0600.f3316.f2473.m4571();
    }

    public String m5578() {
        C0600 c0600 = this.f3298;
        return c0600 == null ? "" : c0600.f3316.f2420.m4571();
    }

    public String m5579() {
        C0600 c0600 = this.f3298;
        return c0600 == null ? "" : c0600.f3316.f2491.m4571();
    }

    public String m5580() {
        m5582();
        String strM4571 = this.f3298.f3316.f2521.m4571();
        if (strM4571.length() > 0) {
            return strM4571;
        }
        String strM4572 = this.f3298.f3316.f2348.m4571();
        return strM4572.length() > 0 ? strM4572 : this.f3298.f3316.f2493.m4571();
    }

    public int m5581() {
        try {
            return Integer.parseInt(this.f3298.m5605(C0558.m5461(196, 22, 59)));
        } catch (Exception unused) {
            return 300;
        }
    }

    public void m5582() {
        if (this.f3298 == null) {
            m5590(this.f3295, this.f3294.f2082);
        }
    }

    public String m5585() {
        C0600 c0600 = this.f3298;
        return c0600 == null ? "" : c0600.f3316.m4985();
    }

    public void m5588() {
        C0600 c0600 = this.f3298;
        if (c0600 != null) {
            try {
                c0600.m5605(C0558.m5461(134, 18, 36));
            } catch (C0369 unused) {
            }
            this.f3298 = null;
        }
    }

    public void m5583(String str) throws C0369 {
        m5582();
        this.f3298.m5604(str);
        if (str == null || str.length() == 0) {
            return;
        }
        try {
            this.f3298.m5606().clear();
            Iterator<C0281> it = this.f3296.m5200(str).iterator();
            while (it.hasNext()) {
                this.f3298.m5606().add(it.next());
            }
            try {
                this.f3298.m5611(this.f3296.m5199(str));
            } catch (C0369 e) {
                throw new C0632(C0558.m5461(CheckoutActivity.REQUEST_CODE_CHECKOUT, 33, 89) + str, e);
            }
        } catch (C0369 e2) {
            throw new C0632(C0558.m5461(JfifUtil.MARKER_SOS, 24, 122) + str, e2);
        }
    }

    public final void m5591(boolean z) {
        List<String> list = this.f3294.f2077;
        if (list == null) {
            return;
        }
        for (String str : list) {
            if (z == str.startsWith(C0558.m5461(275, 4, 51))) {
                try {
                    this.f3298.m5605(str);
                } catch (C0369 e) {
                    throw new InvalidInputException(C0558.m5461(279, 33, 43) + str, e);
                }
            }
        }
    }

    public final void m5590(Context context, String str) {
        this.f3298 = new C0600(context, str);
        m5591(true);
        try {
            this.f3298.m5612(this);
        } catch (TooManyListenersException unused) {
        }
        try {
            this.f3298.m5605(C0558.m5461(312, 19, 107) + f3286);
            m5591(false);
            try {
                this.f3293 = Integer.parseInt(this.f3298.m5605(C0558.m5461(331, 8, 83)));
            } catch (NumberFormatException unused2) {
            } catch (C0369 e) {
                throw new C0632(e);
            }
        } catch (C0369 e2) {
            throw new C0632(e2);
        }
    }

    public void m5584(boolean z) throws C0369 {
        C0600 c0600 = this.f3298;
        if (c0600 != null) {
            c0600.m5613(z);
        }
    }

    public final String m5587(String str, String str2, String str3) {
        try {
            return this.f3298.m5605(C0558.m5461(364, 20, 33) + str + str2 + str3);
        } catch (C0369 unused) {
            throw new SDKRuntimeException(C0558.m5461(BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT, 39, 127));
        }
    }

    public static String m5574(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.getString(str, null);
    }

    public String m5586(String str) throws C0369 {
        C0600 c0600 = this.f3298;
        return c0600 == null ? "" : c0600.m5605(str);
    }

    public void m5589(int i, String str, String str2) {
        ClientEventListener clientEventListener = this.f3299;
        if (clientEventListener == null || this.f3293 < i) {
            return;
        }
        try {
            clientEventListener.fireLog(i, str, str2);
        } catch (Exception unused) {
        }
    }

    @Override
    public void mo5427(C0532 c0532) {
        ClientEventListener clientEventListener = this.f3299;
        if (clientEventListener != null) {
            clientEventListener.fireDataPacketIn(c0532.f3102);
        }
    }

    @Override
    public void mo5430(C0656 c0656) {
        ClientEventListener clientEventListener = this.f3299;
        if (clientEventListener != null) {
            clientEventListener.fireDataPacketOut(c0656.f3644);
        }
    }

    @Override
    public void mo5425(C0105 c0105) {
        if (this.f3299 != null) {
            this.f3299.fireLog(1, C0558.m5461(TypedValues.CycleType.TYPE_WAVE_PERIOD, 15, 123) + c0105.f141 + "] " + c0105.f140, C0273.f1384);
        }
    }

    @Override
    public void mo5429(C0582 c0582) {
        ClientEventListener clientEventListener = this.f3299;
        if (clientEventListener != null) {
            clientEventListener.fireLog(c0582.f3254, c0582.f3253, c0582.f3252);
        }
    }

    @Override
    public void mo5428(C0549 c0549) {
        ClientEventListener clientEventListener = this.f3299;
        if (clientEventListener != null) {
            boolean[] zArr = {c0549.f3146};
            clientEventListener.fireSSLServerAuthentication(c0549.f3150, c0549.f3149, c0549.f3147, c0549.f3148, zArr);
            c0549.f3146 = zArr[0];
        }
    }

    @Override
    public void mo5426(C0306 c0306) {
        ClientEventListener clientEventListener = this.f3299;
        if (clientEventListener != null) {
            clientEventListener.fireSSLStatus(c0306.f1628);
        }
    }
}
