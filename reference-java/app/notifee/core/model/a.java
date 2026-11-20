package app.notifee.core.model;

import android.os.Bundle;
import ch.qos.logback.core.CoreConstants;
import com.caverock.androidsvg.SVGParser;
import java.util.concurrent.TimeUnit;
import n.o.t.i.f.e.e.p;

public class a {
    public Bundle a;
    public int b;
    public TimeUnit c;
    public Boolean d;
    public EnumC0012a e;
    public String f;
    public Long g;

    public enum EnumC0012a {
        SET,
        SET_AND_ALLOW_WHILE_IDLE,
        SET_EXACT,
        SET_EXACT_AND_ALLOW_WHILE_IDLE,
        SET_ALARM_CLOCK
    }

    public a(Bundle bundle) {
        this.b = -1;
        this.c = null;
        this.d = Boolean.FALSE;
        EnumC0012a enumC0012a = EnumC0012a.SET_EXACT;
        this.e = enumC0012a;
        this.f = null;
        this.g = null;
        this.a = bundle;
        if (bundle.containsKey("repeatFrequency")) {
            int iA = p.a(this.a.get("repeatFrequency"));
            this.g = Long.valueOf(p.b(this.a.get("timestamp")));
            if (iA == 0) {
                this.b = 1;
                this.c = TimeUnit.HOURS;
                this.f = "HOURLY";
            } else if (iA == 1) {
                this.b = 1;
                this.c = TimeUnit.DAYS;
                this.f = "DAILY";
            } else if (iA == 2) {
                this.b = 7;
                this.c = TimeUnit.DAYS;
                this.f = "WEEKLY";
            }
        }
        if (!this.a.containsKey("alarmManager")) {
            if (this.a.containsKey("allowWhileIdle")) {
                this.d = Boolean.TRUE;
                this.e = EnumC0012a.SET_EXACT_AND_ALLOW_WHILE_IDLE;
                return;
            }
            return;
        }
        this.d = Boolean.TRUE;
        Bundle bundle2 = this.a.getBundle("alarmManager");
        Object obj = bundle2.get(SVGParser.XML_STYLESHEET_ATTR_TYPE);
        int iA2 = obj != null ? p.a(obj) : 2;
        if (bundle2.containsKey("allowWhileIdle") && bundle2.getBoolean("allowWhileIdle")) {
            iA2 = 3;
        }
        if (iA2 == 0) {
            this.e = EnumC0012a.SET;
            return;
        }
        if (iA2 == 1) {
            this.e = EnumC0012a.SET_AND_ALLOW_WHILE_IDLE;
            return;
        }
        if (iA2 == 3) {
            this.e = EnumC0012a.SET_EXACT_AND_ALLOW_WHILE_IDLE;
        } else if (iA2 != 4) {
            this.e = enumC0012a;
        } else {
            this.e = EnumC0012a.SET_ALARM_CLOCK;
        }
    }

    public void a() {
        long j;
        if (this.f == null) {
            return;
        }
        long jLongValue = this.g.longValue();
        String str = this.f;
        str.getClass();
        str.hashCode();
        switch (str) {
            case "WEEKLY":
                j = CoreConstants.MILLIS_IN_ONE_WEEK;
                break;
            case "DAILY":
                j = CoreConstants.MILLIS_IN_ONE_DAY;
                break;
            case "HOURLY":
                j = CoreConstants.MILLIS_IN_ONE_HOUR;
                break;
            default:
                j = 0;
                break;
        }
        while (jLongValue < System.currentTimeMillis()) {
            jLongValue += j;
        }
        this.g = Long.valueOf(jLongValue);
    }
}
