package nts;

import java.util.Iterator;

public class C0324 {

    public Object f1735 = null;

    public Iterator f1736;

    public C0324(Iterator it) {
        this.f1736 = it;
    }

    public boolean m4313() {
        if (!this.f1736.hasNext()) {
            return false;
        }
        this.f1735 = this.f1736.next();
        return true;
    }
}
