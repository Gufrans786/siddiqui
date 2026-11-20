package com.google.common.base;

import ch.qos.logback.core.CoreConstants;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class CaseFormat {
    public static final CaseFormat LOWER_CAMEL;
    public static final CaseFormat LOWER_UNDERSCORE;
    public static final CaseFormat UPPER_CAMEL;
    public static final CaseFormat UPPER_UNDERSCORE;
    private final CharMatcher wordBoundary;
    private final String wordSeparator;
    public static final CaseFormat LOWER_HYPHEN = new CaseFormat("LOWER_HYPHEN", 0, CharMatcher.is(CoreConstants.DASH_CHAR), "-") {
        @Override
        String normalizeWord(String word) {
            return Ascii.toLowerCase(word);
        }

        @Override
        String convert(CaseFormat format, String s) {
            if (format == LOWER_UNDERSCORE) {
                return s.replace(CoreConstants.DASH_CHAR, '_');
            }
            if (format == UPPER_UNDERSCORE) {
                return Ascii.toUpperCase(s.replace(CoreConstants.DASH_CHAR, '_'));
            }
            return super.convert(format, s);
        }
    };
    private static final CaseFormat[] $VALUES = $values();

    abstract String normalizeWord(String word);

    private static CaseFormat[] $values() {
        return new CaseFormat[]{LOWER_HYPHEN, LOWER_UNDERSCORE, LOWER_CAMEL, UPPER_CAMEL, UPPER_UNDERSCORE};
    }

    public static CaseFormat valueOf(String name) {
        return (CaseFormat) Enum.valueOf(CaseFormat.class, name);
    }

    public static CaseFormat[] values() {
        return (CaseFormat[]) $VALUES.clone();
    }

    static {
        String str = "_";
        LOWER_UNDERSCORE = new CaseFormat("LOWER_UNDERSCORE", 1, CharMatcher.is('_'), str) {
            @Override
            String normalizeWord(String word) {
                return Ascii.toLowerCase(word);
            }

            @Override
            String convert(CaseFormat format, String s) {
                if (format == LOWER_HYPHEN) {
                    return s.replace('_', CoreConstants.DASH_CHAR);
                }
                if (format == UPPER_UNDERSCORE) {
                    return Ascii.toUpperCase(s);
                }
                return super.convert(format, s);
            }
        };
        String str2 = "";
        LOWER_CAMEL = new CaseFormat("LOWER_CAMEL", 2, CharMatcher.inRange('A', 'Z'), str2) {
            @Override
            String normalizeWord(String word) {
                return CaseFormat.firstCharOnlyToUpper(word);
            }

            @Override
            String normalizeFirstWord(String word) {
                return Ascii.toLowerCase(word);
            }
        };
        UPPER_CAMEL = new CaseFormat("UPPER_CAMEL", 3, CharMatcher.inRange('A', 'Z'), str2) {
            @Override
            String normalizeWord(String word) {
                return CaseFormat.firstCharOnlyToUpper(word);
            }
        };
        UPPER_UNDERSCORE = new CaseFormat("UPPER_UNDERSCORE", 4, CharMatcher.is('_'), str) {
            @Override
            String normalizeWord(String word) {
                return Ascii.toUpperCase(word);
            }

            @Override
            String convert(CaseFormat format, String s) {
                if (format == LOWER_HYPHEN) {
                    return Ascii.toLowerCase(s.replace('_', CoreConstants.DASH_CHAR));
                }
                if (format == LOWER_UNDERSCORE) {
                    return Ascii.toLowerCase(s);
                }
                return super.convert(format, s);
            }
        };
    }

    private CaseFormat(String $enum$name, int $enum$ordinal, CharMatcher wordBoundary, String wordSeparator) {
        super($enum$name, $enum$ordinal);
        this.wordBoundary = wordBoundary;
        this.wordSeparator = wordSeparator;
    }

    public final String to(CaseFormat format, String str) {
        Preconditions.checkNotNull(format);
        Preconditions.checkNotNull(str);
        return format == this ? str : convert(format, str);
    }

    String convert(CaseFormat format, String s) {
        StringBuilder sb = null;
        int length = 0;
        int iIndexIn = -1;
        while (true) {
            iIndexIn = this.wordBoundary.indexIn(s, iIndexIn + 1);
            if (iIndexIn == -1) {
                break;
            }
            if (length == 0) {
                sb = new StringBuilder(s.length() + (format.wordSeparator.length() * 4));
                sb.append(format.normalizeFirstWord(s.substring(length, iIndexIn)));
            } else {
                ((StringBuilder) java.util.Objects.requireNonNull(sb)).append(format.normalizeWord(s.substring(length, iIndexIn)));
            }
            sb.append(format.wordSeparator);
            length = this.wordSeparator.length() + iIndexIn;
        }
        if (length == 0) {
            return format.normalizeFirstWord(s);
        }
        return ((StringBuilder) java.util.Objects.requireNonNull(sb)).append(format.normalizeWord(s.substring(length))).toString();
    }

    public Converter<String, String> converterTo(CaseFormat targetFormat) {
        return new StringConverter(this, targetFormat);
    }

    private static final class StringConverter extends Converter<String, String> implements Serializable {
        private static final long serialVersionUID = 0;
        private final CaseFormat sourceFormat;
        private final CaseFormat targetFormat;

        StringConverter(CaseFormat sourceFormat, CaseFormat targetFormat) {
            this.sourceFormat = (CaseFormat) Preconditions.checkNotNull(sourceFormat);
            this.targetFormat = (CaseFormat) Preconditions.checkNotNull(targetFormat);
        }

        @Override
        public String doForward(String s) {
            return this.sourceFormat.to(this.targetFormat, s);
        }

        @Override
        public String doBackward(String s) {
            return this.targetFormat.to(this.sourceFormat, s);
        }

        @Override
        public boolean equals(@CheckForNull Object object) {
            if (object instanceof StringConverter) {
                StringConverter stringConverter = (StringConverter) object;
                if (this.sourceFormat.equals(stringConverter.sourceFormat) && this.targetFormat.equals(stringConverter.targetFormat)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.sourceFormat.hashCode() ^ this.targetFormat.hashCode();
        }

        public String toString() {
            return this.sourceFormat + ".converterTo(" + this.targetFormat + ")";
        }
    }

    String normalizeFirstWord(String word) {
        return normalizeWord(word);
    }

    public static String firstCharOnlyToUpper(String word) {
        return word.isEmpty() ? word : Ascii.toUpperCase(word.charAt(0)) + Ascii.toLowerCase(word.substring(1));
    }
}
