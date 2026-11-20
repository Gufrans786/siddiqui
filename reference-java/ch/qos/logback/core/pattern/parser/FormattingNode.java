package ch.qos.logback.core.pattern.parser;

import ch.qos.logback.core.pattern.FormatInfo;

public class FormattingNode extends Node {
    FormatInfo formatInfo;

    FormattingNode(int i) {
        super(i);
    }

    FormattingNode(int i, Object obj) {
        super(i, obj);
    }

    @Override
    public boolean equals(Object obj) {
        if (!super.equals(obj) || !(obj instanceof FormattingNode)) {
            return false;
        }
        FormatInfo formatInfo = this.formatInfo;
        FormatInfo formatInfo2 = ((FormattingNode) obj).formatInfo;
        if (formatInfo != null) {
            return formatInfo.equals(formatInfo2);
        }
        return formatInfo2 == null;
    }

    public FormatInfo getFormatInfo() {
        return this.formatInfo;
    }

    @Override
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        FormatInfo formatInfo = this.formatInfo;
        return iHashCode + (formatInfo != null ? formatInfo.hashCode() : 0);
    }

    public void setFormatInfo(FormatInfo formatInfo) {
        this.formatInfo = formatInfo;
    }
}
