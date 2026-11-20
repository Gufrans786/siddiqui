package nts;

public class C0492 {

    public int f2802;

    public int f2800 = 31;

    public C0493[] f2803 = new C0493[31 + 1];

    public int f2801 = (int) System.currentTimeMillis();

    public class C0493 {

        public C0493 f2804;

        public int f2805;

        public String f2806;

        public C0493(C0492 c0492, String str, int i, C0493 c0493) {
            this.f2806 = str;
            this.f2805 = i;
            this.f2804 = c0493;
        }
    }

    public String m5181(StringBuilder sb, int i, int i2) {
        int i3 = i2 - i;
        if (i3 <= 0) {
            return "";
        }
        int i4 = this.f2801 + i3;
        int iCharAt = i4 + (sb.charAt(i) ^ (i4 << 7));
        for (int i5 = i + 1; i5 < i2; i5++) {
            iCharAt += sb.charAt(i5) ^ (iCharAt << 7);
        }
        int i6 = iCharAt - (iCharAt >> 17);
        int i7 = i6 - (i6 >> 11);
        int i8 = i7 - (i7 >> 5);
        C0493 c0493 = this.f2803[this.f2800 & i8];
        while (true) {
            int i9 = 0;
            if (c0493 == null) {
                String strSubstring = sb.substring(i, i2);
                int i10 = this.f2800 & i8;
                C0493 c0494 = new C0493(this, strSubstring, i8, this.f2803[i10]);
                C0493[] c0493Arr = this.f2803;
                c0493Arr[i10] = c0494;
                int i11 = this.f2802;
                this.f2802 = i11 + 1;
                int i12 = this.f2800;
                if (i11 == i12) {
                    int i13 = i12 << 1;
                    int i14 = i13 + 1;
                    C0493[] c0493Arr2 = new C0493[i13 + 2];
                    while (i9 < c0493Arr.length) {
                        C0493 c0495 = c0493Arr[i9];
                        while (c0495 != null) {
                            int i15 = c0495.f2805 & i14;
                            C0493 c0496 = c0495.f2804;
                            c0495.f2804 = c0493Arr2[i15];
                            c0493Arr2[i15] = c0495;
                            c0495 = c0496;
                        }
                        i9++;
                    }
                    this.f2803 = c0493Arr2;
                    this.f2800 = i14;
                }
                return strSubstring;
            }
            if (c0493.f2805 == i8) {
                String str = c0493.f2806;
                if (i3 == str.length()) {
                    while (i9 < i3) {
                        if (str.charAt(i9) == sb.charAt(i + i9)) {
                            i9++;
                        }
                    }
                    return c0493.f2806;
                }
                continue;
            }
            c0493 = c0493.f2804;
        }
    }
}
