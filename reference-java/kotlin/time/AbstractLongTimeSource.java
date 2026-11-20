package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.CoreConstants;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u00002\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH$J\b\u0010\u000f\u001a\u00020\tH\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Lkotlin/time/AbstractLongTimeSource;", "Lkotlin/time/TimeSource$WithComparableMarks;", "unit", "Lkotlin/time/DurationUnit;", "<init>", "(Lkotlin/time/DurationUnit;)V", "getUnit", "()Lkotlin/time/DurationUnit;", "read", "", "zero", "getZero", "()J", "zero$delegate", "Lkotlin/Lazy;", "adjustedRead", "markNow", "Lkotlin/time/ComparableTimeMark;", "LongTimeMark", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractLongTimeSource implements TimeSource.WithComparableMarks {
    private final DurationUnit unit;

    private final Lazy zero;

    public abstract long read();

    public AbstractLongTimeSource(DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.unit = unit;
        this.zero = LazyKt.lazy(new Function0() {
            @Override
            public final Object invoke() {
                return Long.valueOf(this.f$0.read());
            }
        });
    }

    protected final DurationUnit getUnit() {
        return this.unit;
    }

    private final long getZero() {
        return ((Number) this.zero.getValue()).longValue();
    }

    public final long adjustedRead() {
        return read() - getZero();
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0001H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0013\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u001d"}, d2 = {"Lkotlin/time/AbstractLongTimeSource$LongTimeMark;", "Lkotlin/time/ComparableTimeMark;", "startedAt", "", "timeSource", "Lkotlin/time/AbstractLongTimeSource;", "offset", "Lkotlin/time/Duration;", "<init>", "(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "elapsedNow", "elapsedNow-UwyO8pc", "()J", "plus", TypedValues.TransitionType.S_DURATION, "plus-LRDsOJo", "(J)Lkotlin/time/ComparableTimeMark;", "minus", "other", "minus-UwyO8pc", "(Lkotlin/time/ComparableTimeMark;)J", "equals", "", "", "hashCode", "", "toString", "", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private static final class LongTimeMark implements ComparableTimeMark {
        private final long offset;
        private final long startedAt;
        private final AbstractLongTimeSource timeSource;

        public LongTimeMark(long j, AbstractLongTimeSource abstractLongTimeSource, long j2, DefaultConstructorMarker defaultConstructorMarker) {
            this(j, abstractLongTimeSource, j2);
        }

        private LongTimeMark(long j, AbstractLongTimeSource timeSource, long j2) {
            Intrinsics.checkNotNullParameter(timeSource, "timeSource");
            this.startedAt = j;
            this.timeSource = timeSource;
            this.offset = j2;
        }

        @Override
        public int compareTo(ComparableTimeMark comparableTimeMark) {
            return ComparableTimeMark.DefaultImpls.compareTo(this, comparableTimeMark);
        }

        @Override
        public boolean hasNotPassedNow() {
            return ComparableTimeMark.DefaultImpls.hasNotPassedNow(this);
        }

        @Override
        public boolean hasPassedNow() {
            return ComparableTimeMark.DefaultImpls.hasPassedNow(this);
        }

        @Override
        public ComparableTimeMark mo2805minusLRDsOJo(long j) {
            return ComparableTimeMark.DefaultImpls.m2809minusLRDsOJo(this, j);
        }

        @Override
        public long mo2804elapsedNowUwyO8pc() {
            return Duration.m2842minusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(this.timeSource.adjustedRead(), this.startedAt, this.timeSource.getUnit()), this.offset);
        }

        @Override
        public ComparableTimeMark mo2807plusLRDsOJo(long duration) {
            DurationUnit unit = this.timeSource.getUnit();
            if (Duration.m2839isInfiniteimpl(duration)) {
                return new LongTimeMark(LongSaturatedMathKt.m2919saturatingAddNuflL3o(this.startedAt, unit, duration), this.timeSource, Duration.INSTANCE.m2905getZEROUwyO8pc(), null);
            }
            long jM2857truncateToUwyO8pc$kotlin_stdlib = Duration.m2857truncateToUwyO8pc$kotlin_stdlib(duration, unit);
            long jM2843plusLRDsOJo = Duration.m2843plusLRDsOJo(Duration.m2842minusLRDsOJo(duration, jM2857truncateToUwyO8pc$kotlin_stdlib), this.offset);
            long jM2919saturatingAddNuflL3o = LongSaturatedMathKt.m2919saturatingAddNuflL3o(this.startedAt, unit, jM2857truncateToUwyO8pc$kotlin_stdlib);
            long jM2857truncateToUwyO8pc$kotlin_stdlib2 = Duration.m2857truncateToUwyO8pc$kotlin_stdlib(jM2843plusLRDsOJo, unit);
            long jM2919saturatingAddNuflL3o2 = LongSaturatedMathKt.m2919saturatingAddNuflL3o(jM2919saturatingAddNuflL3o, unit, jM2857truncateToUwyO8pc$kotlin_stdlib2);
            long jM2842minusLRDsOJo = Duration.m2842minusLRDsOJo(jM2843plusLRDsOJo, jM2857truncateToUwyO8pc$kotlin_stdlib2);
            long jM2827getInWholeNanosecondsimpl = Duration.m2827getInWholeNanosecondsimpl(jM2842minusLRDsOJo);
            if (jM2919saturatingAddNuflL3o2 != 0 && jM2827getInWholeNanosecondsimpl != 0 && (jM2919saturatingAddNuflL3o2 ^ jM2827getInWholeNanosecondsimpl) < 0) {
                long duration2 = DurationKt.toDuration(MathKt.getSign(jM2827getInWholeNanosecondsimpl), unit);
                jM2919saturatingAddNuflL3o2 = LongSaturatedMathKt.m2919saturatingAddNuflL3o(jM2919saturatingAddNuflL3o2, unit, duration2);
                jM2842minusLRDsOJo = Duration.m2842minusLRDsOJo(jM2842minusLRDsOJo, duration2);
            }
            if ((1 | (jM2919saturatingAddNuflL3o2 - 1)) == Long.MAX_VALUE) {
                jM2842minusLRDsOJo = Duration.INSTANCE.m2905getZEROUwyO8pc();
            }
            return new LongTimeMark(jM2919saturatingAddNuflL3o2, this.timeSource, jM2842minusLRDsOJo, null);
        }

        @Override
        public long mo2806minusUwyO8pc(ComparableTimeMark other) {
            Intrinsics.checkNotNullParameter(other, "other");
            if (other instanceof LongTimeMark) {
                LongTimeMark longTimeMark = (LongTimeMark) other;
                if (Intrinsics.areEqual(this.timeSource, longTimeMark.timeSource)) {
                    return Duration.m2843plusLRDsOJo(LongSaturatedMathKt.saturatingOriginsDiff(this.startedAt, longTimeMark.startedAt, this.timeSource.getUnit()), Duration.m2842minusLRDsOJo(this.offset, longTimeMark.offset));
                }
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + this + " and " + other);
        }

        @Override
        public boolean equals(Object other) {
            return (other instanceof LongTimeMark) && Intrinsics.areEqual(this.timeSource, ((LongTimeMark) other).timeSource) && Duration.m2819equalsimpl0(mo2806minusUwyO8pc((ComparableTimeMark) other), Duration.INSTANCE.m2905getZEROUwyO8pc());
        }

        @Override
        public int hashCode() {
            return (Duration.m2835hashCodeimpl(this.offset) * 37) + Long.hashCode(this.startedAt);
        }

        public String toString() {
            return "LongTimeMark(" + this.startedAt + DurationUnitKt.shortName(this.timeSource.getUnit()) + " + " + ((Object) Duration.m2854toStringimpl(this.offset)) + ", " + this.timeSource + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
    }

    @Override
    public ComparableTimeMark markNow() {
        return new LongTimeMark(adjustedRead(), this, Duration.INSTANCE.m2905getZEROUwyO8pc(), null);
    }
}
