package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByte$$ExternalSyntheticBackport0;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\fH\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\rH\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;", "Lkotlinx/serialization/json/internal/Composer;", "writer", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "forceQuoting", "", "<init>", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;Z)V", "print", "", "v", "", "", "", "", "kotlinx-serialization-json"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ComposerForUnsignedNumbers extends Composer {
    private final boolean forceQuoting;

    public ComposerForUnsignedNumbers(InternalJsonWriter writer, boolean z) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.forceQuoting = z;
    }

    @Override
    public void print(int v) {
        boolean z = this.forceQuoting;
        int iM1564constructorimpl = UInt.m1564constructorimpl(v);
        if (z) {
            printQuoted(UByte$$ExternalSyntheticBackport0.m1533m(iM1564constructorimpl, 10));
        } else {
            print(UByte$$ExternalSyntheticBackport0.m1533m(iM1564constructorimpl, 10));
        }
    }

    @Override
    public void print(long v) {
        boolean z = this.forceQuoting;
        long jM1643constructorimpl = ULong.m1643constructorimpl(v);
        if (z) {
            printQuoted(UByte$$ExternalSyntheticBackport0.m(jM1643constructorimpl, 10));
        } else {
            print(UByte$$ExternalSyntheticBackport0.m(jM1643constructorimpl, 10));
        }
    }

    @Override
    public void print(byte v) {
        boolean z = this.forceQuoting;
        String strM1525toStringimpl = UByte.m1525toStringimpl(UByte.m1481constructorimpl(v));
        if (z) {
            printQuoted(strM1525toStringimpl);
        } else {
            print(strM1525toStringimpl);
        }
    }

    @Override
    public void print(short v) {
        boolean z = this.forceQuoting;
        String strM1794toStringimpl = UShort.m1794toStringimpl(UShort.m1750constructorimpl(v));
        if (z) {
            printQuoted(strM1794toStringimpl);
        } else {
            print(strM1794toStringimpl);
        }
    }
}
