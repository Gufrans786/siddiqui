package nts;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public final class C0231 extends AbstractC0396<C0353, C0652> implements Cloneable {
    public C0231(List list, boolean z) {
        super(list, z);
    }

    @Override
    public boolean addAll(int i, Collection<? extends C0353> collection) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0558.m5481("\u0016(>(<(61?p# :<>4 <..wl#'24c+6d5#\u0018\u001cV\u0015\u0013\u0010\u0006P", 0, 40, 113));
        }
        Iterator<? extends C0353> it = collection.iterator();
        boolean z = it.hasNext();
        while (it.hasNext()) {
            int i2 = i + 1;
            try {
                add(i, (C0353) it.next().clone());
                i = i2;
            } catch (CloneNotSupportedException unused) {
                i += 2;
                add(i2, it.next());
            }
        }
        return z;
    }

    public Object clone() throws CloneNotSupportedException {
        Vector vector = new Vector();
        for (int i = 0; i < super.size(); i++) {
            vector.add(get(i).f1870.clone());
        }
        return new C0231(vector, this.f3202);
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public Object mo3666(Object obj) {
        return new C0353((C0652) obj);
    }

    @Override
    public Object mo3667(Object obj) {
        return ((C0353) obj).f1870;
    }

    @Override
    public boolean addAll(Collection<? extends C0353> collection) {
        return addAll(super.size(), collection);
    }
}
