package org.bouncycastle.asn1;

import com.payfort.fortpaymentsdk.constants.Constants;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.slf4j.Marker;

public class DERGeneralizedTime extends ASN1Object {
    String time;

    public DERGeneralizedTime(String str) {
        this.time = str;
        try {
            getDate();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    public DERGeneralizedTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.time = simpleDateFormat.format(date);
    }

    DERGeneralizedTime(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        this.time = new String(cArr);
    }

    private String calculateGMTOffset() {
        String str;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str = "-";
        } else {
            str = Marker.ANY_NON_NULL_MARKER;
        }
        int i = rawOffset / 3600000;
        int i2 = (rawOffset - (3600000 * i)) / TSConfig.DEFAULT_HTTP_TIMEOUT;
        try {
            if (timeZone.useDaylightTime() && timeZone.inDaylightTime(getDate())) {
                i += str.equals(Marker.ANY_NON_NULL_MARKER) ? 1 : -1;
            }
        } catch (ParseException unused) {
        }
        return "GMT" + str + convert(i) + ":" + convert(i2);
    }

    private String convert(int i) {
        return i < 10 ? "0" + i : Integer.toString(i);
    }

    public static DERGeneralizedTime getInstance(Object obj) {
        if (obj == null || (obj instanceof DERGeneralizedTime)) {
            return (DERGeneralizedTime) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DERGeneralizedTime getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DERGeneralizedTime)) ? getInstance(object) : new DERGeneralizedTime(((ASN1OctetString) object).getOctets());
    }

    private byte[] getOctets() {
        char[] charArray = this.time.toCharArray();
        byte[] bArr = new byte[charArray.length];
        for (int i = 0; i != charArray.length; i++) {
            bArr[i] = (byte) charArray[i];
        }
        return bArr;
    }

    private boolean hasFractionalSeconds() {
        return this.time.indexOf(46) == 14;
    }

    @Override
    boolean asn1Equals(DERObject dERObject) {
        if (dERObject instanceof DERGeneralizedTime) {
            return this.time.equals(((DERGeneralizedTime) dERObject).time);
        }
        return false;
    }

    @Override
    void encode(DEROutputStream dEROutputStream) throws IOException {
        dEROutputStream.writeEncoded(24, getOctets());
    }

    public Date getDate() throws ParseException {
        SimpleDateFormat simpleDateFormat;
        SimpleTimeZone simpleTimeZone;
        String strSubstring;
        int i;
        int i2;
        String str;
        StringBuilder sb;
        char cCharAt;
        String time = this.time;
        if (!time.endsWith("Z")) {
            if (this.time.indexOf(45) > 0 || this.time.indexOf(43) > 0) {
                time = getTime();
                simpleDateFormat = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSSz") : new SimpleDateFormat("yyyyMMddHHmmssz");
                simpleTimeZone = new SimpleTimeZone(0, "Z");
            } else {
                simpleDateFormat = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS") : new SimpleDateFormat("yyyyMMddHHmmss");
                simpleDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
            }
            if (hasFractionalSeconds()) {
                strSubstring = time.substring(14);
                i = 1;
                while (i < strSubstring.length() && '0' <= (cCharAt = strSubstring.charAt(i)) && cCharAt <= '9') {
                    i++;
                }
                i2 = i - 1;
                if (i2 > 3) {
                    str = strSubstring.substring(0, 4) + strSubstring.substring(i);
                    sb = new StringBuilder();
                } else if (i2 == 1) {
                    str = strSubstring.substring(0, i) + Constants.FORT_STATUS.INVALID_REQUEST + strSubstring.substring(i);
                    sb = new StringBuilder();
                } else if (i2 == 2) {
                    str = strSubstring.substring(0, i) + "0" + strSubstring.substring(i);
                    sb = new StringBuilder();
                }
                time = sb.append(time.substring(0, 14)).append(str).toString();
            }
            return simpleDateFormat.parse(time);
        }
        simpleDateFormat = hasFractionalSeconds() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'") : new SimpleDateFormat("yyyyMMddHHmmss'Z'");
        simpleTimeZone = new SimpleTimeZone(0, "Z");
        simpleDateFormat.setTimeZone(simpleTimeZone);
        if (hasFractionalSeconds()) {
            strSubstring = time.substring(14);
            i = 1;
            while (i < strSubstring.length()) {
                i++;
            }
            i2 = i - 1;
            if (i2 > 3) {
                str = strSubstring.substring(0, 4) + strSubstring.substring(i);
                sb = new StringBuilder();
            } else if (i2 == 1) {
                str = strSubstring.substring(0, i) + Constants.FORT_STATUS.INVALID_REQUEST + strSubstring.substring(i);
                sb = new StringBuilder();
            } else if (i2 == 2) {
                str = strSubstring.substring(0, i) + "0" + strSubstring.substring(i);
                sb = new StringBuilder();
            }
            time = sb.append(time.substring(0, 14)).append(str).toString();
        }
        return simpleDateFormat.parse(time);
    }

    public String getTime() {
        StringBuilder sbAppend;
        StringBuilder sbAppend2;
        String strCalculateGMTOffset;
        String str = this.time;
        if (str.charAt(str.length() - 1) != 'Z') {
            int length = this.time.length();
            int i = length - 5;
            char cCharAt = this.time.charAt(i);
            if (cCharAt == '-' || cCharAt == '+') {
                int i2 = length - 2;
                sbAppend = new StringBuilder().append(this.time.substring(0, i)).append("GMT").append(this.time.substring(i, i2)).append(":").append(this.time.substring(i2));
            } else {
                int length2 = this.time.length() - 3;
                char cCharAt2 = this.time.charAt(length2);
                if (cCharAt2 == '-' || cCharAt2 == '+') {
                    sbAppend2 = new StringBuilder().append(this.time.substring(0, length2)).append("GMT").append(this.time.substring(length2));
                    strCalculateGMTOffset = ":00";
                } else {
                    sbAppend2 = new StringBuilder().append(this.time);
                    strCalculateGMTOffset = calculateGMTOffset();
                }
            }
            return sbAppend.toString();
        }
        StringBuilder sb = new StringBuilder();
        String str2 = this.time;
        sbAppend2 = sb.append(str2.substring(0, str2.length() - 1));
        strCalculateGMTOffset = "GMT+00:00";
        sbAppend = sbAppend2.append(strCalculateGMTOffset);
        return sbAppend.toString();
    }

    public String getTimeString() {
        return this.time;
    }

    @Override
    public int hashCode() {
        return this.time.hashCode();
    }
}
