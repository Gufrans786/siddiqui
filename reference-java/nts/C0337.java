package nts;

public class C0337 {

    public String[] f1820 = new String[16];

    public int[] f1819 = new int[16];

    public int[] f1817 = new int[16];

    public int f1818 = 16;

    public int f1815 = 0;

    public int f1816 = 0;

    public void m4383() {
        int i = this.f1815;
        if (i < this.f1818) {
            this.f1817[i] = 0;
        }
        this.f1815 = i - 1;
    }

    public void m4384() {
        int[] iArr = this.f1819;
        int i = this.f1815 - 1;
        iArr[i] = iArr[i] + 1;
    }

    public String m4385() {
        return this.f1820[this.f1815 - 1];
    }
}
