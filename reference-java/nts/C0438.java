package nts;

import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import java.security.Key;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class C0438 extends AbstractC0403 {

    public String f2259;

    public Mac f2262 = null;

    public Key f2260 = null;

    public boolean f2261 = false;

    public C0438(String str) throws C0537 {
        int i;
        this.f2259 = str;
        if (C0259.m3856(str)) {
            i = -1;
        } else if (str.endsWith(C0177.m3560(101, 4, 86))) {
            i = SyslogConstants.LOG_LOCAL4;
        } else if (str.endsWith(C0177.m3560(105, 6, 31))) {
            i = 256;
        } else if (str.endsWith(C0177.m3560(111, 6, 61))) {
            i = 224;
        } else if (str.endsWith(C0177.m3560(117, 6, 111))) {
            i = BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT;
        } else if (str.endsWith(C0177.m3560(123, 6, 46))) {
            i = 512;
        } else if (str.endsWith(C0177.m3560(129, 3, 98))) {
            i = 128;
        } else {
            i = -1;
        }
        this.f1703 = i;
        mo3250();
    }

    @Override
    public void mo4637(byte[] bArr) throws C0537 {
        if (this.f2261) {
            throw new C0537(C0177.m3560(57, 38, 67));
        }
        this.f2260 = new SecretKeySpec(bArr, this.f2259);
    }

    @Override
    public void mo3250() throws C0537 {
        try {
            this.f2262 = Mac.getInstance(this.f2259, C0177.m3560(95, 6, 105));
            this.f2261 = false;
        } catch (Exception e) {
            throw new C0537(e.getMessage());
        }
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) throws C0537 {
        if (!this.f2261) {
            this.f2261 = true;
            try {
                this.f2262.init(this.f2260);
            } catch (Exception e) {
                throw new C0537(e.getMessage());
            }
        }
        this.f2262.update(bArr, i, i2);
    }

    @Override
    public byte[] mo3413() throws C0537 {
        this.f2261 = false;
        return this.f2262.doFinal();
    }
}
