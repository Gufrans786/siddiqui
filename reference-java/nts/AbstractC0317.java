package nts;

import java.io.IOException;
import java.io.InputStream;

public abstract class AbstractC0317 implements InterfaceC0126 {

    public static final String f1700;

    public static final String f1701;

    public int f1703 = 0;

    public byte[] f1702 = new byte[0];

    static {
        C0642.m5851(0, 3, 13);
        C0642.m5851(3, 4, 112);
        C0642.m5851(7, 6, 123);
        C0642.m5851(13, 6, 105);
        f1700 = C0642.m5851(19, 6, 32);
        f1701 = C0642.m5851(25, 6, 47);
    }

    public abstract void mo3412(byte[] bArr, int i, int i2) throws C0537;

    public abstract byte[] mo3413() throws C0537;

    public abstract void mo3250() throws C0537;

    @Override
    public boolean mo3223() {
        return true;
    }

    public byte[] m4300(byte[] bArr) throws C0537 {
        return m4301(bArr, 0, bArr.length);
    }

    @Override
    public int mo3121(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws C0537 {
        mo3412(bArr, i, i2);
        if (bArr2 != null) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
        }
        return i2;
    }

    public byte[] m4301(byte[] bArr, int i, int i2) throws C0537 {
        mo3250();
        mo3412(bArr, i, i2);
        byte[] bArrMo3413 = mo3413();
        this.f1702 = bArrMo3413;
        return (byte[]) bArrMo3413.clone();
    }

    @Override
    public byte[] mo3122(byte[] bArr, int i, int i2) throws C0537 {
        mo3412(bArr, i, i2);
        this.f1702 = mo3413();
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    public byte[] m4302(InputStream inputStream) throws IOException, C0537 {
        mo3250();
        byte[] bArr = new byte[32768];
        while (true) {
            int i = inputStream.read(bArr, 0, 32768);
            if (i > 0) {
                mo3412(bArr, 0, i);
            } else {
                byte[] bArrMo3413 = mo3413();
                this.f1702 = bArrMo3413;
                return (byte[]) bArrMo3413.clone();
            }
        }
    }
}
