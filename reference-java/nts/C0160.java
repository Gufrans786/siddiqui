package nts;

import java.math.BigInteger;

public class C0160 extends AbstractC0453 {

    public C0158 f510 = null;

    public C0158 f511 = null;

    public static int m3449(int i) {
        switch (i) {
            case 0:
                return 23;
            case 1:
                return 24;
            case 2:
                return 25;
            case 3:
            case 5:
                return 29;
            case 4:
            case 6:
                return 30;
            default:
                throw new C0414(C0128.m3226(12544, 28, 88));
        }
    }

    @Override
    public byte[] mo3450() {
        return this.f510.m3440() ? this.f510.m3447(false) : this.f510.f485;
    }

    @Override
    public byte[] mo3451() {
        return mo3450();
    }

    @Override
    public byte[] mo3452() throws C0537 {
        return C0308.m4263(this.f510, this.f511);
    }

    public void m3453() throws C0537 {
        this.f510 = (C0158) C0308.m4233(this.f511.f488);
    }

    @Override
    public byte[] mo3454() throws C0537 {
        return mo3452();
    }

    @Override
    public void mo3455(BigInteger bigInteger) {
    }

    @Override
    public void mo3456() {
    }

    @Override
    public void mo3457(int i) throws C0537 {
        m3453();
    }

    @Override
    public void mo3459(BigInteger bigInteger) {
    }

    @Override
    public void mo3460(byte[] bArr) {
        if (!this.f511.m3440()) {
            this.f511.f485 = bArr;
            this.f2588 = bArr.length * 8;
        } else {
            this.f511.m3446(bArr);
            byte[] bArr2 = this.f511.f490;
            this.f2588 = bArr2 == null ? 0 : bArr2.length * 8;
        }
    }

    public void m3458(int i, boolean z) {
        int i2;
        if (i == 29) {
            i2 = 5;
        } else if (i != 30) {
            switch (i) {
                case 23:
                    i2 = 0;
                    break;
                case 24:
                    i2 = 1;
                    break;
                case 25:
                    i2 = 2;
                    break;
                default:
                    throw new C0414(C0128.m3226(12572, 25, 62));
            }
        } else {
            i2 = 6;
        }
        if (this.f511 == null) {
            this.f511 = new C0158();
        }
        this.f511.f488 = i2;
        if (z) {
            this.f2591 = i;
        }
    }
}
