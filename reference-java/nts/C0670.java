package nts;

public class C0670 {

    public long f3685 = System.currentTimeMillis();

    public String f3686;

    public byte[] f3687;

    public byte[] f3688;

    public C0670(byte[] bArr, byte[] bArr2) {
        this.f3688 = bArr;
        this.f3687 = bArr2;
    }

    public boolean m5900(String str) {
        if (str != null) {
            return str.equals(this.f3686);
        }
        return false;
    }

    public boolean m5901(byte[] bArr) {
        if (bArr.length != this.f3688.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != this.f3688[i]) {
                return false;
            }
        }
        return true;
    }
}
