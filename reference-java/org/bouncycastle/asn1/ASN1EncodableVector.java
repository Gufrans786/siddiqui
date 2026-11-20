package org.bouncycastle.asn1;

import java.util.Vector;

public class ASN1EncodableVector extends DEREncodableVector {
    Vector v = new Vector();

    @Override
    public void add(DEREncodable dEREncodable) {
        this.v.addElement(dEREncodable);
    }

    @Override
    public DEREncodable get(int i) {
        return (DEREncodable) this.v.elementAt(i);
    }

    @Override
    public int size() {
        return this.v.size();
    }
}
