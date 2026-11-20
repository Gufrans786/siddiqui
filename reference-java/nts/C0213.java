package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public class C0213 extends C0418 {

    public C0322 f793 = null;

    public C0464 f794 = null;

    public C0301 f795 = new C0301(0);

    public boolean f792 = false;

    @Override
    public int mo3411(byte[] bArr, int i) {
        int iMo3411;
        if (this.f2145) {
            return i;
        }
        C0322 c0322 = this.f793;
        if (c0322 != null && c0322.f2145) {
            this.f793 = null;
        }
        C0464 c0464 = this.f794;
        if (c0464 != null && c0464.f2145) {
            this.f794 = null;
        }
        if (!this.f792) {
            if (i >= bArr.length) {
                this.f795.m4181(bArr, i, i);
                return i;
            }
            byte b = bArr[i];
            if ((b & 255) == 160) {
                this.f794 = new C0464();
                this.f792 = true;
            } else {
                if ((b & 255) != 48) {
                    throw new C0414(222, C0177.m3555(487, 64, 52));
                }
                this.f793 = new C0322();
                this.f792 = true;
            }
        }
        C0464 c0465 = this.f794;
        if (c0465 != null) {
            iMo3411 = c0465.mo3411(bArr, i);
            C0322 c0323 = this.f793;
            this.f2141 = c0323.f2141;
            this.f2146 = c0323.f2146;
            this.f2145 = this.f794.f2145;
        } else {
            C0322 c0324 = this.f793;
            if (c0324 != null) {
                iMo3411 = c0324.mo3411(bArr, i);
                C0322 c0325 = this.f793;
                this.f2141 = c0325.f2141;
                this.f2146 = c0325.f2146;
                this.f2145 = c0325.f2145;
            } else {
                iMo3411 = i;
            }
        }
        this.f795.m4181(bArr, i, iMo3411);
        return iMo3411;
    }

    @Override
    public byte[] mo3690() {
        if (this.f2145) {
            C0301 c0301 = this.f795;
            if (c0301.f1615 > 0) {
                return c0301.m4182();
            }
        }
        return super.mo3690();
    }

    @Override
    public void mo3111(C0530 c0530) throws C0414 {
        C0322 c0322 = this.f793;
        if (c0322 == null && this.f794 == null) {
            throw new C0414(226, C0177.m3555(TypedValues.CycleType.TYPE_PATH_ROTATE, 71, 110));
        }
        if (c0322 != null) {
            c0322.mo3111(c0530);
            return;
        }
        C0464 c0464 = this.f794;
        if (c0464 != null) {
            c0464.mo3111(c0530);
        }
    }
}
