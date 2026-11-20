package nts;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;

public class C0279 {

    public boolean f1414 = true;

    public C0423 f1412 = null;

    public C0566 f1407 = null;

    public C0301 f1411 = null;

    public C0301 f1405 = null;

    public byte[] f1406 = null;

    public String f1410 = null;

    public InputStream f1413 = null;

    public boolean f1408 = false;

    public C0301 f1409 = null;

    public void m3998() {
        this.f1412 = null;
        this.f1407 = null;
        this.f1411 = null;
        C0301 c0301 = this.f1405;
        if (c0301 != null) {
            c0301.m4169();
        }
        this.f1410 = null;
        this.f1413 = null;
        this.f1409 = null;
    }

    public boolean m4000() {
        return this.f1414;
    }

    public void m4002(String str) {
        if (str.equals(C0164.m3497(10490, 4, 32)) || str.equals(C0164.m3497(10494, 7, 26))) {
            this.f1411 = str.equals(C0164.m3497(10501, 4, 19)) ? new C0301() : null;
            this.f1409 = str.equals(C0164.m3497(10505, 7, 49)) ? new C0301() : null;
            if (this.f1406 == null) {
                this.f1406 = new byte[65536];
            }
            C0301 c0301 = this.f1405;
            if (c0301 == null) {
                this.f1405 = new C0301(65536);
            } else {
                c0301.m4169();
            }
            if (this.f1414) {
                this.f1407 = new C0566();
            } else {
                this.f1412 = new C0423();
            }
            this.f1410 = str;
        }
    }

    public void m3999(boolean z) {
        this.f1414 = z;
    }

    public boolean m4005(byte[] bArr, int i, int i2) {
        C0566 c0566;
        C0301 c0301 = this.f1411;
        if (c0301 != null) {
            c0301.m4181(bArr, i, i2);
            byte[] bArrM4182 = this.f1411.m4182();
            if (3 > bArrM4182.length) {
                return false;
            }
            if (bArrM4182[0] == 31 && bArrM4182[1] == -117 && bArrM4182[2] == 8) {
                int i3 = 10;
                if (10 > bArrM4182.length) {
                    return false;
                }
                byte b = bArrM4182[3];
                if ((b & 208) == 0) {
                    if ((b & 4) != 0) {
                        if (12 > bArrM4182.length) {
                            return false;
                        }
                        byte b2 = bArrM4182[10];
                        if (b2 != -1) {
                            byte b3 = (byte) (b2 & 255);
                            byte b4 = bArrM4182[11];
                            if (b4 != -1) {
                                int i4 = b3 + (((byte) (b4 & 255)) << 8);
                                if (i4 + 12 > bArrM4182.length) {
                                    return false;
                                }
                                i3 = 12;
                                for (int i5 = 0; i5 < i4; i5++) {
                                    i3++;
                                }
                            } else {
                                throw new C0414(102, C0164.m3497(10593, 27, 48));
                            }
                        } else {
                            throw new C0414(102, C0164.m3497(10566, 27, 83));
                        }
                    }
                    if ((b & 8) != 0) {
                        while (i3 < bArrM4182.length) {
                            byte b5 = bArrM4182[i3];
                            i3++;
                            if (b5 == 0) {
                                break;
                            }
                        }
                        if (i3 >= bArrM4182.length) {
                            return false;
                        }
                    }
                    if ((b & 16) != 0) {
                        while (i3 < bArrM4182.length) {
                            byte b6 = bArrM4182[i3];
                            i3++;
                            if (b6 == 0) {
                                break;
                            }
                        }
                        if (i3 >= bArrM4182.length) {
                            return false;
                        }
                    }
                    if ((b & 2) != 0) {
                        if (i3 + 2 > bArrM4182.length) {
                            return false;
                        }
                        i3 += 2;
                    }
                    bArr = C0259.m3865(bArrM4182, i3, bArrM4182.length - i3);
                    i2 = bArr.length;
                    this.f1411 = null;
                    this.f1409 = null;
                    i = 0;
                } else {
                    throw new C0414(102, C0164.m3497(10539, 27, 95));
                }
            } else {
                throw new C0414(102, C0164.m3497(10512, 27, 99));
            }
        }
        C0301 c0302 = this.f1409;
        if (c0302 != null) {
            c0302.m4181(bArr, i, i2);
            C0301 c0303 = this.f1409;
            if (c0303.f1615 < 2) {
                return false;
            }
            int iM4166 = c0303.m4166(0) & 255;
            int iM4167 = this.f1409.m4166(1) & 255;
            if (iM4166 == 120 && (iM4167 == 1 || iM4167 == 94 || iM4167 == 156 || iM4167 == 218)) {
                bArr = this.f1409.m4171(2);
            } else {
                bArr = this.f1409.m4182();
            }
            i2 = bArr.length;
            this.f1409 = null;
            i = 0;
        }
        this.f1405.m4170();
        if (this.f1414) {
            this.f1407.f3177.setInput(bArr, i, i2);
            do {
                C0566 c0567 = this.f1407;
                byte[] bArr2 = this.f1406;
                this.f1405.m4181(this.f1406, 0, c0567.m5512(bArr2, 0, bArr2.length));
                c0566 = this.f1407;
            } while (((c0566.f3177.finished() || c0566.f3178 == 0) ? 0 : c0566.f3177.getRemaining()) > 0);
        } else {
            this.f1412.m4691(bArr, i, i2);
            do {
                C0423 c0423 = this.f1412;
                byte[] bArr3 = this.f1406;
                this.f1405.m4181(this.f1406, 0, c0423.m4693(bArr3, 0, bArr3.length));
            } while (this.f1412.f2178.f3135 > 0);
        }
        return true;
    }

    public boolean m4004() {
        return this.f1408;
    }

    public void m4003(boolean z) {
        this.f1408 = z;
    }

    public InputStream m4001(byte[] bArr, InputStream inputStream) throws IOException {
        this.f1413 = null;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        if (bArr != null && bArr.length > 0) {
            gZIPOutputStream.write(bArr, 0, bArr.length);
        }
        if (inputStream != null) {
            byte[] bArr2 = new byte[4096];
            while (true) {
                int i = inputStream.read(bArr2, 0, 4096);
                if (i <= 0) {
                    break;
                }
                gZIPOutputStream.write(bArr2, 0, i);
            }
        }
        gZIPOutputStream.finish();
        gZIPOutputStream.close();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        this.f1413 = byteArrayInputStream;
        return byteArrayInputStream;
    }
}
