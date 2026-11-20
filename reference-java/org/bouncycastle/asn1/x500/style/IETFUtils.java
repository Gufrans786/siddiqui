package org.bouncycastle.asn1.x500.style;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERUniversalString;
import org.bouncycastle.asn1.x500.AttributeTypeAndValue;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500NameBuilder;
import org.bouncycastle.asn1.x500.X500NameStyle;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

public class IETFUtils {
    public static void appendTypeAndValue(StringBuffer stringBuffer, AttributeTypeAndValue attributeTypeAndValue, Hashtable hashtable) {
        String id = (String) hashtable.get(attributeTypeAndValue.getType());
        if (id == null) {
            id = attributeTypeAndValue.getType().getId();
        }
        stringBuffer.append(id);
        stringBuffer.append('=');
        stringBuffer.append(valueToString(attributeTypeAndValue.getValue()));
    }

    private static String bytesToString(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return new String(cArr);
    }

    public static String canonicalize(String str) {
        String lowerCase = Strings.toLowerCase(str.trim());
        if (lowerCase.length() > 0 && lowerCase.charAt(0) == '#') {
            DEREncodable dEREncodableDecodeObject = decodeObject(lowerCase);
            if (dEREncodableDecodeObject instanceof ASN1String) {
                lowerCase = Strings.toLowerCase(((ASN1String) dEREncodableDecodeObject).getString().trim());
            }
        }
        return stripInternalSpaces(lowerCase);
    }

    public static ASN1ObjectIdentifier decodeAttrName(String str, Hashtable hashtable) {
        if (Strings.toUpperCase(str).startsWith("OID.")) {
            return new ASN1ObjectIdentifier(str.substring(4));
        }
        if (str.charAt(0) >= '0' && str.charAt(0) <= '9') {
            return new ASN1ObjectIdentifier(str);
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) hashtable.get(Strings.toLowerCase(str));
        if (aSN1ObjectIdentifier != null) {
            return aSN1ObjectIdentifier;
        }
        throw new IllegalArgumentException("Unknown object id - " + str + " - passed to distinguished name");
    }

    private static ASN1Object decodeObject(String str) {
        try {
            return ASN1Object.fromByteArray(Hex.decode(str.substring(1)));
        } catch (IOException e) {
            throw new IllegalStateException("unknown encoding in name: " + e);
        }
    }

    public static RDN[] rDNsFromString(String str, X500NameStyle x500NameStyle) {
        X500NameTokenizer x500NameTokenizer = new X500NameTokenizer(str);
        X500NameBuilder x500NameBuilder = new X500NameBuilder(x500NameStyle);
        while (x500NameTokenizer.hasMoreTokens()) {
            String strNextToken = x500NameTokenizer.nextToken();
            int iIndexOf = strNextToken.indexOf(61);
            if (iIndexOf == -1) {
                throw new IllegalArgumentException("badly formated directory string");
            }
            String strSubstring = strNextToken.substring(0, iIndexOf);
            String strSubstring2 = strNextToken.substring(iIndexOf + 1);
            ASN1ObjectIdentifier aSN1ObjectIdentifierAttrNameToOID = x500NameStyle.attrNameToOID(strSubstring);
            if (strSubstring2.indexOf(43) > 0) {
                X500NameTokenizer x500NameTokenizer2 = new X500NameTokenizer(strSubstring2, '+');
                String strNextToken2 = x500NameTokenizer2.nextToken();
                Vector vector = new Vector();
                Vector vector2 = new Vector();
                while (true) {
                    vector.addElement(aSN1ObjectIdentifierAttrNameToOID);
                    vector2.addElement(strNextToken2);
                    if (!x500NameTokenizer2.hasMoreTokens()) {
                        break;
                    }
                    String strNextToken3 = x500NameTokenizer2.nextToken();
                    int iIndexOf2 = strNextToken3.indexOf(61);
                    String strSubstring3 = strNextToken3.substring(0, iIndexOf2);
                    strNextToken2 = strNextToken3.substring(iIndexOf2 + 1);
                    aSN1ObjectIdentifierAttrNameToOID = x500NameStyle.attrNameToOID(strSubstring3);
                }
                x500NameBuilder.addMultiValuedRDN(toOIDArray(vector), toValueArray(vector2));
            } else {
                x500NameBuilder.addRDN(aSN1ObjectIdentifierAttrNameToOID, strSubstring2);
            }
        }
        return x500NameBuilder.build().getRDNs();
    }

    public static String stripInternalSpaces(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char cCharAt = str.charAt(0);
            stringBuffer.append(cCharAt);
            int i = 1;
            while (i < str.length()) {
                char cCharAt2 = str.charAt(i);
                if (cCharAt != ' ' || cCharAt2 != ' ') {
                    stringBuffer.append(cCharAt2);
                }
                i++;
                cCharAt = cCharAt2;
            }
        }
        return stringBuffer.toString();
    }

    private static ASN1ObjectIdentifier[] toOIDArray(Vector vector) {
        int size = vector.size();
        ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = new ASN1ObjectIdentifier[size];
        for (int i = 0; i != size; i++) {
            aSN1ObjectIdentifierArr[i] = (ASN1ObjectIdentifier) vector.elementAt(i);
        }
        return aSN1ObjectIdentifierArr;
    }

    private static String[] toValueArray(Vector vector) {
        int size = vector.size();
        String[] strArr = new String[size];
        for (int i = 0; i != size; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    public static ASN1Encodable valueFromHexString(String str, int i) throws IOException {
        String lowerCase = Strings.toLowerCase(str);
        int length = (lowerCase.length() - i) / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 != length; i2++) {
            int i3 = (i2 * 2) + i;
            char cCharAt = lowerCase.charAt(i3);
            char cCharAt2 = lowerCase.charAt(i3 + 1);
            if (cCharAt < 'a') {
                bArr[i2] = (byte) ((cCharAt - '0') << 4);
            } else {
                bArr[i2] = (byte) ((cCharAt - 'W') << 4);
            }
            if (cCharAt2 < 'a') {
                bArr[i2] = (byte) (((byte) (cCharAt2 - '0')) | bArr[i2]);
            } else {
                bArr[i2] = (byte) (((byte) (cCharAt2 - 'W')) | bArr[i2]);
            }
        }
        return ASN1Object.fromByteArray(bArr);
    }

    public static String valueToString(ASN1Encodable aSN1Encodable) {
        StringBuilder sb;
        String strBytesToString;
        int length;
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        if ((aSN1Encodable instanceof ASN1String) && !(aSN1Encodable instanceof DERUniversalString)) {
            strBytesToString = ((ASN1String) aSN1Encodable).getString();
            if (strBytesToString.length() > 0 && strBytesToString.charAt(0) == '#') {
                sb = new StringBuilder("\\");
            }
            stringBuffer.append(strBytesToString);
            length = stringBuffer.length();
            if (stringBuffer.length() >= 2 && stringBuffer.charAt(0) == '\\' && stringBuffer.charAt(1) == '#') {
                i = 2;
            }
            while (i != length) {
                if (stringBuffer.charAt(i) != ',' || stringBuffer.charAt(i) == '\"' || stringBuffer.charAt(i) == '\\' || stringBuffer.charAt(i) == '+' || stringBuffer.charAt(i) == '=' || stringBuffer.charAt(i) == '<' || stringBuffer.charAt(i) == '>' || stringBuffer.charAt(i) == ';') {
                    stringBuffer.insert(i, "\\");
                    i++;
                    length++;
                }
                i++;
            }
            return stringBuffer.toString();
        }
        sb = new StringBuilder("#");
        strBytesToString = bytesToString(Hex.encode(aSN1Encodable.getDERObject().getDEREncoded()));
        strBytesToString = sb.append(strBytesToString).toString();
        stringBuffer.append(strBytesToString);
        length = stringBuffer.length();
        if (stringBuffer.length() >= 2) {
            i = 2;
        }
        while (i != length) {
            if (stringBuffer.charAt(i) != ',') {
                stringBuffer.insert(i, "\\");
                i++;
                length++;
            } else {
                stringBuffer.insert(i, "\\");
                i++;
                length++;
            }
            i++;
        }
        return stringBuffer.toString();
    }
}
