package kotlin.time;

import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.google.common.primitives.Longs;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0006\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 \u0089\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0089\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\f\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0011\u0010\u000fJ\u0010\u0010\u0016\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010!\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\"\u0010\u001bJ\u0018\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0002¢\u0006\u0004\b%\u0010&J\u0018\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020'H\u0086\u0002¢\u0006\u0004\b%\u0010(J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0002¢\u0006\u0004\b*\u0010&J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020'H\u0086\u0002¢\u0006\u0004\b*\u0010(J\u0018\u0010)\u001a\u00020'2\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0013H\u0000¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\r¢\u0006\u0004\b2\u0010\u000fJ\r\u00103\u001a\u00020\r¢\u0006\u0004\b4\u0010\u000fJ\r\u00105\u001a\u00020\r¢\u0006\u0004\b6\u0010\u000fJ\r\u00107\u001a\u00020\r¢\u0006\u0004\b8\u0010\u000fJ\u0018\u0010;\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b<\u0010=J\u009d\u0001\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2u\u0010@\u001aq\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(D\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(E\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0AH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010JJ\u0088\u0001\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2`\u0010@\u001a\\\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(E\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0KH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010LJs\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2K\u0010@\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0MH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010NJ^\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?26\u0010@\u001a2\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0OH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010PJ\u0015\u0010^\u001a\u00020'2\u0006\u0010.\u001a\u00020\u0013¢\u0006\u0004\b_\u0010`J\u0015\u0010a\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0013¢\u0006\u0004\bb\u00100J\u0015\u0010c\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0013¢\u0006\u0004\bd\u0010eJ\u000f\u0010t\u001a\u00020uH\u0016¢\u0006\u0004\bv\u0010wJA\u0010x\u001a\u00020y*\u00060zj\u0002`{2\u0006\u0010|\u001a\u00020\t2\u0006\u0010}\u001a\u00020\t2\u0006\u0010~\u001a\u00020\t2\u0006\u0010.\u001a\u00020u2\u0006\u0010\u007f\u001a\u00020\rH\u0002¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J!\u0010t\u001a\u00020u2\u0006\u0010.\u001a\u00020\u00132\t\b\u0002\u0010\u0082\u0001\u001a\u00020\t¢\u0006\u0005\bv\u0010\u0083\u0001J\u000f\u0010\u0084\u0001\u001a\u00020u¢\u0006\u0005\b\u0085\u0001\u0010wJ\u0015\u0010\u0086\u0001\u001a\u00020\r2\t\u0010\u0019\u001a\u0005\u0018\u00010\u0087\u0001HÖ\u0003J\n\u0010\u0088\u0001\u001a\u00020\tHÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0015\u0010\b\u001a\u00020\t8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0011\u00109\u001a\u00020\u00008F¢\u0006\u0006\u001a\u0004\b:\u0010\u0005R\u001a\u0010Q\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bR\u0010S\u001a\u0004\bT\u0010\u000bR\u001a\u0010U\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bV\u0010S\u001a\u0004\bW\u0010\u000bR\u001a\u0010X\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bY\u0010S\u001a\u0004\bZ\u0010\u000bR\u001a\u0010[\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\\\u0010S\u001a\u0004\b]\u0010\u000bR\u0011\u0010f\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bg\u0010\u0005R\u0011\u0010h\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bi\u0010\u0005R\u0011\u0010j\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bk\u0010\u0005R\u0011\u0010l\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bm\u0010\u0005R\u0011\u0010n\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bo\u0010\u0005R\u0011\u0010p\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bq\u0010\u0005R\u0011\u0010r\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bs\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u008a\u0001"}, d2 = {"Lkotlin/time/Duration;", "", "rawValue", "", "constructor-impl", "(J)J", "value", "getValue-impl", "unitDiscriminator", "", "getUnitDiscriminator-impl", "(J)I", "isInNanos", "", "isInNanos-impl", "(J)Z", "isInMillis", "isInMillis-impl", "storageUnit", "Lkotlin/time/DurationUnit;", "getStorageUnit-impl", "(J)Lkotlin/time/DurationUnit;", "unaryMinus", "unaryMinus-UwyO8pc", "plus", "other", "plus-LRDsOJo", "(JJ)J", "addValuesMixedRanges", "thisMillis", "otherNanos", "addValuesMixedRanges-UwyO8pc", "(JJJ)J", "minus", "minus-LRDsOJo", "times", "scale", "times-UwyO8pc", "(JI)J", "", "(JD)J", "div", "div-UwyO8pc", "div-LRDsOJo", "(JJ)D", "truncateTo", "unit", "truncateTo-UwyO8pc$kotlin_stdlib", "(JLkotlin/time/DurationUnit;)J", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "isInfinite", "isInfinite-impl", "isFinite", "isFinite-impl", "absoluteValue", "getAbsoluteValue-UwyO8pc", "compareTo", "compareTo-LRDsOJo", "(JJ)I", "toComponents", ExifInterface.GPS_DIRECTION_TRUE, TSScheduleManager.ACTION_NAME, "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "hoursComponent", "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "toDouble", "toDouble-impl", "(JLkotlin/time/DurationUnit;)D", "toLong", "toLong-impl", "toInt", "toInt-impl", "(JLkotlin/time/DurationUnit;)I", "inWholeDays", "getInWholeDays-impl", "inWholeHours", "getInWholeHours-impl", "inWholeMinutes", "getInWholeMinutes-impl", "inWholeSeconds", "getInWholeSeconds-impl", "inWholeMilliseconds", "getInWholeMilliseconds-impl", "inWholeMicroseconds", "getInWholeMicroseconds-impl", "inWholeNanoseconds", "getInWholeNanoseconds-impl", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "appendFractional", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "appendFractional-impl", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "decimals", "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;", "toIsoString", "toIsoString-impl", "equals", "", "hashCode", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class Duration implements Comparable<Duration> {
    private final long rawValue;

    public static final Companion INSTANCE = new Companion(null);
    private static final long ZERO = m2814constructorimpl(0);
    private static final long INFINITE = DurationKt.durationOfMillis(DurationKt.MAX_MILLIS);
    private static final long NEG_INFINITE = DurationKt.durationOfMillis(-4611686018427387903L);

    public static final Duration m2812boximpl(long j) {
        return new Duration(j);
    }

    public static boolean m2818equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).getRawValue();
    }

    public static final boolean m2819equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static void getHoursComponent$annotations() {
    }

    public static void getMinutesComponent$annotations() {
    }

    public static void getNanosecondsComponent$annotations() {
    }

    public static void getSecondsComponent$annotations() {
    }

    private static final int m2833getUnitDiscriminatorimpl(long j) {
        return ((int) j) & 1;
    }

    private static final long m2834getValueimpl(long j) {
        return j >> 1;
    }

    public static int m2835hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    private static final boolean m2837isInMillisimpl(long j) {
        return (((int) j) & 1) == 1;
    }

    private static final boolean m2838isInNanosimpl(long j) {
        return (((int) j) & 1) == 0;
    }

    public static final boolean m2840isNegativeimpl(long j) {
        return j < 0;
    }

    public static final boolean m2841isPositiveimpl(long j) {
        return j > 0;
    }

    public boolean equals(Object other) {
        return m2818equalsimpl(this.rawValue, other);
    }

    public int hashCode() {
        return m2835hashCodeimpl(this.rawValue);
    }

    public final long getRawValue() {
        return this.rawValue;
    }

    @Override
    public int compareTo(Duration duration) {
        return m2859compareToLRDsOJo(duration.getRawValue());
    }

    private Duration(long j) {
        this.rawValue = j;
    }

    private static final DurationUnit m2832getStorageUnitimpl(long j) {
        return m2838isInNanosimpl(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    public static long m2814constructorimpl(long j) {
        if (!DurationJvmKt.getDurationAssertionsEnabled()) {
            return j;
        }
        if (m2838isInNanosimpl(j)) {
            long jM2834getValueimpl = m2834getValueimpl(j);
            if (-4611686018426999999L > jM2834getValueimpl || jM2834getValueimpl >= 4611686018427000000L) {
                throw new AssertionError(m2834getValueimpl(j) + " ns is out of nanoseconds range");
            }
            return j;
        }
        long jM2834getValueimpl2 = m2834getValueimpl(j);
        if (-4611686018427387903L > jM2834getValueimpl2 || jM2834getValueimpl2 >= Longs.MAX_POWER_OF_TWO) {
            throw new AssertionError(m2834getValueimpl(j) + " ms is out of milliseconds range");
        }
        long jM2834getValueimpl3 = m2834getValueimpl(j);
        if (-4611686018426L > jM2834getValueimpl3 || jM2834getValueimpl3 >= 4611686018427L) {
            return j;
        }
        throw new AssertionError(m2834getValueimpl(j) + " ms is denormalized");
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0007J\u0015\u00100\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0004\b2\u00103J\u0015\u00104\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0004\b5\u00103J\u0015\u00106\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0002\b7J\u0015\u00108\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0002\b9R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\u0005X\u0080\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007R\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u001a\u001a\u0004\b\u0017\u0010\u001bR\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u001c\u001a\u0004\b\u0017\u0010\u001dR\u001f\u0010\u001e\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0016\u001a\u0004\b \u0010\u0018R\u001f\u0010\u001e\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001bR\u001f\u0010\u001e\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u001c\u001a\u0004\b \u0010\u001dR\u001f\u0010!\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u0016\u001a\u0004\b#\u0010\u0018R\u001f\u0010!\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u001a\u001a\u0004\b#\u0010\u001bR\u001f\u0010!\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u001c\u001a\u0004\b#\u0010\u001dR\u001f\u0010$\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0016\u001a\u0004\b&\u0010\u0018R\u001f\u0010$\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u001a\u001a\u0004\b&\u0010\u001bR\u001f\u0010$\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u001c\u001a\u0004\b&\u0010\u001dR\u001f\u0010'\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u0016\u001a\u0004\b)\u0010\u0018R\u001f\u0010'\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u001a\u001a\u0004\b)\u0010\u001bR\u001f\u0010'\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u001c\u001a\u0004\b)\u0010\u001dR\u001f\u0010*\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u0016\u001a\u0004\b,\u0010\u0018R\u001f\u0010*\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u001a\u001a\u0004\b,\u0010\u001bR\u001f\u0010*\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u001c\u001a\u0004\b,\u0010\u001dR\u001f\u0010-\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u0016\u001a\u0004\b/\u0010\u0018R\u001f\u0010-\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u001a\u001a\u0004\b/\u0010\u001bR\u001f\u0010-\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u001c\u001a\u0004\b/\u0010\u001d¨\u0006:"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "<init>", "()V", "ZERO", "Lkotlin/time/Duration;", "getZERO-UwyO8pc", "()J", "J", "INFINITE", "getINFINITE-UwyO8pc", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "convert", "", "value", "sourceUnit", "Lkotlin/time/DurationUnit;", "targetUnit", "nanoseconds", "", "getNanoseconds-UwyO8pc$annotations", "(I)V", "getNanoseconds-UwyO8pc", "(I)J", "", "(J)V", "(J)J", "(D)V", "(D)J", "microseconds", "getMicroseconds-UwyO8pc$annotations", "getMicroseconds-UwyO8pc", "milliseconds", "getMilliseconds-UwyO8pc$annotations", "getMilliseconds-UwyO8pc", "seconds", "getSeconds-UwyO8pc$annotations", "getSeconds-UwyO8pc", "minutes", "getMinutes-UwyO8pc$annotations", "getMinutes-UwyO8pc", "hours", "getHours-UwyO8pc$annotations", "getHours-UwyO8pc", "days", "getDays-UwyO8pc$annotations", "getDays-UwyO8pc", "parse", "", "parse-UwyO8pc", "(Ljava/lang/String;)J", "parseIsoString", "parseIsoString-UwyO8pc", "parseOrNull", "parseOrNull-FghU774", "parseIsoStringOrNull", "parseIsoStringOrNull-FghU774", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void m2864getDaysUwyO8pc$annotations(double d) {
        }

        public static void m2865getDaysUwyO8pc$annotations(int i) {
        }

        public static void m2866getDaysUwyO8pc$annotations(long j) {
        }

        public static void m2870getHoursUwyO8pc$annotations(double d) {
        }

        public static void m2871getHoursUwyO8pc$annotations(int i) {
        }

        public static void m2872getHoursUwyO8pc$annotations(long j) {
        }

        public static void m2876getMicrosecondsUwyO8pc$annotations(double d) {
        }

        public static void m2877getMicrosecondsUwyO8pc$annotations(int i) {
        }

        public static void m2878getMicrosecondsUwyO8pc$annotations(long j) {
        }

        public static void m2882getMillisecondsUwyO8pc$annotations(double d) {
        }

        public static void m2883getMillisecondsUwyO8pc$annotations(int i) {
        }

        public static void m2884getMillisecondsUwyO8pc$annotations(long j) {
        }

        public static void m2888getMinutesUwyO8pc$annotations(double d) {
        }

        public static void m2889getMinutesUwyO8pc$annotations(int i) {
        }

        public static void m2890getMinutesUwyO8pc$annotations(long j) {
        }

        public static void m2894getNanosecondsUwyO8pc$annotations(double d) {
        }

        public static void m2895getNanosecondsUwyO8pc$annotations(int i) {
        }

        public static void m2896getNanosecondsUwyO8pc$annotations(long j) {
        }

        public static void m2900getSecondsUwyO8pc$annotations(double d) {
        }

        public static void m2901getSecondsUwyO8pc$annotations(int i) {
        }

        public static void m2902getSecondsUwyO8pc$annotations(long j) {
        }

        private Companion() {
        }

        public final long m2905getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        public final long m2903getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        public final long m2904getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.NEG_INFINITE;
        }

        public final double convert(double value, DurationUnit sourceUnit, DurationUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return DurationUnitKt.convertDurationUnit(value, sourceUnit, targetUnit);
        }

        private final long m2892getNanosecondsUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.NANOSECONDS);
        }

        private final long m2893getNanosecondsUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.NANOSECONDS);
        }

        private final long m2891getNanosecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.NANOSECONDS);
        }

        private final long m2874getMicrosecondsUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.MICROSECONDS);
        }

        private final long m2875getMicrosecondsUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.MICROSECONDS);
        }

        private final long m2873getMicrosecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.MICROSECONDS);
        }

        private final long m2880getMillisecondsUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.MILLISECONDS);
        }

        private final long m2881getMillisecondsUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
        }

        private final long m2879getMillisecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.MILLISECONDS);
        }

        private final long m2898getSecondsUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.SECONDS);
        }

        private final long m2899getSecondsUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.SECONDS);
        }

        private final long m2897getSecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.SECONDS);
        }

        private final long m2886getMinutesUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.MINUTES);
        }

        private final long m2887getMinutesUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.MINUTES);
        }

        private final long m2885getMinutesUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.MINUTES);
        }

        private final long m2868getHoursUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.HOURS);
        }

        private final long m2869getHoursUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.HOURS);
        }

        private final long m2867getHoursUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.HOURS);
        }

        private final long m2862getDaysUwyO8pc(int i) {
            return DurationKt.toDuration(i, DurationUnit.DAYS);
        }

        private final long m2863getDaysUwyO8pc(long j) {
            return DurationKt.toDuration(j, DurationUnit.DAYS);
        }

        private final long m2861getDaysUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.DAYS);
        }

        public final long m2906parseUwyO8pc(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.parseDuration(value, false);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid duration string format: '" + value + "'.", e);
            }
        }

        public final long m2907parseIsoStringUwyO8pc(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.parseDuration(value, true);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e);
            }
        }

        public final Duration m2909parseOrNullFghU774(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m2812boximpl(DurationKt.parseDuration(value, false));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public final Duration m2908parseIsoStringOrNullFghU774(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m2812boximpl(DurationKt.parseDuration(value, true));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    public static final long m2858unaryMinusUwyO8pc(long j) {
        return DurationKt.durationOf(-m2834getValueimpl(j), ((int) j) & 1);
    }

    public static final long m2843plusLRDsOJo(long j, long j2) {
        if (m2839isInfiniteimpl(j)) {
            if (m2836isFiniteimpl(j2) || (j2 ^ j) >= 0) {
                return j;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (m2839isInfiniteimpl(j2)) {
            return j2;
        }
        if ((((int) j) & 1) == (((int) j2) & 1)) {
            long jM2834getValueimpl = m2834getValueimpl(j) + m2834getValueimpl(j2);
            return m2838isInNanosimpl(j) ? DurationKt.durationOfNanosNormalized(jM2834getValueimpl) : DurationKt.durationOfMillisNormalized(jM2834getValueimpl);
        }
        if (m2837isInMillisimpl(j)) {
            return m2810addValuesMixedRangesUwyO8pc(j, m2834getValueimpl(j), m2834getValueimpl(j2));
        }
        return m2810addValuesMixedRangesUwyO8pc(j, m2834getValueimpl(j2), m2834getValueimpl(j));
    }

    private static final long m2810addValuesMixedRangesUwyO8pc(long j, long j2, long j3) {
        long jNanosToMillis = DurationKt.nanosToMillis(j3);
        long j4 = j2 + jNanosToMillis;
        if (-4611686018426L > j4 || j4 >= 4611686018427L) {
            return DurationKt.durationOfMillis(RangesKt.coerceIn(j4, -4611686018427387903L, DurationKt.MAX_MILLIS));
        }
        return DurationKt.durationOfNanos(DurationKt.millisToNanos(j4) + (j3 - DurationKt.millisToNanos(jNanosToMillis)));
    }

    public static final long m2842minusLRDsOJo(long j, long j2) {
        return m2843plusLRDsOJo(j, m2858unaryMinusUwyO8pc(j2));
    }

    public static final long m2845timesUwyO8pc(long j, int i) {
        if (m2839isInfiniteimpl(j)) {
            if (i != 0) {
                return i > 0 ? j : m2858unaryMinusUwyO8pc(j);
            }
            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
        }
        if (i == 0) {
            return ZERO;
        }
        long jM2834getValueimpl = m2834getValueimpl(j);
        long j2 = i;
        long j3 = jM2834getValueimpl * j2;
        if (!m2838isInNanosimpl(j)) {
            if (j3 / j2 == jM2834getValueimpl) {
                return DurationKt.durationOfMillis(RangesKt.coerceIn(j3, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
            }
            return MathKt.getSign(jM2834getValueimpl) * MathKt.getSign(i) > 0 ? INFINITE : NEG_INFINITE;
        }
        if (-2147483647L <= jM2834getValueimpl && jM2834getValueimpl < 2147483648L) {
            return DurationKt.durationOfNanos(j3);
        }
        if (j3 / j2 == jM2834getValueimpl) {
            return DurationKt.durationOfNanosNormalized(j3);
        }
        long jNanosToMillis = DurationKt.nanosToMillis(jM2834getValueimpl);
        long j4 = jNanosToMillis * j2;
        long jNanosToMillis2 = DurationKt.nanosToMillis((jM2834getValueimpl - DurationKt.millisToNanos(jNanosToMillis)) * j2) + j4;
        if (j4 / j2 != jNanosToMillis || (jNanosToMillis2 ^ j4) < 0) {
            return MathKt.getSign(jM2834getValueimpl) * MathKt.getSign(i) > 0 ? INFINITE : NEG_INFINITE;
        }
        return DurationKt.durationOfMillis(RangesKt.coerceIn(jNanosToMillis2, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
    }

    public static final long m2844timesUwyO8pc(long j, double d) {
        int iRoundToInt = MathKt.roundToInt(d);
        if (iRoundToInt == d) {
            return m2845timesUwyO8pc(j, iRoundToInt);
        }
        DurationUnit durationUnitM2832getStorageUnitimpl = m2832getStorageUnitimpl(j);
        return DurationKt.toDuration(m2850toDoubleimpl(j, durationUnitM2832getStorageUnitimpl) * d, durationUnitM2832getStorageUnitimpl);
    }

    public static final long m2817divUwyO8pc(long j, int i) {
        if (i == 0) {
            if (m2841isPositiveimpl(j)) {
                return INFINITE;
            }
            if (m2840isNegativeimpl(j)) {
                return NEG_INFINITE;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        }
        if (m2838isInNanosimpl(j)) {
            return DurationKt.durationOfNanos(m2834getValueimpl(j) / ((long) i));
        }
        if (m2839isInfiniteimpl(j)) {
            return m2845timesUwyO8pc(j, MathKt.getSign(i));
        }
        long j2 = i;
        long jM2834getValueimpl = m2834getValueimpl(j) / j2;
        if (-4611686018426L > jM2834getValueimpl || jM2834getValueimpl >= 4611686018427L) {
            return DurationKt.durationOfMillis(jM2834getValueimpl);
        }
        return DurationKt.durationOfNanos(DurationKt.millisToNanos(jM2834getValueimpl) + (DurationKt.millisToNanos(m2834getValueimpl(j) - (jM2834getValueimpl * j2)) / j2));
    }

    public static final long m2816divUwyO8pc(long j, double d) {
        int iRoundToInt = MathKt.roundToInt(d);
        if (iRoundToInt == d && iRoundToInt != 0) {
            return m2817divUwyO8pc(j, iRoundToInt);
        }
        DurationUnit durationUnitM2832getStorageUnitimpl = m2832getStorageUnitimpl(j);
        return DurationKt.toDuration(m2850toDoubleimpl(j, durationUnitM2832getStorageUnitimpl) / d, durationUnitM2832getStorageUnitimpl);
    }

    public static final double m2815divLRDsOJo(long j, long j2) {
        DurationUnit durationUnit = (DurationUnit) ComparisonsKt.maxOf(m2832getStorageUnitimpl(j), m2832getStorageUnitimpl(j2));
        return m2850toDoubleimpl(j, durationUnit) / m2850toDoubleimpl(j2, durationUnit);
    }

    public static final long m2857truncateToUwyO8pc$kotlin_stdlib(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit durationUnitM2832getStorageUnitimpl = m2832getStorageUnitimpl(j);
        if (unit.compareTo(durationUnitM2832getStorageUnitimpl) <= 0 || m2839isInfiniteimpl(j)) {
            return j;
        }
        return DurationKt.toDuration(m2834getValueimpl(j) - (m2834getValueimpl(j) % DurationUnitKt.convertDurationUnit(1L, unit, durationUnitM2832getStorageUnitimpl)), durationUnitM2832getStorageUnitimpl);
    }

    public static final boolean m2839isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    public static final boolean m2836isFiniteimpl(long j) {
        return !m2839isInfiniteimpl(j);
    }

    public static final long m2820getAbsoluteValueUwyO8pc(long j) {
        return m2840isNegativeimpl(j) ? m2858unaryMinusUwyO8pc(j) : j;
    }

    public int m2859compareToLRDsOJo(long j) {
        return m2813compareToLRDsOJo(this.rawValue, j);
    }

    public static int m2813compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m2840isNegativeimpl(j) ? -i : i;
    }

    public static final <T> T m2849toComponentsimpl(long j, Function5<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2822getInWholeDaysimpl(j)), Integer.valueOf(m2821getHoursComponentimpl(j)), Integer.valueOf(m2829getMinutesComponentimpl(j)), Integer.valueOf(m2831getSecondsComponentimpl(j)), Integer.valueOf(m2830getNanosecondsComponentimpl(j)));
    }

    public static final <T> T m2848toComponentsimpl(long j, Function4<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2823getInWholeHoursimpl(j)), Integer.valueOf(m2829getMinutesComponentimpl(j)), Integer.valueOf(m2831getSecondsComponentimpl(j)), Integer.valueOf(m2830getNanosecondsComponentimpl(j)));
    }

    public static final <T> T m2847toComponentsimpl(long j, Function3<? super Long, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2826getInWholeMinutesimpl(j)), Integer.valueOf(m2831getSecondsComponentimpl(j)), Integer.valueOf(m2830getNanosecondsComponentimpl(j)));
    }

    public static final <T> T m2846toComponentsimpl(long j, Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m2828getInWholeSecondsimpl(j)), Integer.valueOf(m2830getNanosecondsComponentimpl(j)));
    }

    public static final int m2821getHoursComponentimpl(long j) {
        if (m2839isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2823getInWholeHoursimpl(j) % ((long) 24));
    }

    public static final int m2829getMinutesComponentimpl(long j) {
        if (m2839isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2826getInWholeMinutesimpl(j) % ((long) 60));
    }

    public static final int m2831getSecondsComponentimpl(long j) {
        if (m2839isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2828getInWholeSecondsimpl(j) % ((long) 60));
    }

    public static final int m2830getNanosecondsComponentimpl(long j) {
        long jM2834getValueimpl;
        if (m2839isInfiniteimpl(j)) {
            return 0;
        }
        if (m2837isInMillisimpl(j)) {
            jM2834getValueimpl = DurationKt.millisToNanos(m2834getValueimpl(j) % ((long) 1000));
        } else {
            jM2834getValueimpl = m2834getValueimpl(j) % ((long) 1000000000);
        }
        return (int) jM2834getValueimpl;
    }

    public static final double m2850toDoubleimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt.convertDurationUnit(m2834getValueimpl(j), m2832getStorageUnitimpl(j), unit);
    }

    public static final long m2853toLongimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt.convertDurationUnit(m2834getValueimpl(j), m2832getStorageUnitimpl(j), unit);
    }

    public static final int m2851toIntimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (int) RangesKt.coerceIn(m2853toLongimpl(j, unit), -2147483648L, 2147483647L);
    }

    public static final long m2822getInWholeDaysimpl(long j) {
        return m2853toLongimpl(j, DurationUnit.DAYS);
    }

    public static final long m2823getInWholeHoursimpl(long j) {
        return m2853toLongimpl(j, DurationUnit.HOURS);
    }

    public static final long m2826getInWholeMinutesimpl(long j) {
        return m2853toLongimpl(j, DurationUnit.MINUTES);
    }

    public static final long m2828getInWholeSecondsimpl(long j) {
        return m2853toLongimpl(j, DurationUnit.SECONDS);
    }

    public static final long m2825getInWholeMillisecondsimpl(long j) {
        return (m2837isInMillisimpl(j) && m2836isFiniteimpl(j)) ? m2834getValueimpl(j) : m2853toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    public static final long m2824getInWholeMicrosecondsimpl(long j) {
        return m2853toLongimpl(j, DurationUnit.MICROSECONDS);
    }

    public static final long m2827getInWholeNanosecondsimpl(long j) {
        long jM2834getValueimpl = m2834getValueimpl(j);
        if (m2838isInNanosimpl(j)) {
            return jM2834getValueimpl;
        }
        if (jM2834getValueimpl > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (jM2834getValueimpl < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return DurationKt.millisToNanos(jM2834getValueimpl);
    }

    public String toString() {
        return m2854toStringimpl(this.rawValue);
    }

    public static String m2854toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean zM2840isNegativeimpl = m2840isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (zM2840isNegativeimpl) {
            sb.append(CoreConstants.DASH_CHAR);
        }
        long jM2820getAbsoluteValueUwyO8pc = m2820getAbsoluteValueUwyO8pc(j);
        long jM2822getInWholeDaysimpl = m2822getInWholeDaysimpl(jM2820getAbsoluteValueUwyO8pc);
        int iM2821getHoursComponentimpl = m2821getHoursComponentimpl(jM2820getAbsoluteValueUwyO8pc);
        int iM2829getMinutesComponentimpl = m2829getMinutesComponentimpl(jM2820getAbsoluteValueUwyO8pc);
        int iM2831getSecondsComponentimpl = m2831getSecondsComponentimpl(jM2820getAbsoluteValueUwyO8pc);
        int iM2830getNanosecondsComponentimpl = m2830getNanosecondsComponentimpl(jM2820getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = jM2822getInWholeDaysimpl != 0;
        boolean z2 = iM2821getHoursComponentimpl != 0;
        boolean z3 = iM2829getMinutesComponentimpl != 0;
        boolean z4 = (iM2831getSecondsComponentimpl == 0 && iM2830getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(jM2822getInWholeDaysimpl).append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(CardNumberHelper.DIVIDER);
            }
            sb.append(iM2821getHoursComponentimpl).append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(CardNumberHelper.DIVIDER);
            }
            sb.append(iM2829getMinutesComponentimpl).append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(CardNumberHelper.DIVIDER);
            }
            if (iM2831getSecondsComponentimpl != 0 || z || z2 || z3) {
                m2811appendFractionalimpl(j, sb, iM2831getSecondsComponentimpl, iM2830getNanosecondsComponentimpl, 9, "s", false);
            } else if (iM2830getNanosecondsComponentimpl >= 1000000) {
                m2811appendFractionalimpl(j, sb, iM2830getNanosecondsComponentimpl / 1000000, iM2830getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (iM2830getNanosecondsComponentimpl >= 1000) {
                m2811appendFractionalimpl(j, sb, iM2830getNanosecondsComponentimpl / 1000, iM2830getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(iM2830getNanosecondsComponentimpl).append("ns");
            }
            i = i4;
        }
        if (zM2840isNegativeimpl && i > 1) {
            sb.insert(1, CoreConstants.LEFT_PARENTHESIS_CHAR).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        }
        return sb.toString();
    }

    private static final void m2811appendFractionalimpl(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append(CoreConstants.DOT);
            String strPadStart = StringsKt.padStart(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = strPadStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strPadStart.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (z || i6 >= 3) {
                Intrinsics.checkNotNullExpressionValue(sb.append((CharSequence) strPadStart, 0, ((i4 + 3) / 3) * 3), "append(...)");
            } else {
                Intrinsics.checkNotNullExpressionValue(sb.append((CharSequence) strPadStart, 0, i6), "append(...)");
            }
        }
        sb.append(str);
    }

    public static String m2856toStringimpl$default(long j, DurationUnit durationUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return m2855toStringimpl(j, durationUnit, i);
    }

    public static final String m2855toStringimpl(long j, DurationUnit unit, int i) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (i < 0) {
            throw new IllegalArgumentException(("decimals must be not negative, but was " + i).toString());
        }
        double dM2850toDoubleimpl = m2850toDoubleimpl(j, unit);
        return Double.isInfinite(dM2850toDoubleimpl) ? String.valueOf(dM2850toDoubleimpl) : DurationJvmKt.formatToExactDecimals(dM2850toDoubleimpl, RangesKt.coerceAtMost(i, 12)) + DurationUnitKt.shortName(unit);
    }

    public static final String m2852toIsoStringimpl(long j) {
        StringBuilder sb = new StringBuilder();
        if (m2840isNegativeimpl(j)) {
            sb.append(CoreConstants.DASH_CHAR);
        }
        sb.append("PT");
        long jM2820getAbsoluteValueUwyO8pc = m2820getAbsoluteValueUwyO8pc(j);
        long jM2823getInWholeHoursimpl = m2823getInWholeHoursimpl(jM2820getAbsoluteValueUwyO8pc);
        int iM2829getMinutesComponentimpl = m2829getMinutesComponentimpl(jM2820getAbsoluteValueUwyO8pc);
        int iM2831getSecondsComponentimpl = m2831getSecondsComponentimpl(jM2820getAbsoluteValueUwyO8pc);
        int iM2830getNanosecondsComponentimpl = m2830getNanosecondsComponentimpl(jM2820getAbsoluteValueUwyO8pc);
        long j2 = m2839isInfiniteimpl(j) ? 9999999999999L : jM2823getInWholeHoursimpl;
        boolean z = true;
        boolean z2 = j2 != 0;
        boolean z3 = (iM2831getSecondsComponentimpl == 0 && iM2830getNanosecondsComponentimpl == 0) ? false : true;
        if (iM2829getMinutesComponentimpl == 0 && (!z3 || !z2)) {
            z = false;
        }
        if (z2) {
            sb.append(j2).append('H');
        }
        if (z) {
            sb.append(iM2829getMinutesComponentimpl).append('M');
        }
        if (z3 || (!z2 && !z)) {
            m2811appendFractionalimpl(j, sb, iM2831getSecondsComponentimpl, iM2830getNanosecondsComponentimpl, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        return sb.toString();
    }
}
