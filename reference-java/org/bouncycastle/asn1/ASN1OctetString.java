package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

public abstract class ASN1OctetString extends ASN1Object implements ASN1OctetStringParser {
    byte[] string;

    public ASN1OctetString(DEREncodable dEREncodable) {
        try {
            this.string = dEREncodable.getDERObject().getEncoded(ASN1Encodable.DER);
        } catch (IOException e) {
            throw new IllegalArgumentException("Error processing object : " + e.toString());
        }
    }

    public ASN1OctetString(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("string cannot be null");
        }
        this.string = bArr;
    }

    public static ASN1OctetString getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1OctetString)) {
            return (ASN1OctetString) obj;
        }
        if (obj instanceof ASN1TaggedObject) {
            return getInstance(((ASN1TaggedObject) obj).getObject());
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static ASN1OctetString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof ASN1OctetString)) ? getInstance(object) : BERConstructedOctetString.fromSequence(ASN1Sequence.getInstance(object));
    }

    @Override
    boolean asn1Equals(DERObject dERObject) {
        if (dERObject instanceof ASN1OctetString) {
            return Arrays.areEqual(this.string, ((ASN1OctetString) dERObject).string);
        }
        return false;
    }

    @Override
    abstract void encode(DEROutputStream dEROutputStream) throws IOException;

    @Override
    public DERObject getLoadedObject() {
        return getDERObject();
    }

    @Override
    public InputStream getOctetStream() {
        return new ByteArrayInputStream(this.string);
    }

    public byte[] getOctets() {
        return this.string;
    }

    @Override
    public int hashCode() {
        return Arrays.hashCode(getOctets());
    }

    public ASN1OctetStringParser parser() {
        return this;
    }

    public String toString() {
        return "#".concat(new String(Hex.encode(this.string)));
    }
}
