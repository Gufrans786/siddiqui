package nts;

import java.util.Collection;
import java.util.Iterator;

public abstract class AbstractC0575<OUT_T, IN_T> implements Collection<OUT_T> {

    public boolean f3202;

    public Collection f3203;

    public class C0576 extends AbstractC0475<OUT_T, IN_T> {
        public C0576(Iterator it, boolean z) {
            super(it, z);
        }

        @Override
        public OUT_T mo4634(IN_T in_t) {
            return (OUT_T) AbstractC0575.this.mo3666(in_t);
        }
    }

    public AbstractC0575(Collection collection, boolean z) {
        this.f3203 = collection;
        this.f3202 = z;
    }

    @Override
    public boolean add(OUT_T out_t) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0465.m5113(0, 40, 0));
        }
        return this.f3203.add(m5529(out_t));
    }

    @Override
    public boolean addAll(Collection<? extends OUT_T> collection) {
        throw new RuntimeException(C0465.m5113(40, 30, 0));
    }

    @Override
    public void clear() {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0465.m5113(70, 40, 59));
        }
        this.f3203.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.f3203.contains(m5529(obj));
    }

    @Override
    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isEmpty() {
        return this.f3203.isEmpty();
    }

    @Override
    public Iterator<OUT_T> iterator() {
        return new C0576(this.f3203.iterator(), this.f3202);
    }

    @Override
    public boolean remove(Object obj) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0465.m5113(110, 40, 9));
        }
        return this.f3203.remove(m5529(obj));
    }

    @Override
    public boolean removeAll(Collection collection) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0465.m5113(150, 40, 12));
        }
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (remove(it.next())) {
                z = true;
            }
        }
        return z;
    }

    @Override
    public boolean retainAll(Collection collection) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0465.m5113(190, 40, 28));
        }
        boolean z = false;
        for (OUT_T out_t : this) {
            if (!collection.contains(out_t) && remove(out_t)) {
                z = true;
            }
        }
        return z;
    }

    @Override
    public int size() {
        return this.f3203.size();
    }

    @Override
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    public abstract OUT_T mo3666(IN_T in_t);

    public final OUT_T m5528(IN_T in_t) {
        if (in_t == null) {
            return null;
        }
        return mo3666(in_t);
    }

    public final IN_T m5529(OUT_T out_t) {
        if (out_t == null) {
            return null;
        }
        return mo3667(out_t);
    }

    public abstract IN_T mo3667(OUT_T out_t);

    @Override
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < size()) {
            tArr = (T[]) new Object[size()];
        }
        Iterator<OUT_T> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            tArr[i] = it.next();
            i++;
        }
        if (tArr.length > size()) {
            tArr[size()] = null;
        }
        return tArr;
    }
}
