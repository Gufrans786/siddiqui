package com.payfort.fortpaymentsdk.domain.model;

import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0086\u0001\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\"BC\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005¢\u0006\u0002\u0010\u000bJ\n\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0002R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!¨\u0006#"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "", "issuerName", "", "icon", "", "defaultMaxLength", "defaultMinLength", "pattern", "Ljava/util/regex/Pattern;", "defaultCvcLength", "(Ljava/lang/String;ILjava/lang/String;IIILjava/util/regex/Pattern;I)V", "getDefaultCvcLength", "()I", "setDefaultCvcLength", "(I)V", "getDefaultMaxLength", "setDefaultMaxLength", "getDefaultMinLength", "setDefaultMinLength", "getIcon", "setIcon", "getIssuerName", "()Ljava/lang/String;", "getPatternForLength", Constants.CREDIT_CARDS_TYPES.JAYWAN, Constants.CREDIT_CARDS_TYPES.VISA, Constants.CREDIT_CARDS_TYPES.MASTERCARD, Constants.CREDIT_CARDS_TYPES.AMEX, Constants.CREDIT_CARDS_TYPES.MEEZA, "MEEZA_2", Constants.CREDIT_CARDS_TYPES.MAESTRO, Constants.CREDIT_CARDS_TYPES.MADA, "UNKNOWN", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CardBrand {
    private static final CardBrand[] $VALUES;
    public static final CardBrand AMEX;

    public static final Companion INSTANCE;
    public static final CardBrand JAYWAN;
    public static final CardBrand MADA;
    public static final CardBrand MAESTRO;
    public static final CardBrand MASTERCARD;
    public static final CardBrand MEEZA;
    public static final CardBrand MEEZA_2;
    public static final CardBrand UNKNOWN;
    public static final CardBrand VISA;
    private int defaultCvcLength;
    private int defaultMaxLength;
    private int defaultMinLength;
    private int icon;
    private final String issuerName;
    private final Pattern pattern;

    private static final CardBrand[] $values() {
        return new CardBrand[]{JAYWAN, VISA, MASTERCARD, AMEX, MEEZA, MEEZA_2, MAESTRO, MADA, UNKNOWN};
    }

    public static CardBrand valueOf(String str) {
        return (CardBrand) Enum.valueOf(CardBrand.class, str);
    }

    public static CardBrand[] values() {
        return (CardBrand[]) $VALUES.clone();
    }

    private CardBrand(String str, int i, String str2, int i2, int i3, int i4, Pattern pattern, int i5) {
        super(str, i);
        this.issuerName = str2;
        this.icon = i2;
        this.defaultMaxLength = i3;
        this.defaultMinLength = i4;
        this.pattern = pattern;
        this.defaultCvcLength = i5;
    }

    CardBrand(String str, int i, String str2, int i2, int i3, int i4, Pattern pattern, int i5, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, i2, (i6 & 4) != 0 ? 16 : i3, (i6 & 8) != 0 ? 16 : i4, (i6 & 16) != 0 ? null : pattern, (i6 & 32) != 0 ? 3 : i5);
    }

    public final String getIssuerName() {
        return this.issuerName;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final void setIcon(int i) {
        this.icon = i;
    }

    public final int getDefaultMaxLength() {
        return this.defaultMaxLength;
    }

    public final void setDefaultMaxLength(int i) {
        this.defaultMaxLength = i;
    }

    public final int getDefaultMinLength() {
        return this.defaultMinLength;
    }

    public final void setDefaultMinLength(int i) {
        this.defaultMinLength = i;
    }

    public final int getDefaultCvcLength() {
        return this.defaultCvcLength;
    }

    public final void setDefaultCvcLength(int i) {
        this.defaultCvcLength = i;
    }

    static {
        Pattern patternCompile = Pattern.compile("^(669010|669009|978450)");
        int i = 44;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        JAYWAN = new CardBrand(Constants.CREDIT_CARDS_TYPES.JAYWAN, 0, Constants.CREDIT_CARDS_TYPES.JAYWAN, R.drawable.ic_jaywan, i2, i3, patternCompile, i4, i, defaultConstructorMarker);
        Pattern patternCompile2 = Pattern.compile("^4");
        VISA = new CardBrand(Constants.CREDIT_CARDS_TYPES.VISA, 1, Constants.CREDIT_CARDS_TYPES.VISA, R.drawable.ic_visa, i2, i3, patternCompile2, i4, i, defaultConstructorMarker);
        Pattern patternCompile3 = Pattern.compile("^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)");
        MASTERCARD = new CardBrand(Constants.CREDIT_CARDS_TYPES.MASTERCARD, 2, Constants.CREDIT_CARDS_TYPES.MASTERCARD, R.drawable.ic_master_card, i2, i3, patternCompile3, i4, i, defaultConstructorMarker);
        AMEX = new CardBrand(Constants.CREDIT_CARDS_TYPES.AMEX, 3, Constants.CREDIT_CARDS_TYPES.AMEX, R.drawable.ic_amex, 15, 15, Pattern.compile("^3[47]"), 4);
        Pattern patternCompile4 = Pattern.compile("^6(?:2(?:7(?:59[07]|632|382)|(?:805|766)9|2009|7(?:88|77)8)|0(?:3(?:6(?:65|06)|3(?:53|36)|370)|2(?:85[05]|050)|3794|3(?:73|34|01)8|1(?:844|52[06]|467|368)))[0-9]{10,13}");
        int i5 = 19;
        int i6 = 0;
        MEEZA = new CardBrand(Constants.CREDIT_CARDS_TYPES.MEEZA, 4, Constants.CREDIT_CARDS_TYPES.MEEZA, R.drawable.ic_meza, i5, 16, patternCompile4, i6, 32, defaultConstructorMarker);
        Pattern patternCompile5 = Pattern.compile("^9818");
        int i7 = 40;
        int i8 = 0;
        MEEZA_2 = new CardBrand("MEEZA_2", 5, Constants.CREDIT_CARDS_TYPES.MEEZA, R.drawable.ic_meza, i5, i8, patternCompile5, i6, i7, defaultConstructorMarker);
        Pattern patternCompile6 = Pattern.compile("^(5[06-8]|6\\d)\\d{14}(\\d{2,3})?$");
        MAESTRO = new CardBrand(Constants.CREDIT_CARDS_TYPES.MAESTRO, 6, Constants.CREDIT_CARDS_TYPES.MEEZA, R.drawable.ic_meza, i5, i8, patternCompile6, i6, i7, defaultConstructorMarker);
        int i9 = 0;
        MADA = new CardBrand(Constants.CREDIT_CARDS_TYPES.MADA, 7, Constants.CREDIT_CARDS_TYPES.MADA, R.drawable.ic_mada_card, 16, i9, null, 0, 56, null);
        UNKNOWN = new CardBrand("UNKNOWN", 8, "UNKNOWN", 0, i9, 0, null, 0, 60, null);
        $VALUES = $values();
        INSTANCE = new Companion(null);
    }

    public final Pattern getPattern() {
        return this.pattern;
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0006¨\u0006\u000b"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/CardBrand$Companion;", "", "()V", "fromCardNumber", "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "cardNumber", "", "fromCardNumberOrNull", "fromCode", "code", "fromCodeOrNull", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CardBrand fromCardNumber(String cardNumber) {
            Matcher matcher;
            String str = cardNumber;
            if (str == null || StringsKt.isBlank(str)) {
                return CardBrand.UNKNOWN;
            }
            for (CardBrand cardBrand : CardBrand.values()) {
                Pattern pattern = cardBrand.getPattern();
                if (pattern != null && (matcher = pattern.matcher(str)) != null && matcher.find()) {
                    if (cardBrand == null) {
                        return CardBrand.UNKNOWN;
                    }
                    return cardBrand;
                }
            }
            cardBrand = null;
            if (cardBrand == null) {
                return CardBrand.UNKNOWN;
            }
            return cardBrand;
        }

        public final CardBrand fromCardNumberOrNull(String cardNumber) {
            Matcher matcher;
            String str = cardNumber;
            if (str == null || StringsKt.isBlank(str)) {
                return null;
            }
            for (CardBrand cardBrand : CardBrand.values()) {
                Pattern pattern = cardBrand.getPattern();
                if (pattern != null && (matcher = pattern.matcher(str)) != null && matcher.find()) {
                    if (cardBrand == null) {
                        return null;
                    }
                    return cardBrand;
                }
            }
            cardBrand = null;
            if (cardBrand == null) {
                return null;
            }
            return cardBrand;
        }

        public final CardBrand fromCode(String code) {
            for (CardBrand cardBrand : CardBrand.values()) {
                if (StringsKt.equals(cardBrand.getIssuerName(), code, true)) {
                    if (cardBrand == null) {
                        return CardBrand.UNKNOWN;
                    }
                    return cardBrand;
                }
            }
            cardBrand = null;
            if (cardBrand == null) {
                return CardBrand.UNKNOWN;
            }
            return cardBrand;
        }

        public final CardBrand fromCodeOrNull(String code) {
            for (CardBrand cardBrand : CardBrand.values()) {
                if (StringsKt.equals(cardBrand.getIssuerName(), code, true)) {
                    if (cardBrand == null) {
                        return null;
                    }
                    return cardBrand;
                }
            }
            cardBrand = null;
            if (cardBrand == null) {
                return null;
            }
            return cardBrand;
        }
    }
}
