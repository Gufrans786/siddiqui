package nts;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class C0132 extends C0610 {

    public static int f260;

    public InterfaceC0540 f261;

    public boolean f262;

    public C0242 f263;

    public OutputStream f264;

    public C0301 f265;

    public int f266;

    public int f267;

    public byte[] f268;

    public C0179 f269;

    public ByteArrayOutputStream f270;

    public boolean f271;

    public C0622 f272;

    public C0132(Object obj, Object obj2) {
        super(obj2);
        this.f266 = 0;
        this.f268 = null;
        this.f261 = null;
        this.f270 = null;
        this.f264 = null;
        this.f269 = null;
        this.f272 = null;
        this.f262 = false;
        this.f265 = new C0301();
        this.f267 = 4;
        this.f271 = false;
        if (obj instanceof InterfaceC0540) {
            this.f261 = (InterfaceC0540) obj;
        }
    }

    public void m3251(boolean z) throws C0414 {
        try {
            if (this.f264 == null) {
                if (this.f270 == null) {
                    this.f270 = new ByteArrayOutputStream();
                }
                this.f264 = m3253((OutputStream) this.f270);
            }
            byte[] bArr = this.f268;
            if (bArr != null && bArr.length > 0) {
                this.f264.write(bArr, 0, bArr.length);
                this.f268 = null;
            }
            if (z) {
                this.f264.flush();
                this.f264.close();
                this.f264 = null;
            }
            byte[] byteArray = this.f270.toByteArray();
            if (byteArray != null && byteArray.length > 0) {
                if (this.f262) {
                    this.f265.m4180(byteArray);
                }
                InterfaceC0540 interfaceC0540 = this.f261;
                if (interfaceC0540 != null) {
                    interfaceC0540.m5421(byteArray);
                }
            }
            if (z) {
                this.f270 = null;
            } else {
                this.f270.reset();
            }
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public void m3252() throws C0414 {
        int i;
        try {
            if (this.f269 == null) {
                this.f269 = new C0179();
            }
            if (this.f263 == null) {
                int i2 = this.f266;
                if (2 == i2) {
                    this.f263 = new C0534();
                } else if (1 == i2) {
                    this.f263 = new C0585();
                } else {
                    this.f263 = new C0242();
                }
            }
            if (this.f263.f897 != 0) {
                C0242 c0242 = this.f263;
                byte[] bArr = this.f268;
                int iM3791 = c0242.m3791(bArr, 0, bArr.length);
                if (this.f263.f897 != 0) {
                    this.f268 = null;
                    return;
                }
                C0179 c0179 = this.f269;
                byte[] bArr2 = this.f268;
                c0179.f615.m4181(bArr2, iM3791, bArr2.length);
                this.f268 = null;
            }
            byte[] bArr3 = this.f268;
            if (bArr3 != null && bArr3.length > 0) {
                this.f269.f615.m4180(bArr3);
                this.f268 = null;
            }
            if (this.f272 == null) {
                C0622 c0622M3254 = m3254((InputStream) this.f269);
                this.f272 = c0622M3254;
                c0622M3254.f3444 = true;
                this.f272.f3447 = true;
            }
            byte[] bArr4 = new byte[1048576];
            while (this.f272.available() > 0 && (i = this.f272.read(bArr4, 0, 1048576)) > 0) {
                if (i > 0) {
                    byte[] bArr5 = new byte[i];
                    System.arraycopy(bArr4, 0, bArr5, 0, i);
                    if (this.f262) {
                        this.f265.m4180(bArr5);
                    }
                    InterfaceC0540 interfaceC0540 = this.f261;
                    if (interfaceC0540 != null) {
                        interfaceC0540.m5423(bArr5);
                    }
                }
            }
            C0179 c01710 = this.f269;
            int i3 = c01710.f614;
            if (i3 >= 0) {
                C0301 c0301 = c01710.f615;
                if (c0301.f1615 > 0) {
                    c0301.m4179(0, i3);
                    c01710.f614 = -1;
                }
            }
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public final C0622 m3254(InputStream inputStream) {
        C0622 c0622;
        C0622 c0623;
        C0316 c0316;
        C0643 c0643;
        try {
            int i = this.f266;
            if (i == 2) {
                c0643 = new C0643(inputStream);
            } else if (i == 1) {
                c0316 = new C0316(inputStream, false);
                c0316.f1699 = true;
            } else if (i == f260) {
                c0623 = new C0622(inputStream);
            } else {
                c0622 = null;
            }
            if (c0622 != null) {
                c0622 = c0623;
                c0622 = c0316;
                c0622 = c0643;
                c0622.f3441 = this.f271;
            }
            c0622 = c0623;
            c0622 = c0316;
            c0622 = c0643;
            return c0622;
        } catch (IOException e) {
            throw new C0414(e);
        }
    }

    public final OutputStream m3253(OutputStream outputStream) {
        C0207 c0207;
        int i = this.f266;
        if (i == 2) {
            c0207 = new C0505(outputStream);
        } else if (i == 1) {
            c0207 = new C0194(outputStream);
        } else {
            c0207 = i == f260 ? new C0207(outputStream) : null;
        }
        if (c0207 != null) {
            boolean z = this.f271;
            C0662 c0662 = c0207.f734;
            if (c0662 != null) {
                c0662.f3673 = z;
            }
            int i2 = this.f267;
            AbstractC0256 abstractC0256 = c0207.f735.f445;
            if (abstractC0256 instanceof C0188) {
                C0188 c0188 = (C0188) abstractC0256;
                if (i2 < 1) {
                    i2 = 1;
                }
                if (i2 > 6) {
                    i2 = 6;
                }
                c0188.f659 = c0188.f654[i2 - 1];
            }
        }
        return c0207;
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0540 interfaceC0540 = this.f261;
        if (interfaceC0540 != null) {
            interfaceC0540.m5422(i, str);
        }
    }
}
