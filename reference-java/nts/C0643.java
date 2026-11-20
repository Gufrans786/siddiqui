package nts;

import com.facebook.imageutils.JfifUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

public class C0643 extends C0622 {
    public C0643(InputStream inputStream) throws IOException {
        super(inputStream instanceof PushbackInputStream ? (PushbackInputStream) inputStream : new PushbackInputStream(inputStream, 4096), new C0423(), 4096);
        this.f3441 = true;
    }

    @Override
    public void close() throws IOException {
        InterfaceC0452 interfaceC0452;
        if (this.f3449) {
            return;
        }
        int i = this.f3443;
        if (i != 0 && (interfaceC0452 = this.f3439) != null && i != interfaceC0452.mo4590()) {
            throw new C0414(127, C0558.m5481("5\u001b\u001d\u0015W\u0018\u0014\u0019\u001eZ\f\u0016\r\u001b\u001c\u0018\u0002\u0000\r\u0005IjWY\u001d}aqi\u0016_QTVVB\u0011G\\\fDD]IEOC\n\u0002?1u\u0015\t\u0019\u0001~79<>>*y/4d,,5!-'+bTig#C_OW(aojhh|/yb2zzcw{q}4f[U\u0011qm}e\u001aS]XZZN\u001dKP\u0000HHQEICO\u0006Àýó·×ËÛÃ¼õûþüüè»íö¦îî÷ãïåé \u0089´ºþ\u009e\u0082\u0092\u008aõ¼²·µµ¡ò¤¿ï§§¾ª¦¬ é·\u008a\u0084À¤´¦ÉØØÉ\u008b\u0087\u008b\u008e\u0087\u0080\u0087\u009cÐ\u009e\u0085Õ\u009d\u0095\u0099\u0096\u008a\u008d\u009b\u009e\u0088í\u009d ®ê\u008e\u009e\u008cî¢¨¦¡®·²«ù±¨ú´²¼±£¢¶±¡ú", JfifUtil.MARKER_SOI, 30, 15));
        }
        if (this.f3441) {
            this.f3442.close();
        }
        this.f3449 = true;
    }

    @Override
    public void mo4299() throws IOException {
        byte[] bArrM5713 = m5713(8);
        long jM5712 = m5712(bArrM5713, 0, 4);
        m5712(bArrM5713, 4, 4);
        if (jM5712 != this.f3439.mo4590()) {
            throw new C0414(127, C0558.m5481("5\u001b\u001d\u0015W\u0018\u0014\u0019\u001eZ\f\u0016\r\u001b\u001c\u0018\u0002\u0000\r\u0005IjWY\u001d}aqi\u0016_QTVVB\u0011G\\\fDD]IEOC\n\u0002?1u\u0015\t\u0019\u0001~79<>>*y/4d,,5!-'+bTig#C_OW(aojhh|/yb2zzcw{q}4f[U\u0011qm}e\u001aS]XZZN\u001dKP\u0000HHQEICO\u0006Àýó·×ËÛÃ¼õûþüüè»íö¦îî÷ãïåé \u0089´ºþ\u009e\u0082\u0092\u008aõ¼²·µµ¡ò¤¿ï§§¾ª¦¬ é·\u008a\u0084À¤´¦ÉØØÉ\u008b\u0087\u008b\u008e\u0087\u0080\u0087\u009cÐ\u009e\u0085Õ\u009d\u0095\u0099\u0096\u008a\u008d\u009b\u009e\u0088í\u009d ®ê\u008e\u009e\u008cî¢¨¦¡®·²«ù±¨ú´²¼±£¢¶±¡ú", 183, 33, 117));
        }
    }
}
