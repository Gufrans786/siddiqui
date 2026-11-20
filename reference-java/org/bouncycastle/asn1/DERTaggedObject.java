package org.bouncycastle.asn1;

import ch.qos.logback.core.net.SyslogConstants;
import java.io.IOException;

public class DERTaggedObject extends ASN1TaggedObject {
    private static final byte[] ZERO_BYTES = new byte[0];

    public DERTaggedObject(int i) {
        super(false, i, new DERSequence());
    }

    public DERTaggedObject(int i, DEREncodable dEREncodable) {
        super(i, dEREncodable);
    }

    public DERTaggedObject(boolean z, int i, DEREncodable dEREncodable) {
        super(z, i, dEREncodable);
    }

    @Override
    void encode(DEROutputStream dEROutputStream) throws IOException {
        boolean z = this.empty;
        int i = SyslogConstants.LOG_LOCAL4;
        if (z) {
            dEROutputStream.writeEncoded(SyslogConstants.LOG_LOCAL4, this.tagNo, ZERO_BYTES);
            return;
        }
        byte[] encoded = this.obj.getDERObject().getEncoded(ASN1Encodable.DER);
        if (this.explicit) {
            dEROutputStream.writeEncoded(SyslogConstants.LOG_LOCAL4, this.tagNo, encoded);
            return;
        }
        if ((encoded[0] & 32) == 0) {
            i = 128;
        }
        dEROutputStream.writeTag(i, this.tagNo);
        dEROutputStream.write(encoded, 1, encoded.length - 1);
    }
}
