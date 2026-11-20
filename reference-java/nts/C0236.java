package nts;

public class C0236 extends AbstractC0095 {

    public byte[] f844;

    public boolean f845;

    public String f846;

    public C0236() {
        this.f846 = "";
        this.f844 = new byte[0];
        this.f845 = false;
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public C0236(String str, byte[] bArr, boolean z) {
        this.f846 = str;
        this.f844 = bArr;
        this.f845 = z;
    }
}
