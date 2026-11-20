package nts;

public class C0155 extends AbstractC0317 {

    public AbstractC0444 f461;

    public InterfaceC0126 f462;

    public byte[] f463;

    public int f464;

    public byte[] f465;

    public byte[] f466;

    public C0155(AbstractC0444 abstractC0444, byte[] bArr) throws C0537 {
        this.f1703 = abstractC0444.f1689 / 2;
        this.f461 = abstractC0444;
        abstractC0444.f1690 = 1;
        abstractC0444.f1686 = 3;
        this.f465 = bArr;
        this.f466 = new byte[16];
        this.f463 = new byte[abstractC0444.f1689 / 8];
        mo3250();
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) throws C0537 {
        byte[] bArr2 = this.f463;
        int length = bArr2.length;
        int i3 = this.f464;
        int i4 = length - i3;
        if (i2 > i4) {
            System.arraycopy(bArr, i, bArr2, i3, i4);
            try {
                InterfaceC0126 interfaceC0126 = this.f462;
                byte[] bArr3 = this.f463;
                interfaceC0126.mo3121(bArr3, 0, length, bArr3, 0);
                this.f464 = 0;
                i2 -= i4;
                int i5 = i + i4;
                while (i2 > length) {
                    try {
                        byte[] bArr4 = bArr;
                        this.f462.mo3121(bArr4, i5, length, this.f463, 0);
                        i2 -= length;
                        i5 += length;
                        bArr = bArr4;
                    } catch (Exception e) {
                        throw new C0537(e.toString());
                    }
                }
                i = i5;
            } catch (Exception e2) {
                throw new C0537(e2.toString());
            }
        }
        System.arraycopy(bArr, i, this.f463, this.f464, i2);
        this.f464 += i2;
    }

    @Override
    public void mo3250() throws C0537 {
        this.f464 = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.f463;
            if (i >= bArr.length) {
                break;
            }
            bArr[i] = 0;
            i++;
        }
        InterfaceC0126 interfaceC0126 = this.f462;
        if (interfaceC0126 == null || !interfaceC0126.mo3223()) {
            this.f462 = this.f461.mo3117(this.f465, this.f466);
        }
    }

    public void m3414(byte b) throws C0537 {
        int i = this.f464;
        byte[] bArr = this.f463;
        if (i == bArr.length) {
            try {
                this.f462.mo3121(bArr, 0, bArr.length, bArr, 0);
                this.f464 = 0;
            } catch (Exception e) {
                throw new C0537(e.toString());
            }
        }
        byte[] bArr2 = this.f463;
        int i2 = this.f464;
        this.f464 = i2 + 1;
        bArr2[i2] = b;
    }

    @Override
    public byte[] mo3413() throws C0537 {
        try {
            byte[] bArrMo3122 = this.f462.mo3122(this.f463, 0, this.f464);
            int i = this.f464;
            int i2 = this.f461.f1689 / 8;
            if (i == i2) {
                byte[] bArr = new byte[i2];
                System.arraycopy(bArrMo3122, 0, bArr, 0, i2);
                bArrMo3122 = bArr;
            }
            mo3250();
            return bArrMo3122;
        } catch (Exception e) {
            throw new C0537(e.toString());
        }
    }
}
