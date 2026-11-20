package nts;

public class C0431 {

    public int f2237;

    public C0536[] f2238;

    public C0431(short[] sArr, int i) throws C0414 {
        this.f2237 = 0;
        this.f2238 = new C0536[i];
        this.f2237 = 0;
        for (int i2 = 0; i2 < sArr.length; i2++) {
            if (sArr[i2] != 0) {
                C0536[] c0536Arr = this.f2238;
                int i3 = this.f2237;
                this.f2237 = i3 + 1;
                c0536Arr[i3] = new C0536(sArr[i2], i2);
            }
        }
        int i4 = this.f2237;
        if (i4 < 2) {
            throw new C0414(132, C0177.m3567(0, 23, 6));
        }
        for (int i5 = (i4 / 2) - 1; i5 >= 0; i5--) {
            m4791(i5);
        }
    }

    public final void m4791(int i) {
        int i2 = i * 2;
        int i3 = i2 + 1;
        int i4 = i3 < this.f2237 ? this.f2238[i3].f3110 : 50000000;
        int i5 = i2 + 2;
        int i6 = i5 < this.f2237 ? this.f2238[i5].f3110 : 50000000;
        if (i4 >= this.f2238[i].f3110) {
            i3 = i;
        }
        if (i6 >= this.f2238[i3].f3110) {
            i5 = i3;
        }
        if (i5 != i) {
            C0536[] c0536Arr = this.f2238;
            C0536 c0536 = c0536Arr[i];
            c0536Arr[i] = c0536Arr[i5];
            c0536Arr[i5] = c0536;
            m4791(i5);
        }
    }

    public C0536 m4790() throws C0414 {
        int i = this.f2237;
        if (i >= 1) {
            C0536[] c0536Arr = this.f2238;
            C0536 c0536 = c0536Arr[0];
            int i2 = i - 1;
            c0536Arr[0] = c0536Arr[i2];
            this.f2237 = i2;
            m4791(0);
            return c0536;
        }
        throw new C0414(199, C0177.m3567(23, 31, 95));
    }
}
