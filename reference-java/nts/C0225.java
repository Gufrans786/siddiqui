package nts;

public class C0225 extends AbstractC0317 {

    public AbstractC0317 f814;

    public AbstractC0317 f815;

    public C0225() throws C0537 {
        this.f1703 = 288;
        mo3250();
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) throws C0537 {
        if (bArr == null) {
            throw new C0304(C0558.m5481("SWAUMW],", 0, 4, 51));
        }
        this.f814.mo3412(bArr, i, i2);
        System.arraycopy(bArr, i, bArr, i, i2);
        this.f815.mo3412(bArr, i, i2);
        System.arraycopy(bArr, i, bArr, i, i2);
    }

    @Override
    public void mo3250() throws C0537 {
        AbstractC0317 c0171;
        this.f814 = new C0552();
        String strM5481 = C0558.m5481("SWAUMW],", 4, 4, 30);
        if (!C0259.m3856(strM5481)) {
            strM5481 = strM5481.toUpperCase();
            if (strM5481.equals(C0642.m5851(35, 4, 46))) {
                c0171 = new C0235();
            } else if (strM5481.equals(C0642.m5851(39, 3, 127))) {
                c0171 = new C0552();
            } else if (strM5481.equals(C0642.m5851(42, 7, 118)) || strM5481.equals(C0642.m5851(49, 6, 5))) {
                c0171 = new C0171();
            } else if (strM5481.equals(C0642.m5851(55, 7, 23)) || strM5481.equals(AbstractC0317.f1700)) {
                c0171 = new C0287();
            } else if (strM5481.equals(C0642.m5851(62, 7, 70)) || strM5481.equals(AbstractC0317.f1701)) {
                c0171 = new C0409();
            }
            this.f815 = c0171;
            return;
        }
        throw new C0537(C0642.m5851(69, 15, 12) + strM5481 + C0642.m5851(84, 18, 71));
    }

    @Override
    public byte[] mo3413() throws C0537 {
        byte[] bArr = new byte[0];
        this.f814.mo3122(bArr, 0, 0);
        this.f815.mo3122(bArr, 0, 0);
        byte[] bArrM4264 = C0308.m4264(this.f814);
        byte[] bArr2 = this.f815.f1702;
        this.f1702 = new byte[this.f1703 / 8];
        System.arraycopy(bArrM4264, 0, this.f1702, 0, bArrM4264.length);
        System.arraycopy(bArr2, 0, this.f1702, bArrM4264.length, bArr2.length);
        return this.f1702;
    }
}
