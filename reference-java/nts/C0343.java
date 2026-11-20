package nts;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;

public class C0343 extends C0147 {

    public long f1838;

    public OutputStream f1839;

    public C0451[] f1840;

    public C0301 f1841;

    public RandomAccessFile f1842;

    public InputStream f1843;

    public String f1844;

    public int f1845;

    public String f1846;

    public int f1847;

    public int f1848;

    static {
        C0259.m3902(" ");
        C0259.m3902("-");
    }

    public C0343(Object obj, Object obj2) {
        super(obj, null, obj2);
        this.f1841 = new C0301();
        this.f1843 = null;
        this.f1844 = "";
        this.f1846 = "";
        this.f1847 = 0;
        this.f1839 = null;
        this.f1842 = null;
        this.f1838 = 0L;
        this.f1840 = new C0451[]{new C0451(), new C0451()};
        this.f1848 = 0;
        mo3290(60);
        this.f3348 = true;
    }

    public long m4399() {
        InputStream inputStream = this.f1843;
        if (inputStream != null) {
            try {
                return inputStream.available();
            } catch (Exception unused) {
                return 0L;
            }
        }
        String str = this.f1844;
        if (str == null || str.length() <= 0) {
            return 0L;
        }
        File file = new File(this.f1844);
        if (file.exists()) {
            return file.length();
        }
        throw new C0414(303, C0164.m3510(18, 30, 68));
    }

    public void m4400() throws C0414 {
        synchronized (this.f1721) {
            if (m3355()) {
                return;
            }
            m3301(false);
            this.f1841.m4169();
            m3395(true, true);
        }
    }

    public String m4401() {
        return this.f1846;
    }

    public void m4402() {
        OutputStream outputStream = this.f1839;
        if (outputStream != null && this.f410) {
            try {
                outputStream.close();
            } catch (IOException unused) {
            } finally {
                this.f1839 = null;
            }
        }
        RandomAccessFile randomAccessFile = this.f1842;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            } finally {
                this.f1842 = null;
            }
        }
    }

    public boolean m4403() {
        return (this.f1839 == null && this.f1846.length() == 0) ? false : true;
    }

    @Override
    public void mo3351() {
        this.f420 = this.f433;
        if (this.f420 == 0) {
            this.f420 = this.f357 == this.f1848 ? 2 : 1;
        }
    }

    public void m4404(long j) throws C0414 {
        try {
            this.f1842 = C0610.f3340.mo3463(this.f1846, j);
        } catch (IOException unused) {
            C0414 c0414 = new C0414(304, C0663.m5888(new StringBuilder().append(C0164.m3510(48, 24, 94)), this.f1846, "\"."));
            int i = this.f1847;
            if (i == 0) {
                throw c0414;
            }
            if (i != 1) {
                return;
            }
            mo3406(c0414);
        }
    }

    @Override
    public void mo3370() {
        super.mo3370();
        this.f396 = 1;
    }

    public void m4405(String str) {
        String strM3843 = C0259.m3843(str);
        this.f1846 = strM3843;
        if (strM3843.length() != 0) {
            this.f1839 = null;
        }
    }

    public void mo4406(int i, long j, byte[] bArr) {
        throw null;
    }

    public void m4407(byte[] bArr, int i) throws C0414 {
        m4408(bArr, 0, bArr.length, i, (OutputStream) null);
    }

    public void m4408(byte[] bArr, int i, int i2, int i3, OutputStream outputStream) throws C0414 {
        if (outputStream == null) {
            m3397(bArr, i, i2, i3, 65536);
            return;
        }
        try {
            outputStream.write(bArr, i, i2);
            if (i3 != 1) {
                mo3385(i2, bArr);
            }
        } catch (IOException e) {
            throw new C0414(304, e.getMessage());
        }
    }

    public void m4409(byte[] bArr, int i, int i2, byte[] bArr2) throws C0414 {
        OutputStream outputStream = this.f1839;
        if (outputStream != null) {
            try {
                outputStream.write(bArr, i, i2);
                if (bArr2.length > 0) {
                    this.f1839.write(bArr2);
                    return;
                }
                return;
            } catch (IOException unused) {
                m4402();
                throw new C0414(304, C0164.m3510(72, 29, 1));
            }
        }
        RandomAccessFile randomAccessFile = this.f1842;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.write(bArr, i, i2);
                if (bArr2.length > 0) {
                    this.f1842.write(bArr2);
                }
            } catch (IOException unused2) {
                m4402();
                throw new C0414(304, C0663.m5888(new StringBuilder().append(C0164.m3510(101, 19, 42)), this.f1846, "\"."));
            }
        }
    }

    @Override
    public void mo3385(int i, byte[] bArr) {
        if (this.f1722 == null) {
            long j = this.f1838 + ((long) i);
            this.f1838 = j;
            mo4406(0, j, bArr);
        }
    }
}
