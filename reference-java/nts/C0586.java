package nts;

import java.util.ArrayList;
import java.util.List;

public class C0586 {

    public List<C0563> f3256;

    public List<List<C0563>> f3257 = new ArrayList();

    public int f3255 = 0;

    public void m5569(C0563 c0563) {
        if (this.f3256 == null) {
            if (this.f3255 > 0) {
                for (int i = 0; i < this.f3255 - 1; i++) {
                    this.f3257.add(null);
                }
                this.f3255 = 0;
            }
            ArrayList arrayList = new ArrayList();
            this.f3256 = arrayList;
            this.f3257.add(arrayList);
        }
        this.f3256.add(c0563);
    }

    public C0563 m5568(String str) {
        if (str == null) {
            str = "";
        }
        for (int size = this.f3257.size() - 1; size >= 0; size--) {
            List<C0563> list = this.f3257.get(size);
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    C0563 c0563 = list.get(i);
                    if (str.equals(c0563.f3173)) {
                        return c0563;
                    }
                }
            }
        }
        return null;
    }
}
