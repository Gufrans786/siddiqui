package kotlin.ranges;

import ch.qos.logback.classic.pattern.CallerDataConverter;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001d2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00020\u00030\u0004:\u0001\u001dB\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0015\u001a\u00020\u0011H\u0016J\u0013\u0010\u0016\u001a\u00020\u00112\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\nR\u001a\u0010\f\u001a\u00020\u00038VX\u0097\u0004¢\u0006\f\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\n¨\u0006\u001e"}, d2 = {"Lkotlin/ranges/ULongRange;", "Lkotlin/ranges/ULongProgression;", "Lkotlin/ranges/ClosedRange;", "Lkotlin/ULong;", "Lkotlin/ranges/OpenEndRange;", "start", "endInclusive", "<init>", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getStart-s-VKNKU", "()J", "getEndInclusive-s-VKNKU", "endExclusive", "getEndExclusive-s-VKNKU$annotations", "()V", "getEndExclusive-s-VKNKU", "contains", "", "value", "contains-VKZWuLQ", "(J)Z", "isEmpty", "equals", "other", "", "hashCode", "", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ULongRange extends ULongProgression implements ClosedRange<ULong>, OpenEndRange<ULong> {

    public static final Companion INSTANCE = new Companion(null);
    private static final ULongRange EMPTY = new ULongRange(-1, 0, null);

    public ULongRange(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    @Deprecated(message = "Can throw an exception when it's impossible to represent the value with ULong type, for example, when the range includes MAX_VALUE. It's recommended to use 'endInclusive' property that doesn't throw.")
    public static void m2713getEndExclusivesVKNKU$annotations() {
    }

    @Override
    public boolean contains(Comparable comparable) {
        return m2714containsVKZWuLQ(((ULong) comparable).getData());
    }

    @Override
    public Comparable getEndExclusive() {
        return ULong.m1637boximpl(m2715getEndExclusivesVKNKU());
    }

    @Override
    public Comparable getEndInclusive() {
        return ULong.m1637boximpl(m2716getEndInclusivesVKNKU());
    }

    @Override
    public Comparable getStart() {
        return ULong.m1637boximpl(m2717getStartsVKNKU());
    }

    private ULongRange(long j, long j2) {
        super(j, j2, 1L, null);
    }

    public long m2717getStartsVKNKU() {
        return getFirst();
    }

    public long m2716getEndInclusivesVKNKU() {
        return getLast();
    }

    public long m2715getEndExclusivesVKNKU() {
        if (getLast() == -1) {
            throw new IllegalStateException("Cannot return the exclusive upper bound of a range that includes MAX_VALUE.".toString());
        }
        return ULong.m1643constructorimpl(getLast() + ULong.m1643constructorimpl(((long) 1) & 4294967295L));
    }

    public boolean m2714containsVKZWuLQ(long value) {
        return Long.compare(getFirst() ^ Long.MIN_VALUE, value ^ Long.MIN_VALUE) <= 0 && Long.compare(value ^ Long.MIN_VALUE, getLast() ^ Long.MIN_VALUE) <= 0;
    }

    @Override
    public boolean isEmpty() {
        return Long.compare(getFirst() ^ Long.MIN_VALUE, getLast() ^ Long.MIN_VALUE) > 0;
    }

    @Override
    public boolean equals(Object other) {
        if (!(other instanceof ULongRange)) {
            return false;
        }
        if (isEmpty() && ((ULongRange) other).isEmpty()) {
            return true;
        }
        ULongRange uLongRange = (ULongRange) other;
        return getFirst() == uLongRange.getFirst() && getLast() == uLongRange.getLast();
    }

    @Override
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((int) ULong.m1643constructorimpl(getFirst() ^ ULong.m1643constructorimpl(getFirst() >>> 32))) * 31) + ((int) ULong.m1643constructorimpl(getLast() ^ ULong.m1643constructorimpl(getLast() >>> 32)));
    }

    @Override
    public String toString() {
        return ((Object) ULong.m1689toStringimpl(getFirst())) + CallerDataConverter.DEFAULT_RANGE_DELIMITER + ((Object) ULong.m1689toStringimpl(getLast()));
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/ranges/ULongRange$Companion;", "", "<init>", "()V", "EMPTY", "Lkotlin/ranges/ULongRange;", "getEMPTY", "()Lkotlin/ranges/ULongRange;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ULongRange getEMPTY() {
            return ULongRange.EMPTY;
        }
    }
}
