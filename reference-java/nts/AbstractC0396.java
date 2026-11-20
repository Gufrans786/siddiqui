package nts;

import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;

public abstract class AbstractC0396<OUT_T, IN_T> extends AbstractC0575<OUT_T, IN_T> implements List<OUT_T> {

    public List f2067;

    public class C0397 extends AbstractC0396<OUT_T, IN_T> {
        public C0397(List list, boolean z) {
            super(list, z);
        }

        @Override
        public OUT_T mo3666(IN_T in_t) {
            return AbstractC0396.this.mo3666(in_t);
        }

        @Override
        public IN_T mo3667(OUT_T out_t) {
            return AbstractC0396.this.mo3667(out_t);
        }
    }

    public class C0398 extends AbstractC0617<OUT_T, IN_T> {
        public C0398(ListIterator listIterator, boolean z) {
            super(listIterator, z);
        }

        @Override
        public OUT_T mo4634(IN_T in_t) {
            return AbstractC0396.this.mo3666(in_t);
        }
    }

    public AbstractC0396(List list, boolean z) {
        super(list, z);
        this.f2067 = list;
    }

    @Override
    public void add(int i, OUT_T out_t) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0465.m5114(0, 40, 117));
        }
        this.f2067.add(i, m5529(out_t));
    }

    public boolean addAll(int i, Collection<? extends OUT_T> collection) {
        throw new RuntimeException(C0465.m5114(40, 30, RNMBXStyleValue.InterpolationModeIdentity));
    }

    @Override
    public OUT_T get(int i) {
        return (OUT_T) m5528(this.f2067.get(i));
    }

    @Override
    public int indexOf(Object obj) {
        return this.f2067.indexOf(m5529(obj));
    }

    @Override
    public int lastIndexOf(Object obj) {
        return this.f2067.lastIndexOf(m5529(obj));
    }

    @Override
    public ListIterator<OUT_T> listIterator(int i) {
        return new C0398(this.f2067.listIterator(i), this.f3202);
    }

    @Override
    public OUT_T remove(int i) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0465.m5114(70, 40, 118));
        }
        return (OUT_T) m5528(this.f2067.remove(i));
    }

    @Override
    public OUT_T set(int i, OUT_T out_t) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0465.m5114(110, 40, 24));
        }
        return (OUT_T) m5528(this.f2067.set(i, m5529(out_t)));
    }

    @Override
    public List<OUT_T> subList(int i, int i2) {
        return new C0397(this.f2067.subList(i, i2), this.f3202);
    }

    @Override
    public ListIterator<OUT_T> listIterator() {
        return listIterator(0);
    }
}
