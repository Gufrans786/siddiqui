package ch.qos.logback.classic.pattern;

public class ClassNameOnlyAbbreviator implements Abbreviator {
    @Override
    public String abbreviate(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf != -1 ? str.substring(iLastIndexOf + 1, str.length()) : str;
    }
}
