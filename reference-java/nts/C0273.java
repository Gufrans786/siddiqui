package nts;

import android.content.Context;
import android.os.Looper;
import ch.qos.logback.core.net.SyslogConstants;
import com.nsoftware.ipworks3ds.sdk.ClientEventListener;
import com.nsoftware.ipworks3ds.sdk.ConfigParameters;
import com.nsoftware.ipworks3ds.sdk.SecurityEventListener;
import com.nsoftware.ipworks3ds.sdk.Transaction;
import com.nsoftware.ipworks3ds.sdk.Warning;
import com.nsoftware.ipworks3ds.sdk.customization.UiCustomization;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKAlreadyInitializedException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKNotInitializedException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class C0273 implements InterfaceC0504 {

    public C0108 f1388;

    public C0400 f1389;

    public List<Warning> f1390;

    public boolean f1391 = false;

    public SecurityEventListener f1392;

    public UiCustomization f1393;

    public C0594 f1394;

    public Context f1395;

    public static final C0273 f1383 = new C0273();

    public static final Charset f1385 = StandardCharsets.UTF_8;

    public static final String f1386 = C0558.m5443(0, 7, 58);

    public static final String f1387 = C0558.m5443(7, 10, 121);

    public static final String f1384 = C0558.m5443(17, 8, 80);

    public class C0274 implements Thread.UncaughtExceptionHandler {
        public C0274() {
        }

        @Override
        public void uncaughtException(Thread thread, Throwable th) {
            String string = C0558.m5443(97, 26, 76) + th.getLocalizedMessage() + C0558.m5443(123, 14, 94);
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                string = C0663.m5891(string).append(stackTraceElement.toString()).append("\n").toString();
            }
            C0273.this.m3992(string);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                System.exit(2);
            }
        }
    }

    @Override
    public void cleanup(Context context) throws SDKNotInitializedException {
        m3990();
        ActivityC0477.f2722.clear();
        this.f1393 = null;
        this.f1390 = null;
        C0594 c0594 = this.f1394;
        C0600 c0600 = c0594.f3298;
        if (c0600 != null) {
            try {
                c0600.m5605(C0558.m5461(SyslogConstants.LOG_LOCAL3, 19, 35));
            } catch (C0369 unused) {
            }
        }
        c0594.m5588();
        List<C0428> list = c0594.f3297;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                C0583.m5567(c0594.f3297.get(i));
            }
            c0594.f3297.clear();
            c0594.f3297 = null;
        }
        c0594.f3296 = null;
        c0594.f3294 = null;
        c0594.f3292 = null;
        c0594.f3295 = null;
        this.f1391 = false;
        this.f1395 = null;
    }

    @Override
    public Transaction createTransaction(String str, String str2) throws InvalidInputException, SDKNotInitializedException, SDKRuntimeException {
        m3990();
        C0594 c0594 = this.f1394;
        c0594.m5582();
        try {
            c0594.f3298.m5602();
            List<C0428> list = c0594.f3297;
            if (list != null && list.size() > 0) {
                C0197 c0197M5598 = c0594.f3298.m5598();
                c0197M5598.clear();
                c0197M5598.addAll(c0594.f3297);
            }
            c0594.f3298.m5597(c0594.f3292);
            return new C0555(str, str2);
        } catch (C0369 e) {
            throw new C0632(e);
        }
    }

    @Override
    public String getSDKVersion() throws SDKNotInitializedException, SDKRuntimeException {
        m3990();
        C0594 c0594 = this.f1394;
        c0594.m5582();
        return c0594.f3298.m5600();
    }

    @Override
    public List<Warning> getWarnings() {
        m3990();
        List<Warning> list = this.f1390;
        return list == null ? new ArrayList() : new ArrayList(list);
    }

    @Override
    public void initialize(Context context, ConfigParameters configParameters, String str, UiCustomization uiCustomization, ClientEventListener clientEventListener, SecurityEventListener securityEventListener) throws SDKAlreadyInitializedException, InvalidInputException, SDKRuntimeException {
        C0400 c0400;
        if (this.f1391) {
            throw new SDKAlreadyInitializedException();
        }
        if (configParameters == null) {
            throw new InvalidInputException(C0558.m5443(25, 35, 18));
        }
        if (context == null) {
            throw new InvalidInputException(C0558.m5443(60, 37, 114));
        }
        this.f1395 = context;
        this.f1392 = securityEventListener;
        this.f1389 = new C0400(configParameters);
        this.f1393 = uiCustomization;
        this.f1394 = new C0594(context, clientEventListener, this.f1389);
        List<Warning> list = C0542.m5424(context, this.f1389).f3132;
        this.f1390 = list;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                String id = this.f1390.get(i).getID();
                if (C0542.f3131.equals(id)) {
                    f1383.m3991(3, 1);
                } else if (C0542.f3129.equals(id)) {
                    f1383.m3991(3, 2);
                } else if (C0542.f3130.equals(id)) {
                    f1383.m3991(3, 5);
                } else if (C0542.f3127.equals(id)) {
                    f1383.m3991(2, 7);
                }
            }
        }
        C0594 c0594 = this.f1394;
        List<Warning> list2 = this.f1390;
        c0594.m5582();
        C0413 c0413 = new C0413(context, c0594.f3294, c0594.f3292, c0594.f3298.m5600());
        ArrayList arrayList = new ArrayList();
        if (c0413.f2135 == null) {
            throw new InvalidInputException(C0558.m5455(0, 26, 0));
        }
        if (c0413.f2132 == null && (c0400 = c0413.f2134) != null) {
            List<String> list3 = c0400.f2081;
            c0413.f2132 = new ArrayList<>();
            Iterator<String> it = list3.iterator();
            while (it.hasNext()) {
                c0413.f2132.add(it.next().toLowerCase());
            }
        }
        c0413.m4661(arrayList);
        if (list2 != null) {
            Iterator<Warning> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(new C0428(it2.next().getID(), null, 2, 3));
            }
        }
        c0594.f3297 = arrayList;
        if (this.f1389.f2084) {
            Thread.setDefaultUncaughtExceptionHandler(new C0274());
        }
        this.f1391 = true;
    }

    public C0594 m3986() {
        m3990();
        return this.f1394;
    }

    public C0108 m3988() {
        if (this.f1388 == null) {
            this.f1388 = new C0108(null);
        }
        return this.f1388;
    }

    public final void m3990() {
        if (!this.f1391) {
            throw new SDKNotInitializedException(C0558.m5443(137, 31, 90));
        }
    }

    public void m3987(String str) {
        C0594 c0594 = this.f1394;
        if (c0594 != null) {
            c0594.m5589(1, str, f1387);
        }
    }

    public void m3993(C0369 c0369) {
        m3988().runtimeError(new C0250(C0663.m5891("").append(c0369.f1933).toString(), c0369.getMessage()));
    }

    public void m3989(String str) {
        C0594 c0594 = this.f1394;
        if (c0594 != null) {
            c0594.m5589(2, str, f1386);
        }
    }

    public void m3992(String str) {
        C0594 c0594 = this.f1394;
        if (c0594 != null) {
            c0594.m5589(1, str, f1384);
        }
    }

    public void m3991(int i, int i2) {
        SecurityEventListener.Severity severity;
        SecurityEventListener.SecurityEvent securityEvent;
        SecurityEventListener securityEventListener = this.f1392;
        if (securityEventListener != null) {
            if (i == 1) {
                severity = SecurityEventListener.Severity.LOW;
            } else if (i != 2) {
                severity = SecurityEventListener.Severity.HIGH;
            } else {
                severity = SecurityEventListener.Severity.MEDIUM;
            }
            switch (i2) {
                case 1:
                    securityEvent = SecurityEventListener.SecurityEvent.ROOT;
                    break;
                case 2:
                    securityEvent = SecurityEventListener.SecurityEvent.TAMPERED;
                    break;
                case 3:
                    securityEvent = SecurityEventListener.SecurityEvent.INSTALLED_FROM_UNTRUSTED_STORE;
                    break;
                case 4:
                    securityEvent = SecurityEventListener.SecurityEvent.HOOK;
                    break;
                case 5:
                    securityEvent = SecurityEventListener.SecurityEvent.EMULATOR;
                    break;
                case 6:
                    securityEvent = SecurityEventListener.SecurityEvent.DEBUGGING;
                    break;
                case 7:
                    securityEvent = SecurityEventListener.SecurityEvent.DEBUG_ENABLED;
                    break;
                default:
                    securityEvent = SecurityEventListener.SecurityEvent.DEBUG_ENABLED;
                    break;
            }
            securityEventListener.alarm(severity, securityEvent);
        }
    }
}
