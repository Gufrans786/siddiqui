package nts;

import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public final class C0501 extends AbstractC0396<C0281, C0335> implements Cloneable {
    public C0501(List list, boolean z) {
        super(list, z);
    }

    @Override
    public boolean addAll(int i, Collection<? extends C0281> collection) {
        if (this.f3202) {
            throw new UnsupportedOperationException(C0558.m5481("\u0000>(>*> ')f56,*(\"6*88az51$\"u= r#5\u000e\n@\u0003\u0005\u0006\u0010F", 0, 40, RNMBXStyleValue.InterpolationModeIdentity));
        }
        Iterator<? extends C0281> it = collection.iterator();
        boolean z = it.hasNext();
        while (it.hasNext()) {
            int i2 = i + 1;
            try {
                add(i, (C0281) it.next().clone());
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
        return new C0501(vector, this.f3202);
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public Object mo3666(Object obj) {
        return new C0281((C0335) obj);
    }

    @Override
    public C0335 mo3667(C0281 c0281) {
        return c0281.f1416;
    }

    @Override
    public boolean addAll(Collection<? extends C0281> collection) {
        return addAll(super.size(), collection);
    }
}
