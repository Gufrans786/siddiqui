package nts;

import java.util.ListIterator;

public abstract class AbstractC0617<OUT_T, IN_T> extends AbstractC0475<OUT_T, IN_T> implements ListIterator<OUT_T> {

    public ListIterator f3378;

    public AbstractC0617(ListIterator listIterator, boolean z) {
        super(listIterator, z);
        this.f3378 = listIterator;
    }

    @Override
    public void add(OUT_T out_t) {
        this.f3378.add(out_t == null ? null : AbstractC0396.this.mo3667(out_t));
    }

    @Override
    public boolean hasPrevious() {
        return this.f3378.hasPrevious();
    }

    @Override
    public int nextIndex() {
        return this.f3378.nextIndex();
    }

    @Override
    public OUT_T previous() {
        Object objPrevious = this.f3378.previous();
        if (objPrevious == null) {
            return null;
        }
        return (OUT_T) mo4634(objPrevious);
    }

    @Override
    public int previousIndex() {
        return this.f3378.previousIndex();
    }

    @Override
    public void set(OUT_T out_t) {
        if (this.f2717) {
            throw new UnsupportedOperationException(C0465.m5114(150, 46, 17));
        }
        this.f3378.set(out_t == null ? null : AbstractC0396.this.mo3667(out_t));
    }
}
