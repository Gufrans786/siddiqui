package nts;

import java.util.Vector;

public class C0200 {

    public Vector f715 = new Vector();

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        if (this.f715.size() > 0) {
            sb.append(this.f715.elementAt(0).toString());
            for (int i = 1; i < this.f715.size(); i++) {
                sb.append(",");
                sb.append(this.f715.elementAt(i).toString());
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public int m3669(int i) {
        this.f715.setSize(i);
        return 0;
    }

    public void m3671() {
        this.f715.setSize(0);
    }

    public String m3675(int i) {
        return (i < 0 || i >= this.f715.size() || this.f715.elementAt(i) == null) ? "" : this.f715.elementAt(i).toString();
    }

    public int m3670(int i) {
        try {
            return Integer.parseInt(m3675(i));
        } catch (Exception unused) {
            return 0;
        }
    }

    public int m3674(String str) {
        this.f715.addElement(str);
        return 0;
    }

    public int m3673(int i, String str) {
        this.f715.setElementAt(str, i);
        return 0;
    }

    public int m3672() {
        return this.f715.size();
    }
}
