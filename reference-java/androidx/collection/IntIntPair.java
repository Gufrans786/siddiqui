package androidx.collection;

import ch.qos.logback.core.CoreConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\u0005\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u0003H\u0086\n¢\u0006\u0004\b\u0010\u0010\u000bJ\u0010\u0010\u0011\u001a\u00020\u0003H\u0086\n¢\u0006\u0004\b\u0012\u0010\u000bJ\u001a\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u000bJ\u000f\u0010\u001a\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000b\u0088\u0001\u0007\u0092\u0001\u00020\b¨\u0006\u001e"}, d2 = {"Landroidx/collection/IntIntPair;", "", "first", "", "second", "constructor-impl", "(II)J", "packedValue", "", "(J)J", "getFirst-impl", "(J)I", "getPackedValue$annotations", "()V", "getSecond-impl", "component1", "component1-impl", "component2", "component2-impl", "equals", "", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
public final class IntIntPair {
    public final long packedValue;

    public static final IntIntPair m24boximpl(long j) {
        return new IntIntPair(j);
    }

    public static final int m25component1impl(long j) {
        return (int) (j >> 32);
    }

    public static final int m26component2impl(long j) {
        return (int) (j & 4294967295L);
    }

    public static long m28constructorimpl(long j) {
        return j;
    }

    public static boolean m29equalsimpl(long j, Object obj) {
        return (obj instanceof IntIntPair) && j == ((IntIntPair) obj).getPackedValue();
    }

    public static final boolean m30equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static final int m31getFirstimpl(long j) {
        return (int) (j >> 32);
    }

    public static void getPackedValue$annotations() {
    }

    public static final int m32getSecondimpl(long j) {
        return (int) (j & 4294967295L);
    }

    public static int m33hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    public boolean equals(Object obj) {
        return m29equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m33hashCodeimpl(this.packedValue);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    private IntIntPair(long j) {
        this.packedValue = j;
    }

    public static long m27constructorimpl(int i, int i2) {
        return m28constructorimpl((((long) i2) & 4294967295L) | (((long) i) << 32));
    }

    public static String m34toStringimpl(long j) {
        return "(" + m31getFirstimpl(j) + ", " + m32getSecondimpl(j) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public String toString() {
        return m34toStringimpl(this.packedValue);
    }
}
