package org.bouncycastle.asn1;

import java.io.IOException;
import org.bouncycastle.util.Arrays;

public class DERUnknownTag extends DERObject {
    private byte[] data;
    private boolean isConstructed;
    private int tag;

    public DERUnknownTag(int i, byte[] bArr) {
        this(false, i, bArr);
    }

    public DERUnknownTag(boolean z, int i, byte[] bArr) {
        this.isConstructed = z;
        this.tag = i;
        this.data = bArr;
    }

    @Override
    void encode(DEROutputStream dEROutputStream) throws IOException {
        dEROutputStream.writeEncoded(this.isConstructed ? 32 : 0, this.tag, this.data);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof DERUnknownTag)) {
            return false;
        }
        DERUnknownTag dERUnknownTag = (DERUnknownTag) obj;
        return this.isConstructed == dERUnknownTag.isConstructed && this.tag == dERUnknownTag.tag && Arrays.areEqual(this.data, dERUnknownTag.data);
    }

    public byte[] getData() {
        return this.data;
    }

    public int getTag() {
        return this.tag;
    }

    @Override
    public int hashCode() {
        return ((this.isConstructed ? -1 : 0) ^ this.tag) ^ Arrays.hashCode(this.data);
    }

    public boolean isConstructed() {
        return this.isConstructed;
    }
}
