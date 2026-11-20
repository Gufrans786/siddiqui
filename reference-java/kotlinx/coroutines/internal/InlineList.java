package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081@\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0007\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\b\u0010\tJ$\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\rH\u0086\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0002X\u0082\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0003\u0092\u0001\u0004\u0018\u00010\u0002¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/internal/InlineList;", ExifInterface.LONGITUDE_EAST, "", "holder", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "plus", "element", "plus-FjFbRPM", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "forEachReversed", "", TSScheduleManager.ACTION_NAME, "Lkotlin/Function1;", "forEachReversed-impl", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "equals", "", "other", "hashCode", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public final class InlineList<E> {
    private final Object holder;

    public static final InlineList m3026boximpl(Object obj) {
        return new InlineList(obj);
    }

    public static <E> Object m3027constructorimpl(Object obj) {
        return obj;
    }

    public static boolean m3029equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof InlineList) && Intrinsics.areEqual(obj, ((InlineList) obj2).getHolder());
    }

    public static final boolean m3030equalsimpl0(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    public static int m3032hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static String m3034toStringimpl(Object obj) {
        return "InlineList(holder=" + obj + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public boolean equals(Object other) {
        return m3029equalsimpl(this.holder, other);
    }

    public int hashCode() {
        return m3032hashCodeimpl(this.holder);
    }

    public String toString() {
        return m3034toStringimpl(this.holder);
    }

    public final Object getHolder() {
        return this.holder;
    }

    private InlineList(Object obj) {
        this.holder = obj;
    }

    public static Object m3028constructorimpl$default(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return m3027constructorimpl(obj);
    }

    public static final Object m3033plusFjFbRPM(Object obj, E e) {
        if (DebugKt.getASSERTIONS_ENABLED() && (e instanceof List)) {
            throw new AssertionError();
        }
        if (obj == null) {
            return m3027constructorimpl(e);
        }
        if (obj instanceof ArrayList) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
            ((ArrayList) obj).add(e);
            return m3027constructorimpl(obj);
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(e);
        return m3027constructorimpl(arrayList);
    }

    public static final void m3031forEachReversedimpl(Object obj, Function1<? super E, Unit> function1) {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof ArrayList)) {
            function1.invoke(obj);
            return;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
        ArrayList arrayList = (ArrayList) obj;
        int size = arrayList.size();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            } else {
                function1.invoke((Object) arrayList.get(size));
            }
        }
    }
}
