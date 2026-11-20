package nts;

import java.util.Iterator;

public abstract class AbstractC0475<OUT_T, IN_T> implements Iterator<OUT_T> {

    public boolean f2717;

    public Iterator f2718;

    public AbstractC0475(Iterator it, boolean z) {
        this.f2718 = it;
        this.f2717 = z;
    }

    @Override
    public boolean hasNext() {
        return this.f2718.hasNext();
    }

    @Override
    public OUT_T next() {
        Object next = this.f2718.next();
        if (next == null) {
            return null;
        }
        return (OUT_T) mo4634(next);
    }

    @Override
    public void remove() {
        if (this.f2717) {
            throw new UnsupportedOperationException(C0465.m5114(196, 46, 93));
        }
        this.f2718.remove();
    }

    public abstract OUT_T mo4634(IN_T in_t);
}
