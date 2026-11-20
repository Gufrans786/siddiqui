package nts;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.Serializable;
import java.util.TooManyListenersException;

public class C0600 implements InterfaceC0330, Serializable {

    public Context f3310;

    public String f3311;

    public String f3312;

    public String f3313;

    public boolean f3314;

    public transient InterfaceC0543 f3315;

    public C0580 f3316;

    public class RunnableC0601 implements Runnable {

        public final AlertDialog.Builder f3317;

        public RunnableC0601(C0600 c0600, AlertDialog.Builder builder) {
            this.f3317 = builder;
        }

        @Override
        public void run() {
            this.f3317.show();
        }
    }

    public class DialogInterfaceOnClickListenerC0602 implements DialogInterface.OnClickListener {

        public final Handler f3318;

        public final boolean f3319;

        public class RunnableC0603 implements Runnable {
            public RunnableC0603(DialogInterfaceOnClickListenerC0602 dialogInterfaceOnClickListenerC0602) {
            }

            @Override
            public void run() {
                Looper.myLooper().quit();
            }
        }

        public DialogInterfaceOnClickListenerC0602(C0600 c0600, boolean z, Handler handler) {
            this.f3319 = z;
            this.f3318 = handler;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            if (this.f3319) {
                this.f3318.post(new RunnableC0603(this));
            }
        }
    }

    public C0600() {
        this(null, null);
    }

    public void finalize() throws Throwable {
        try {
            try {
                C0580 c0580 = this.f3316;
                if (c0580 != null) {
                    c0580.m4308();
                }
                super.finalize();
            } catch (C0414 e) {
                throw new C0369(e);
            }
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }

    @Override
    public void fireSSLServerAuthentication(byte[] bArr, String str, String str2, String str3, boolean[] zArr) {
        if (this.f3315 != null) {
            C0549 c0549 = new C0549(this);
            c0549.f3150 = bArr;
            c0549.f3149 = str;
            c0549.f3147 = str2;
            c0549.f3148 = str3;
            c0549.f3146 = zArr[0];
            try {
                this.f3315.mo5428(c0549);
            } catch (Throwable th) {
                C0414 c0414 = new C0414(th, -1, C0558.m5456(554, 74, 62) + th.getMessage());
                C0105 c0105 = new C0105(this);
                c0105.f141 = c0414.f2136;
                c0105.f140 = c0414.getMessage();
                this.f3315.mo5425(c0105);
                this.f3316.m4312((Exception) c0414);
            }
            zArr[0] = c0549.f3146;
        }
    }

    @Override
    public void fireSSLStatus(String str) {
        if (this.f3315 != null) {
            C0306 c0306 = new C0306(this);
            c0306.f1628 = str;
            try {
                this.f3315.mo5426(c0306);
            } catch (Throwable th) {
                C0414 c0414 = new C0414(th, -1, C0558.m5456(628, 60, 123) + th.getMessage());
                C0105 c0105 = new C0105(this);
                c0105.f141 = c0414.f2136;
                c0105.f140 = c0414.getMessage();
                this.f3315.mo5425(c0105);
                this.f3316.m4312((Exception) c0414);
            }
        }
    }

    public C0231 m5596() {
        return new C0231(this.f3316.f2499, true);
    }

    public C0197 m5598() {
        return new C0197(this.f3316.f2528, false);
    }

    public String m5600() {
        return AbstractC0379.m4479();
    }

    public void m5602() throws C0369 {
        try {
            if (!this.f3314) {
                m5609();
                this.f3314 = true;
            }
            this.f3316.m4843();
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public void m5604(String str) throws C0369 {
        try {
            this.f3316.f2516.m4531(str);
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public C0501 m5606() {
        return new C0501(this.f3316.f2506, false);
    }

    public void m5608() throws C0369 {
        try {
            if (!this.f3314) {
                m5609();
                this.f3314 = true;
            }
            this.f3316.m4924();
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public void m5611(C0281 c0281) throws C0369 {
        try {
            this.f3316.f2412 = c0281 != null ? c0281.f1416 : null;
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public C0600(Context context, String str) {
        this.f3316 = null;
        this.f3315 = null;
        this.f3312 = null;
        this.f3314 = false;
        this.f3311 = C0558.m5456(0, 25, 123);
        this.f3313 = C0558.m5456(25, 17, 106);
        this.f3312 = str;
        this.f3310 = context;
        try {
            C0580 c0580 = new C0580(this, this);
            this.f3316 = c0580;
            boolean z = true;
            c0580.f1726 = true;
            if (this.f3316.f3355) {
                C0580 c0581 = this.f3316;
                if (Looper.myLooper() == null) {
                    z = false;
                }
                c0581.m5629(z);
            }
            this.f3316.f2334.m4531("");
            this.f3316.f2368.m4531("");
            this.f3316.f2516.m4531("");
            this.f3316.f2487 = false;
            this.f3316.f2525.m4531("");
            this.f3316.f2469.m4531("");
            this.f3316.mo3290(30);
            this.f3316.f2501 = false;
            this.f3316.f2420.m4531("");
        } catch (C0414 unused) {
        }
        this.f3316.f1726 = false;
    }

    public void m5601(String str) throws C0369 {
        try {
            this.f3316.f2368.m4531(str);
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public void m5597(String str) throws C0369 {
        try {
            this.f3316.f2525.m4531(str);
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public final void m5599(String str) {
        boolean z = Looper.myLooper() == null;
        if (z) {
            Looper.prepare();
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f3310);
        Handler handler = new Handler();
        builder.setMessage(str).setCancelable(false).setPositiveButton("OK", new DialogInterfaceOnClickListenerC0602(this, z, handler));
        if (z) {
            handler.post(new RunnableC0601(this, builder));
            Looper.loop();
            Log.d(C0558.m5456(266, 3, 37), C0558.m5456(269, 14, 95));
            return;
        }
        builder.show();
    }

    public String m5603() throws C0369 {
        try {
            if (!this.f3314) {
                m5609();
                this.f3314 = true;
            }
            return this.f3316.m5565();
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public void m5607(boolean z) throws C0369 {
        try {
            this.f3316.f2501 = z;
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public void m5613(boolean z) throws C0369 {
        try {
            this.f3316.f2487 = z;
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public String m5605(String str) throws C0369 {
        if (str != null) {
            try {
                if (str.startsWith(C0558.m5456(283, 9, 97))) {
                    this.f3311 = str.replace(C0558.m5456(292, 9, 85), "");
                    return "";
                }
                if (str.startsWith(C0558.m5456(301, 8, 84))) {
                    this.f3313 = str.replace(C0558.m5456(309, 8, 101), "");
                    return "";
                }
            } catch (C0414 e) {
                throw new C0369(e);
            }
        }
        if (!this.f3314) {
            m5609();
            this.f3314 = true;
        }
        return this.f3316.m4304(str);
    }

    public final void m5609() {
        try {
            try {
                C0255.m3823(14, C0600.class, this.f3312);
                this.f3310 = null;
            } catch (RuntimeException e) {
                Log.e(this.f3311, e.getMessage());
                if (this.f3310 != null && !e.getMessage().contains(C0558.m5456(42, 6, 51) + 'N') && !e.getMessage().contains(C0558.m5456(48, 6, 54) + 'O')) {
                    m5599(((((this.f3311 + "\r\n") + C0558.m5456(54, 62, 27)) + C0558.m5456(116, 70, 30)) + C0558.m5456(186, 67, 89)) + C0558.m5456(253, 13, 21) + this.f3313 + ".");
                    this.f3314 = true;
                    this.f3310 = null;
                    return;
                }
                throw e;
            }
        } catch (Throwable th) {
            this.f3310 = null;
            throw th;
        }
    }

    public void m5610(String str) throws C0369 {
        try {
            if (!this.f3314) {
                m5609();
                this.f3314 = true;
            }
            this.f3316.m5566(str);
        } catch (C0414 e) {
            throw new C0369(e);
        }
    }

    public synchronized void m5612(InterfaceC0543 interfaceC0543) throws TooManyListenersException {
        this.f3315 = interfaceC0543;
    }
}
