package nts;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public final class C0197 extends AbstractC0396<C0428, C0488> implements Cloneable {
    public C0197(List list, boolean z) {
        super(list, z);
    }

    @Override
    public boolean addAll(int i, Collection<? extends C0428> collection) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0558.m5481("xFPFRFX_Q\u001eMNTRPZNR@@\u0019\u0002MI\\Z\rEX\n[Mvr8{}~h>", 0, 40, 31));
        }
        Iterator<? extends C0428> it = collection.iterator();
        boolean z = it.hasNext();
        while (it.hasNext()) {
            int i2 = i + 1;
            try {
                add(i, (C0428) it.next().clone());
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
            vector.add(mo3667(get(i)).clone());
        }
        return new C0197(vector, this.f3202);
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public Object mo3666(Object obj) {
        return new C0428((C0488) obj);
    }

    @Override
    public C0488 mo3667(C0428 c0428) {
        return c0428.f2224;
    }

    @Override
    public boolean addAll(Collection<? extends C0428> collection) {
        return addAll(super.size(), collection);
    }
}
