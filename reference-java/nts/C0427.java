package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import com.facebook.imageutils.JfifUtil;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.oppwa.mobile.connect.checkout.dialog.CheckoutActivity;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class C0427 extends C0320 {

    public long f2191;

    public C0387 f2192;

    public C0387 f2193;

    public C0387 f2194;

    public C0627 f2195;

    public boolean f2196;

    public boolean f2197;

    public int f2198;

    public boolean f2199;

    public C0473 f2200;

    public C0468 f2201;

    public C0335 f2202;

    public int f2203;

    public boolean f2204;

    public boolean f2205;

    public C0335 f2206;

    public boolean f2207;

    public C0627 f2208;

    public C0387 f2209;

    public long f2210;

    public OutputStream f2211;

    public C0387 f2212;

    public boolean f2213;

    public C0387 f2214;

    public C0473 f2215;

    public InterfaceC0456 f2216;

    public int f2217;

    public InputStream f2218;

    public C0387 f2219;

    public C0473 f2220;

    public C0335 f2221;

    public boolean f2222;

    public boolean f2223;

    public C0427(Object obj, Object obj2) {
        super(obj2);
        this.f2215 = new C0473();
        this.f2220 = new C0473();
        this.f2200 = new C0473();
        this.f2195 = new C0627();
        this.f2209 = new C0387();
        this.f2192 = new C0387();
        this.f2221 = null;
        this.f2206 = null;
        this.f2202 = null;
        this.f2216 = null;
        this.f2218 = null;
        this.f2211 = null;
        this.f2194 = new C0387();
        this.f2212 = new C0387();
        this.f2208 = new C0627();
        this.f2214 = new C0387();
        this.f2197 = false;
        this.f2193 = new C0387();
        this.f2219 = new C0387();
        this.f2204 = false;
        this.f2213 = false;
        if (obj instanceof InterfaceC0456) {
            this.f2216 = (InterfaceC0456) obj;
        }
        this.f2203 = 1024;
        C0468 c0468 = new C0468(C0558.m5486(C0128.m3225(0, 3, 116)), this.f2203);
        this.f2201 = c0468;
        this.f2198 = -1;
        this.f2207 = true;
        this.f2222 = true;
        this.f2196 = true;
        c0468.m5130();
        this.f2195.m5722();
        this.f2215.m5142();
        this.f2220.m5142();
        this.f2200.m5142();
        this.f2192.m4541();
        this.f2209.m4541();
        this.f2208.m5722();
        this.f2214.m4541();
        this.f2194.m4541();
        this.f2212.m4541();
        m4699();
        this.f2217 = 2;
        this.f2197 = false;
        this.f2223 = false;
        this.f2199 = false;
        this.f2205 = false;
        this.f2191 = 0L;
        this.f2210 = 0L;
        this.f2219.m4531(C0128.m3225(3, 6, 91));
    }

    public boolean m4695() {
        int i;
        int i2;
        if (C0320.f1718) {
            C0367 c0367 = (C0367) this.f2201.f2692;
            String strM5477 = C0558.m5477(this.f2217);
            byte[] bArr = new byte[262144];
            m4700(false);
            if (this.f2209.m4533() <= 0) {
                throw new C0414(124, C0128.m3225(FrameMetricsAggregator.EVERY_DURATION, 28, 43));
            }
            if (this.f2194.m4533() <= 0 && this.f2208.m5720() <= 0 && this.f2218 == null) {
                throw new C0414(113, C0128.m3225(570, 29, 44));
            }
            m4697();
            try {
                try {
                    if (this.f2205) {
                        c0367.m4448(strM5477, false, true, this.f2198);
                    } else {
                        c0367.m4448(strM5477, false, false, -1);
                    }
                    do {
                        i2 = this.f2218.read(bArr);
                        if (i2 > 0) {
                            c0367.m4449(bArr, 0, i2);
                        }
                    } while (i2 > 0);
                    boolean zM4450 = this.f2199 ? c0367.m4450(C0259.m3863(this.f2209.m4571())) : c0367.m4450(this.f2209.m4554());
                    m4699();
                    return zM4450;
                } catch (Throwable th) {
                    m4699();
                    throw th;
                }
            } catch (IOException e) {
                throw new C0414(104, C0128.m3225(539, 31, 73) + C0414.m4672(e));
            } catch (C0537 e2) {
                throw new C0414(e2);
            }
        }
        if (this.f2194.m4533() > 0 || this.f2208.m5720() > 0 || this.f2218 != null) {
            C0387 c0387 = this.f2192;
            String strM5478 = C0558.m5477(this.f2217);
            byte[] bArr2 = new byte[262144];
            m4697();
            try {
                try {
                    AbstractC0317 abstractC0317M4217 = C0308.m4217(strM5478);
                    do {
                        i = this.f2218.read(bArr2);
                        if (i > 0) {
                            C0558.m5500(abstractC0317M4217, bArr2, i, false, c0387);
                        }
                        m4703(i);
                    } while (i > 0);
                    C0558.m5500(abstractC0317M4217, C0320.f1706, 0, true, c0387);
                    m4699();
                    if (this.f2199) {
                        C0387 c0388 = new C0387();
                        C0558.m5505(this.f2192.m4554(), this.f2192.m4533(), c0388);
                        this.f2192.m4537(c0388.m4554(), c0388.m4533());
                    }
                } catch (Throwable th2) {
                    m4699();
                    throw th2;
                }
            } catch (IOException e3) {
                throw new C0414(104, C0128.m3225(790, 31, 34) + C0414.m4672(e3));
            } catch (C0537 e4) {
                throw new C0414(106, C0414.m4672(e4));
            }
        } else if (this.f2192.m4533() <= 0) {
            throw new C0414(113, C0128.m3225(469, 42, 31));
        }
        String strM5479 = C0558.m5477(this.f2217);
        C0387 c0389 = new C0387();
        C0387 c03810 = new C0387();
        m4700(false);
        if (this.f2209.m4533() <= 0) {
            throw new C0414(124, C0128.m3225(821, 32, 36));
        }
        if (this.f2199) {
            C0558.m5450(this.f2209.m4571(), c03810);
            C0558.m5450(this.f2192.m4571(), c0389);
        } else {
            c0389.m4537(this.f2192.m4554(), this.f2192.m4533());
            c03810.m4537(this.f2209.m4554(), this.f2209.m4533());
        }
        try {
            return this.f2201.m5134(c0389.m4554(), strM5479, c03810.m4554(), this.f2205, this.f2198, this.f2207);
        } catch (C0537 e5) {
            throw new C0414(e5);
        }
    }

    public final void m4696() {
        boolean z = this.f2221 != null;
        if (this.f2215.m5143() && !z) {
            throw new C0414(102, C0128.m3225(TypedValues.CycleType.TYPE_ALPHA, 17, 29));
        }
        C0145 c0145 = new C0145();
        if (z && this.f2215.m5143()) {
            c0145 = m4702(this.f2221, false);
        } else {
            this.f2215.m5144(c0145);
        }
        try {
            this.f2201.m5133(c0145);
            this.f2203 = this.f2201.m5132();
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public void m4698(String str) {
        this.f2219.m4531(str);
    }

    public final void m4699() {
        OutputStream outputStream;
        InputStream inputStream;
        try {
            if (this.f2204 && (inputStream = this.f2218) != null) {
                inputStream.close();
                this.f2218 = null;
            }
            if (!this.f2213 || (outputStream = this.f2211) == null) {
                return;
            }
            if (outputStream instanceof ByteArrayOutputStream) {
                this.f2214.m4543(((ByteArrayOutputStream) outputStream).toByteArray());
            }
            this.f2211.close();
            this.f2211 = null;
        } catch (IOException unused) {
            throw new C0414(304, C0128.m3225(771, 19, 68));
        }
    }

    public final void m4700(boolean z) {
        boolean z2 = this.f2206 != null;
        boolean z3 = this.f2202 != null;
        if (z && this.f2220.m5143() && !z3) {
            throw new C0414(102, C0128.m3225(TypedValues.CycleType.TYPE_EASING, 26, 111));
        }
        if (!z && this.f2200.m5143() && !z2) {
            throw new C0414(102, C0128.m3225(446, 23, 127));
        }
        C0145 c0145 = new C0145();
        if (z) {
            if (z3 && this.f2220.m5143()) {
                c0145 = m4702(this.f2202, true);
            } else {
                this.f2220.m5144(c0145);
            }
        } else if (z2 && this.f2200.m5143()) {
            c0145 = m4702(this.f2206, true);
        } else {
            this.f2200.m5144(c0145);
        }
        try {
            this.f2201.m5133(c0145);
            this.f2203 = this.f2201.m5132();
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public void m4701() {
        if (C0320.f1718) {
            throw new C0414(C0128.m3225(267, 37, 18));
        }
        C0387 c0387 = new C0387();
        C0387 c0388 = new C0387();
        String strM5477 = C0558.m5477(this.f2217);
        C0387 c0389 = new C0387();
        if (this.f2197 && this.f2193.m4533() > 0) {
            C0558.m5450(this.f2193.m4571(), c0389);
        }
        m4696();
        m4697();
        try {
            try {
                m4704(c0387);
                if (this.f2199) {
                    C0558.m5450(c0387.m4571(), c0388);
                    c0387.m4537(c0388.m4554(), c0388.m4533());
                    c0388.m4541();
                }
                c0388.m4568(this.f2201.m5135(c0387.m4554(), this.f2197, c0389.m4554(), strM5477, this.f2219.m4571()));
                this.f2211.write(c0388.m4554());
                m4699();
            } catch (IOException e) {
                throw new C0414(104, C0128.m3225(304, 31, 69) + C0414.m4672(e));
            } catch (C0537 e2) {
                throw new C0414(e2);
            }
        } catch (Throwable th) {
            m4699();
            throw th;
        }
    }

    public void m4705(byte[] bArr) {
        this.f2192.m4541();
        this.f2208.m5723(bArr);
    }

    public final void m4697() {
        this.f2210 = 0L;
        this.f2191 = 0L;
        if (this.f2211 == null && this.f2212.m4533() > 0 && !this.f2223 && C0558.m5468(this.f2212.m4571())) {
            throw new C0414(111, C0128.m3225(660, 49, 0));
        }
        this.f2213 = false;
        this.f2204 = false;
        if (this.f2218 == null) {
            this.f2204 = true;
            if (this.f2194.m4533() > 0) {
                try {
                    this.f2218 = new FileInputStream(this.f2194.m4571());
                } catch (FileNotFoundException e) {
                    throw new C0414(305, C0663.m5886(e, new StringBuilder().append(C0128.m3225(709, 31, 12))));
                }
            } else {
                this.f2218 = new ByteArrayInputStream(this.f2208.m5725());
            }
        } else {
            this.f2204 = this.f2222;
        }
        try {
            this.f2191 = this.f2218.available();
        } catch (Exception unused) {
            this.f2191 = -1L;
        }
        if (this.f2211 != null) {
            this.f2213 = this.f2196;
            return;
        }
        this.f2213 = true;
        if (this.f2212.m4533() <= 0) {
            this.f2211 = new ByteArrayOutputStream();
            return;
        }
        try {
            this.f2211 = new FileOutputStream(this.f2212.m4571());
        } catch (FileNotFoundException e2) {
            throw new C0414(306, C0663.m5886(e2, new StringBuilder().append(C0128.m3225(740, 31, 25))));
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        if (c0440.m4813(C0128.m3225(9, 7, 5))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2197).toString();
            }
            this.f2197 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3225(16, 6, 47))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2205).toString();
            }
            this.f2205 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3225(22, 10, 41))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2198).toString();
            }
            this.f2198 = c0440.m4805();
        } else if (c0440.m4813(C0128.m3225(32, 7, 19))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f2203).toString();
            }
            this.f2203 = c0440.m4805();
        } else {
            if (c0440.m4813(C0128.m3225(39, 17, 68)) && c0440.f2269) {
                return C0128.m3225(56, 15, 117);
            }
            if (c0440.m4813(C0128.m3225(71, 18, 122)) && c0440.f2269) {
                return C0128.m3225(89, 42, 85);
            }
            if (c0440.m4813(C0128.m3225(131, 31, 76))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f2222).toString();
                }
                this.f2222 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3225(162, 32, 23))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f2196).toString();
                }
                this.f2196 = c0440.m4809();
            } else if (c0440.m4813(C0128.m3225(194, 9, 39))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f2215.f2707).toString();
                }
                this.f2215.f2707 = c0440.m4805();
                this.f2200.f2707 = c0440.m4805();
                this.f2220.f2707 = c0440.m4805();
            } else if (c0440.m4813(C0128.m3225(DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER, 19, 62))) {
                if (c0440.f2269) {
                    return super.mo3151(c0440);
                }
                if (C0320.f1718 != c0440.m4809()) {
                    super.mo3151(c0440);
                    this.f2201 = new C0468(C0558.m5486(C0128.m3225(222, 3, 125)), this.f2203);
                }
            } else if (c0440.m4813(C0128.m3225(JfifUtil.MARKER_APP1, 17, 54))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f2219.m4571()).toString();
                }
                m4698(c0440.f2271);
            } else if (c0440.m4813(C0128.m3225(CheckoutActivity.REQUEST_CODE_CHECKOUT, 10, 8))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f2193.m4571()).toString();
                }
                this.f2193.m4531(c0440.f2271);
            } else if (c0440.m4813(C0128.m3225(252, 15, 48))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f2207).toString();
                }
                this.f2207 = c0440.m4809();
            } else {
                return super.mo3151(c0440);
            }
        }
        return "";
    }

    public final C0145 m4702(C0335 c0335, boolean z) {
        try {
            C0145 c0145 = (C0145) C0671.m5948(c0335, z);
            C0308.m4241(c0145);
            return c0145;
        } catch (Exception unused) {
            throw new C0414(121, C0128.m3225(599, 61, 114));
        }
    }

    public final void m4704(C0387 c0387) throws IOException {
        int i;
        byte[] bArr = new byte[262144];
        do {
            i = this.f2218.read(bArr);
            if (i > 0) {
                c0387.m4569(bArr, i);
            }
        } while (i > 0);
    }

    public void m4703(long j) {
        int i;
        if (j <= 0) {
            return;
        }
        long j2 = this.f2210 + j;
        this.f2210 = j2;
        long j3 = this.f2191;
        if (j3 > 0) {
            i = (int) ((100 * j2) / j3);
            if (i > 100) {
                i = 100;
            }
        } else {
            i = -1;
        }
        InterfaceC0456 interfaceC0456 = this.f2216;
        if (interfaceC0456 != null) {
            interfaceC0456.m5103(j2, i);
        }
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0456 interfaceC0456 = this.f2216;
        if (interfaceC0456 != null) {
            interfaceC0456.m5102(i, str);
        }
    }
}
