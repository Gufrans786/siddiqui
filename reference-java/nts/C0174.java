package nts;

import java.util.Vector;

public class C0174 {

    public Vector f573 = new Vector();

    public C0623 f572 = null;

    public int f571 = 0;

    public boolean m3537() {
        return this.f572 != null;
    }

    public void m3538() {
        C0623 c0623;
        if (this.f573.size() > 0) {
            Vector vector = this.f573;
            vector.removeElementAt(vector.size() - 1);
            if (this.f573.size() > 0) {
                Vector vector2 = this.f573;
                c0623 = (C0623) vector2.get(vector2.size() - 1);
            } else {
                c0623 = null;
            }
            this.f572 = c0623;
            if (c0623 == null) {
                this.f571 = 4;
            }
        }
    }

    public int m3539() {
        C0623 c0623 = this.f572;
        return c0623 == null ? this.f571 : c0623.f3450;
    }

    public void m3542(int i) {
        if (i == 0 || i == 1) {
            this.f573.add(new C0623(i));
            Vector vector = this.f573;
            this.f572 = (C0623) vector.get(vector.size() - 1);
        }
    }

    public void m3540(int i) {
        C0623 c0623 = this.f572;
        if (c0623 != null) {
            c0623.f3450 = i;
        } else {
            this.f571 = i;
        }
    }

    public void m3541() {
        this.f572.f3451++;
    }
}
