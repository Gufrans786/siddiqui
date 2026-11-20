package kotlin.comparisons;

import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\u001f\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\fH\u0007¢\u0006\u0004\b\r\u0010\u000e\u001a(\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a(\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a(\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\b¢\u0006\u0004\b\u0014\u0010\u0015\u001a(\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\b¢\u0006\u0004\b\u0016\u0010\u0017\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0018\u001a\u00020\u0019\"\u00020\u0001H\u0007¢\u0006\u0004\b\u001a\u0010\u001b\u001a#\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\n\u0010\u0018\u001a\u00020\u001c\"\u00020\u0006H\u0007¢\u0006\u0004\b\u001d\u0010\u001e\u001a#\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u0018\u001a\u00020\u001f\"\u00020\tH\u0007¢\u0006\u0004\b \u0010!\u001a#\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\n\u0010\u0018\u001a\u00020\"\"\u00020\fH\u0007¢\u0006\u0004\b#\u0010$\u001a\u001f\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b&\u0010\u0005\u001a\u001f\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0007¢\u0006\u0004\b'\u0010\b\u001a\u001f\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0007¢\u0006\u0004\b(\u0010\u000b\u001a\u001f\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\fH\u0007¢\u0006\u0004\b)\u0010\u000e\u001a(\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b*\u0010\u0011\u001a(\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\b¢\u0006\u0004\b+\u0010\u0013\u001a(\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\b¢\u0006\u0004\b,\u0010\u0015\u001a(\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\b¢\u0006\u0004\b-\u0010\u0017\u001a#\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0018\u001a\u00020\u0019\"\u00020\u0001H\u0007¢\u0006\u0004\b.\u0010\u001b\u001a#\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\n\u0010\u0018\u001a\u00020\u001c\"\u00020\u0006H\u0007¢\u0006\u0004\b/\u0010\u001e\u001a#\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u0018\u001a\u00020\u001f\"\u00020\tH\u0007¢\u0006\u0004\b0\u0010!\u001a#\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\n\u0010\u0018\u001a\u00020\"\"\u00020\fH\u0007¢\u0006\u0004\b1\u0010$¨\u00062"}, d2 = {"maxOf", "Lkotlin/UInt;", "a", "b", "maxOf-J1ME1BU", "(II)I", "Lkotlin/ULong;", "maxOf-eb3DHEI", "(JJ)J", "Lkotlin/UByte;", "maxOf-Kr8caGY", "(BB)B", "Lkotlin/UShort;", "maxOf-5PvTz6A", "(SS)S", "c", "maxOf-WZ9TVnA", "(III)I", "maxOf-sambcqE", "(JJJ)J", "maxOf-b33U2AM", "(BBB)B", "maxOf-VKSA0NQ", "(SSS)S", "other", "Lkotlin/UIntArray;", "maxOf-Md2H83M", "(I[I)I", "Lkotlin/ULongArray;", "maxOf-R03FKyM", "(J[J)J", "Lkotlin/UByteArray;", "maxOf-Wr6uiD8", "(B[B)B", "Lkotlin/UShortArray;", "maxOf-t1qELG4", "(S[S)S", "minOf", "minOf-J1ME1BU", "minOf-eb3DHEI", "minOf-Kr8caGY", "minOf-5PvTz6A", "minOf-WZ9TVnA", "minOf-sambcqE", "minOf-b33U2AM", "minOf-VKSA0NQ", "minOf-Md2H83M", "minOf-R03FKyM", "minOf-Wr6uiD8", "minOf-t1qELG4", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/comparisons/UComparisonsKt")
public class UComparisonsKt___UComparisonsKt {
    public static final int m2656maxOfJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) >= 0 ? i : i2;
    }

    public static final long m2664maxOfeb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) >= 0 ? j : j2;
    }

    public static final byte m2657maxOfKr8caGY(byte b, byte b2) {
        return Intrinsics.compare(b & 255, b2 & 255) >= 0 ? b : b2;
    }

    public static final short m2655maxOf5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) >= 0 ? s : s2;
    }

    private static final int m2661maxOfWZ9TVnA(int i, int i2, int i3) {
        return UComparisonsKt.m2656maxOfJ1ME1BU(i, UComparisonsKt.m2656maxOfJ1ME1BU(i2, i3));
    }

    private static final long m2665maxOfsambcqE(long j, long j2, long j3) {
        return UComparisonsKt.m2664maxOfeb3DHEI(j, UComparisonsKt.m2664maxOfeb3DHEI(j2, j3));
    }

    private static final byte m2663maxOfb33U2AM(byte b, byte b2, byte b3) {
        return UComparisonsKt.m2657maxOfKr8caGY(b, UComparisonsKt.m2657maxOfKr8caGY(b2, b3));
    }

    private static final short m2660maxOfVKSA0NQ(short s, short s2, short s3) {
        return UComparisonsKt.m2655maxOf5PvTz6A(s, UComparisonsKt.m2655maxOf5PvTz6A(s2, s3));
    }

    public static final int m2658maxOfMd2H83M(int i, int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM1625getSizeimpl = UIntArray.m1625getSizeimpl(other);
        for (int i2 = 0; i2 < iM1625getSizeimpl; i2++) {
            i = UComparisonsKt.m2656maxOfJ1ME1BU(i, UIntArray.m1624getpVg5ArA(other, i2));
        }
        return i;
    }

    public static final long m2659maxOfR03FKyM(long j, long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM1704getSizeimpl = ULongArray.m1704getSizeimpl(other);
        for (int i = 0; i < iM1704getSizeimpl; i++) {
            j = UComparisonsKt.m2664maxOfeb3DHEI(j, ULongArray.m1703getsVKNKU(other, i));
        }
        return j;
    }

    public static final byte m2662maxOfWr6uiD8(byte b, byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM1546getSizeimpl = UByteArray.m1546getSizeimpl(other);
        for (int i = 0; i < iM1546getSizeimpl; i++) {
            b = UComparisonsKt.m2657maxOfKr8caGY(b, UByteArray.m1545getw2LRezQ(other, i));
        }
        return b;
    }

    public static final short m2666maxOft1qELG4(short s, short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM1809getSizeimpl = UShortArray.m1809getSizeimpl(other);
        for (int i = 0; i < iM1809getSizeimpl; i++) {
            s = UComparisonsKt.m2655maxOf5PvTz6A(s, UShortArray.m1808getMh2AYeg(other, i));
        }
        return s;
    }

    public static final int m2668minOfJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) <= 0 ? i : i2;
    }

    public static final long m2676minOfeb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) <= 0 ? j : j2;
    }

    public static final byte m2669minOfKr8caGY(byte b, byte b2) {
        return Intrinsics.compare(b & 255, b2 & 255) <= 0 ? b : b2;
    }

    public static final short m2667minOf5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) <= 0 ? s : s2;
    }

    private static final int m2673minOfWZ9TVnA(int i, int i2, int i3) {
        return UComparisonsKt.m2668minOfJ1ME1BU(i, UComparisonsKt.m2668minOfJ1ME1BU(i2, i3));
    }

    private static final long m2677minOfsambcqE(long j, long j2, long j3) {
        return UComparisonsKt.m2676minOfeb3DHEI(j, UComparisonsKt.m2676minOfeb3DHEI(j2, j3));
    }

    private static final byte m2675minOfb33U2AM(byte b, byte b2, byte b3) {
        return UComparisonsKt.m2669minOfKr8caGY(b, UComparisonsKt.m2669minOfKr8caGY(b2, b3));
    }

    private static final short m2672minOfVKSA0NQ(short s, short s2, short s3) {
        return UComparisonsKt.m2667minOf5PvTz6A(s, UComparisonsKt.m2667minOf5PvTz6A(s2, s3));
    }

    public static final int m2670minOfMd2H83M(int i, int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM1625getSizeimpl = UIntArray.m1625getSizeimpl(other);
        for (int i2 = 0; i2 < iM1625getSizeimpl; i2++) {
            i = UComparisonsKt.m2668minOfJ1ME1BU(i, UIntArray.m1624getpVg5ArA(other, i2));
        }
        return i;
    }

    public static final long m2671minOfR03FKyM(long j, long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM1704getSizeimpl = ULongArray.m1704getSizeimpl(other);
        for (int i = 0; i < iM1704getSizeimpl; i++) {
            j = UComparisonsKt.m2676minOfeb3DHEI(j, ULongArray.m1703getsVKNKU(other, i));
        }
        return j;
    }

    public static final byte m2674minOfWr6uiD8(byte b, byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM1546getSizeimpl = UByteArray.m1546getSizeimpl(other);
        for (int i = 0; i < iM1546getSizeimpl; i++) {
            b = UComparisonsKt.m2669minOfKr8caGY(b, UByteArray.m1545getw2LRezQ(other, i));
        }
        return b;
    }

    public static final short m2678minOft1qELG4(short s, short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iM1809getSizeimpl = UShortArray.m1809getSizeimpl(other);
        for (int i = 0; i < iM1809getSizeimpl; i++) {
            s = UComparisonsKt.m2667minOf5PvTz6A(s, UShortArray.m1808getMh2AYeg(other, i));
        }
        return s;
    }
}
