package com.google.common.escape;

import com.google.common.base.Preconditions;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.CheckForNull;
import kotlin.jvm.internal.CharCompanionObject;

@ElementTypesAreNonnullByDefault
public final class Escapers {
    private static final Escaper NULL_ESCAPER = new CharEscaper() {
        @Override
        @CheckForNull
        protected char[] escape(char c) {
            return null;
        }

        @Override
        public String escape(String string) {
            return (String) Preconditions.checkNotNull(string);
        }
    };

    private Escapers() {
    }

    public static Escaper nullEscaper() {
        return NULL_ESCAPER;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static final class Builder {
        private final Map<Character, String> replacementMap;
        private char safeMax;
        private char safeMin;

        @CheckForNull
        private String unsafeReplacement;

        private Builder() {
            this.replacementMap = new HashMap();
            this.safeMin = (char) 0;
            this.safeMax = CharCompanionObject.MAX_VALUE;
            this.unsafeReplacement = null;
        }

        public Builder setSafeRange(char safeMin, char safeMax) {
            this.safeMin = safeMin;
            this.safeMax = safeMax;
            return this;
        }

        public Builder setUnsafeReplacement(String unsafeReplacement) {
            this.unsafeReplacement = unsafeReplacement;
            return this;
        }

        public Builder addEscape(char c, String replacement) {
            Preconditions.checkNotNull(replacement);
            this.replacementMap.put(Character.valueOf(c), replacement);
            return this;
        }

        public Escaper build() {
            return new ArrayBasedCharEscaper(this.replacementMap, this.safeMin, this.safeMax) {

                @CheckForNull
                private final char[] replacementChars;

                {
                    this.replacementChars = Builder.this.unsafeReplacement != null ? Builder.this.unsafeReplacement.toCharArray() : null;
                }

                @Override
                @CheckForNull
                protected char[] escapeUnsafe(char c) {
                    return this.replacementChars;
                }
            };
        }
    }

    @CheckForNull
    public static String computeReplacement(CharEscaper escaper, char c) {
        return stringOrNull(escaper.escape(c));
    }

    @CheckForNull
    public static String computeReplacement(UnicodeEscaper escaper, int cp) {
        return stringOrNull(escaper.escape(cp));
    }

    @CheckForNull
    private static String stringOrNull(@CheckForNull char[] in) {
        if (in == null) {
            return null;
        }
        return new String(in);
    }
}
