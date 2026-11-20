package ch.qos.logback.core.pattern.util;

public class RestrictedEscapeUtil implements IEscapeUtil {
    @Override
    public void escape(String str, StringBuffer stringBuffer, char c, int i) {
        if (str.indexOf(c) >= 0) {
            stringBuffer.append(c);
        } else {
            stringBuffer.append("\\");
            stringBuffer.append(c);
        }
    }
}
