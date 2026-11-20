package nts;

import androidx.appcompat.app.AppCompatDelegate;
import com.caverock.androidsvg.SVGParser;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import sa.lg.android.locate.BuildConfig;

public class C0440 {

    public String f2268;

    public boolean f2269;

    public int f2270 = -1;

    public String f2271;

    public String f2272;

    public C0440(String str) {
        this.f2272 = "";
        this.f2271 = "";
        this.f2269 = false;
        this.f2268 = "";
        if (str == null || str.length() == 0) {
            return;
        }
        int iIndexOf = str.indexOf("=");
        if (iIndexOf == -1) {
            this.f2269 = true;
            this.f2272 = str.trim();
        } else {
            this.f2272 = str.substring(0, iIndexOf).trim();
            if (iIndexOf < str.length() - 1) {
                this.f2271 = str.substring(iIndexOf + 1).trim();
            }
            if (this.f2271.startsWith("\"")) {
                int length = this.f2271.length();
                this.f2271 = this.f2271.substring(1, this.f2271.charAt(length + (-1)) == '\"' ? length - 1 : length);
            }
        }
        int iIndexOf2 = this.f2272.indexOf("[");
        if (iIndexOf2 != -1) {
            int iIndexOf3 = this.f2272.indexOf("]", iIndexOf2);
            iIndexOf3 = iIndexOf3 < 0 ? this.f2272.length() : iIndexOf3;
            if (iIndexOf3 != iIndexOf2) {
                this.f2268 = this.f2272.substring(iIndexOf2 + 1, iIndexOf3).trim();
            }
            this.f2272 = this.f2272.substring(0, iIndexOf2) + (iIndexOf3 != this.f2272.length() ? this.f2272.substring(iIndexOf3 + 1) : "");
        }
    }

    public int m4805() throws C0414 {
        String strTrim = this.f2271.toLowerCase().trim();
        if (strTrim.equals(BuildConfig.IOS_VERSION_CODE) || strTrim.equals(C0642.m5850(45, 3, 68)) || strTrim.equals(C0642.m5850(48, 4, 78))) {
            return 1;
        }
        if (strTrim.equals("0") || strTrim.equals(SVGParser.XML_STYLESHEET_ATTR_ALTERNATE_NO) || strTrim.equals(C0642.m5850(52, 5, 39))) {
            return 0;
        }
        try {
            return strTrim.startsWith("0x") ? (int) C0259.m3860(strTrim.substring(2)) : Integer.parseInt(strTrim);
        } catch (Exception unused) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0642.m5850(57, 29, 9)).append(this.f2272).append(C0642.m5850(86, 4, 31)), this.f2271, "]"));
        }
    }

    public long m4806() throws C0414 {
        String strTrim = this.f2271.toLowerCase().trim();
        try {
            return strTrim.startsWith("0x") ? C0259.m3879(strTrim.substring(2)) : Long.parseLong(strTrim);
        } catch (Exception unused) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0642.m5850(90, 26, 65)).append(this.f2272).append(C0642.m5850(116, 4, 41)), this.f2271, "]"));
        }
    }

    public String m4807() {
        return this.f2271;
    }

    public String m4808() {
        return this.f2271;
    }

    public boolean m4809() throws C0414 {
        String strTrim = this.f2271.toLowerCase().trim();
        if (strTrim.equals(BuildConfig.IOS_VERSION_CODE) || strTrim.equals(C0642.m5850(0, 3, 37)) || strTrim.equals(C0642.m5850(3, 4, 114))) {
            return true;
        }
        if (strTrim.equals("0") || strTrim.equals(SVGParser.XML_STYLESHEET_ATTR_ALTERNATE_NO) || strTrim.equals(C0642.m5850(7, 5, 90))) {
            return false;
        }
        throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0663.m5888(new StringBuilder().append(C0642.m5850(12, 29, 4)).append(this.f2272).append(C0642.m5850(41, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY)), this.f2271, "]"));
    }

    public String m4810() {
        return this.f2272;
    }

    public boolean m4811() {
        return this.f2269;
    }

    public int m4812() {
        if (this.f2270 < 0) {
            try {
                this.f2270 = Integer.parseInt(this.f2268);
            } catch (Exception unused) {
            }
        }
        return this.f2270;
    }

    public boolean m4813(String str) {
        return C0259.m3872(this.f2272, str);
    }
}
