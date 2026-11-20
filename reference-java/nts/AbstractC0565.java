package nts;

import java.util.Vector;

public abstract class AbstractC0565 extends C0418 {

    public int f3175 = 0;

    public Vector f3176 = new Vector();

    public AbstractC0565() {
        this.f2150 = 49;
    }

    public abstract C0418 mo3222();

    public int m5510() {
        return this.f3176.size();
    }

    @Override
    public int mo3110(byte[] bArr, int i) {
        C0418 c0418Mo3222;
        while (!this.f2145) {
            int size = this.f3176.size();
            if (size > 0) {
                int i2 = size - 1;
                if (m5511(i2).f2145) {
                    c0418Mo3222 = mo3222();
                    this.f3176.add(c0418Mo3222);
                } else {
                    c0418Mo3222 = m5511(i2);
                }
            } else {
                c0418Mo3222 = mo3222();
                this.f3176.add(c0418Mo3222);
            }
            c0418Mo3222.f2143 = false;
            i = c0418Mo3222.mo3411(bArr, i);
            if (!c0418Mo3222.f2145) {
                return i;
            }
            c0418Mo3222.m4679();
            this.f3175 += c0418Mo3222.f2141 + c0418Mo3222.f2146;
            if (this.f2149) {
                int i3 = i + 1;
                if (bArr.length > i3 && (bArr[i] & 255) == 0 && m4677(bArr, i3) == 0) {
                    this.f2145 = true;
                    i += 2;
                }
            } else if (this.f3175 >= this.f2146) {
                this.f2145 = true;
            }
        }
        return i;
    }

    public C0418 m5511(int i) {
        return (C0418) this.f3176.get(i);
    }
}
