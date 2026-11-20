package ch.qos.logback.core.rolling.helper;

import java.lang.Comparable;

interface FilenameParser<T extends Comparable<T>> {
    T parseFilename(String str);
}
