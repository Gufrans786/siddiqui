package nts;

import ch.qos.logback.classic.net.SyslogAppender;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;

public class C0632 extends SDKRuntimeException {
    public C0632(C0369 c0369) {
        super(new RuntimeException(C0663.m5887(new StringBuilder().append(c0369.getMessage()).append(" ["), c0369.f1933, "]"), c0369.getCause()));
    }

    public C0632(String str, C0369 c0369) {
        super(new RuntimeException(C0663.m5887(C0663.m5892(str, SyslogAppender.DEFAULT_STACKTRACE_PATTERN).append(c0369.getMessage()).append(" ["), c0369.f1933, "]"), c0369.getCause()));
    }
}
