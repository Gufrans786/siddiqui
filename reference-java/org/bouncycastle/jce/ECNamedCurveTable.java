package org.bouncycastle.jce;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.nist.NISTNamedCurves;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.bouncycastle.asn1.x9.X962NamedCurves;

public class ECNamedCurveTable {
    private static void addEnumeration(Vector vector, Enumeration enumeration) {
        while (enumeration.hasMoreElements()) {
            vector.addElement(enumeration.nextElement());
        }
    }

    public static Enumeration getNames() {
        Vector vector = new Vector();
        addEnumeration(vector, X962NamedCurves.getNames());
        addEnumeration(vector, SECNamedCurves.getNames());
        addEnumeration(vector, NISTNamedCurves.getNames());
        addEnumeration(vector, TeleTrusTNamedCurves.getNames());
        return vector.elements();
    }

    public static org.bouncycastle.jce.spec.ECNamedCurveParameterSpec getParameterSpec(java.lang.String r7) {
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.ECNamedCurveTable.getParameterSpec(java.lang.String):org.bouncycastle.jce.spec.ECNamedCurveParameterSpec");
    }
}
