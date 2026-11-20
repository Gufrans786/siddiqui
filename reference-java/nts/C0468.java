package nts;

public class C0468 {

    public AbstractC0645 f2692;

    public C0468(AbstractC0645 abstractC0645, int i) {
        this.f2692 = abstractC0645;
    }

    public void m5130() {
        if (C0320.f1718) {
            C0367 c0367 = (C0367) this.f2692;
            c0367.f1931 = null;
            c0367.f1926 = null;
            return;
        }
        C0506 c0506 = (C0506) this.f2692;
        c0506.f2844 = null;
        c0506.f2849 = null;
        c0506.f2842 = null;
        c0506.f2843 = null;
        c0506.f2847 = null;
        c0506.f2850 = null;
        c0506.f2845 = null;
        c0506.f2846 = null;
    }

    public int m5132() {
        try {
            return C0308.m4232(this.f2692);
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public void m5133(C0145 c0145) throws C0537 {
        if (C0320.f1718) {
            ((C0367) this.f2692).m4443(c0145);
        } else {
            ((C0506) this.f2692).m5191(c0145);
        }
    }

    public byte[] m5135(byte[] bArr, boolean z, byte[] bArr2, Object obj, String str) throws C0537 {
        if (C0320.f1718) {
            return ((C0367) this.f2692).m4456(bArr, z, bArr2, obj, str);
        }
        return ((C0506) this.f2692).m5197(bArr, z, bArr2, obj, str);
    }

    public byte[] m5131(byte[] bArr, boolean z, byte[] bArr2, Object obj, String str) throws C0537 {
        if (C0320.f1718) {
            return ((C0367) this.f2692).m4444(bArr, z, bArr2, obj, str);
        }
        return ((C0506) this.f2692).m5190(bArr, z, bArr2, obj, str);
    }

    public boolean m5134(byte[] bArr, String str, byte[] bArr2, boolean z, int i, boolean z2) throws C0537 {
        if (C0320.f1718) {
            return ((C0367) this.f2692).m4451(bArr, str, bArr2, z);
        }
        return ((C0506) this.f2692).m5193(bArr, str, bArr2, z, str, i, z2);
    }
}
