package nts;

import java.util.Vector;

public class C0254 {

    public int f1245;

    public Vector f1244 = new Vector();

    public C0387 f1242 = new C0387();

    public C0387 f1243 = new C0387();

    public C0387 f1240 = new C0387();

    public C0387 f1241 = new C0387();

    public boolean m3817(int i, String str) {
        if (this.f1242.m4533() > 0) {
            Vector vector = new Vector();
            for (int i2 = 0; i2 < this.f1244.size(); i2++) {
                if (i == ((C0331) this.f1244.get(i2)).f1786) {
                    vector.add(Integer.valueOf(i2));
                }
            }
            if (vector.size() > 1 && !C0259.m3856(str)) {
                for (int size = vector.size() - 1; size >= 0 && vector.size() > 1; size--) {
                    if (!C0259.m3872(((C0331) this.f1244.get(((Integer) vector.get(size)).intValue())).f1787.m4571(), str == null ? "" : str)) {
                        vector.removeElementAt(size);
                    }
                }
            }
            if (vector.size() > 0) {
                C0331 c0331 = (C0331) this.f1244.get(((Integer) vector.get(0)).intValue());
                this.f1243.m4537(c0331.f1785.m5725(), c0331.f1785.m5720());
                this.f1240.m4567(c0331.f1787);
                this.f1241.m4541();
                for (int i3 = 0; i3 < c0331.f1788; i3++) {
                    if (i3 != 0) {
                        this.f1241.m4563("/");
                    }
                    this.f1241.m4563(c0331.f1784.m3675(i3));
                }
                return true;
            }
        }
        return false;
    }
}
