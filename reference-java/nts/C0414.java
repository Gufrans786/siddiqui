package nts;

import java.net.UnknownHostException;

public class C0414 extends RuntimeException {

    public int f2136;

    public C0414(Throwable th, String str) {
        this(th, th instanceof C0414 ? ((C0414) th).f2136 : 700, str);
    }

    public static String m4672(Throwable th) {
        return th instanceof UnknownHostException ? C0558.m5481("Xbd`f\u007feBjwsCycfriupp95; \u000b\u0002\u0004\u0012\u001bU\u0011\t\b\u0016\nE^", 0, 23, 26) + th.getMessage() : th.getMessage();
    }

    public static int m4673(Throwable th) {
        if (th instanceof C0414) {
            return ((C0414) th).f2136;
        }
        return 700;
    }

    public C0414(Throwable th) {
        String message;
        if (th instanceof C0414) {
            message = ((C0414) th).getMessage();
        } else {
            message = C0558.m5481("Xbd`f\u007feBjwsCycfriupp95; \u000b\u0002\u0004\u0012\u001bU\u0011\t\b\u0016\nE^", 23, 14, 106) + m4672(th);
        }
        this(th, message);
    }

    public C0414(Throwable th, int i, String str) {
        super(str, th);
        this.f2136 = i;
    }

    public C0414(int i, String str) {
        this(null, i, str);
    }

    public C0414(String str) {
        this(0, str);
    }
}
