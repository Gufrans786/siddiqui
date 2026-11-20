package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0005H\u0014J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0086\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "<init>", "()V", "reading", "", "read", "plusAssign", "", TypedValues.TransitionType.S_DURATION, "Lkotlin/time/Duration;", "plusAssign-LRDsOJo", "(J)V", ViewProps.OVERFLOW, "overflow-LRDsOJo", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TestTimeSource extends AbstractLongTimeSource {
    private long reading;

    public TestTimeSource() {
        super(DurationUnit.NANOSECONDS);
        markNow();
    }

    @Override
    public long getReading() {
        return this.reading;
    }

    public final void m2926plusAssignLRDsOJo(long duration) {
        long jM2853toLongimpl = Duration.m2853toLongimpl(duration, getUnit());
        if (((jM2853toLongimpl - 1) | 1) != Long.MAX_VALUE) {
            long j = this.reading;
            long j2 = j + jM2853toLongimpl;
            if ((jM2853toLongimpl ^ j) >= 0 && (j ^ j2) < 0) {
                m2925overflowLRDsOJo(duration);
            }
            this.reading = j2;
            return;
        }
        long jM2817divUwyO8pc = Duration.m2817divUwyO8pc(duration, 2);
        if ((1 | (Duration.m2853toLongimpl(jM2817divUwyO8pc, getUnit()) - 1)) != Long.MAX_VALUE) {
            long j3 = this.reading;
            try {
                m2926plusAssignLRDsOJo(jM2817divUwyO8pc);
                m2926plusAssignLRDsOJo(Duration.m2842minusLRDsOJo(duration, jM2817divUwyO8pc));
                return;
            } catch (IllegalStateException e) {
                this.reading = j3;
                throw e;
            }
        }
        m2925overflowLRDsOJo(duration);
    }

    private final void m2925overflowLRDsOJo(long duration) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.reading + DurationUnitKt.shortName(getUnit()) + " is advanced by " + ((Object) Duration.m2854toStringimpl(duration)) + CoreConstants.DOT);
    }
}
