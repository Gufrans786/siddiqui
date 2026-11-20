package nts;

import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import java.util.Hashtable;

public class C0159 {

    public static final String f500 = C0164.m3495(18959, 15, 61);

    public static final String f492 = C0164.m3495(18974, 14, 57);

    public static final String f493 = C0164.m3495(18988, 16, 69);

    public static final String f496 = C0164.m3495(19004, 22, 5);

    public static final String f506 = C0164.m3495(19026, 23, 16);

    public static final String f494 = C0164.m3495(19049, 23, 28);

    public static final String f495 = C0164.m3495(19072, 18, 43);

    public static final String f499 = C0164.m3495(19090, 28, 124);

    public static final String f502 = C0164.m3495(19118, 18, 37);

    public static final String f503 = C0164.m3495(19136, 20, 60);

    public static final String f498 = C0164.m3495(19156, 21, 124);

    public static final String f501 = C0164.m3495(19177, 13, 94);

    public static final String f504 = C0164.m3495(19190, 16, 14);

    public static final String f497 = C0164.m3495(19206, 25, 43);

    public static final String f505 = C0164.m3495(19231, 24, 33);

    public C0433 f509 = null;

    public C0538 f508 = null;

    public Hashtable f507 = new Hashtable();

    public void m3448(String str) throws C0414 {
        try {
            String strReplace = str.replace("\r\n", "\n").replace("\r", "\n");
            int iIndexOf = strReplace.indexOf("\n");
            if (iIndexOf < 0) {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3495(19255, 67, 7));
            }
            String strSubstring = strReplace.substring(0, iIndexOf);
            C0530 c0530 = new C0530(C0671.m5937(C0259.m3889(strReplace, iIndexOf + 1, strReplace.length()), C0164.m3495(19322, 12, 112)));
            c0530.m5378();
            if (c0530.m5382() != 14) {
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3495(19334, 33, 28));
            }
            this.f507.put(f500, strSubstring);
            this.f507.put(f492, Integer.valueOf(c0530.m5365(0).m5389()));
            this.f507.put(f493, c0530.m5365(1).m5373());
            this.f507.put(f496, c0530.m5365(2).m5373());
            this.f507.put(f506, c0530.m5365(3).m5373());
            this.f507.put(f494, c0530.m5365(4).m5373());
            this.f507.put(f495, c0530.m5365(5).m5373());
            this.f507.put(f499, c0530.m5365(6).m5373());
            this.f507.put(f502, c0530.m5365(7).m5373());
            this.f507.put(f503, c0530.m5365(8).m5373());
            String strM3892 = C0259.m3892(c0530.m5365(9).m5373());
            this.f507.put(f498, strM3892);
            this.f507.put(f501, c0530.m5365(10).m5373());
            this.f507.put(f504, C0259.m3853(c0530.m5365(11).m5373()));
            this.f507.put(f497, Long.valueOf(Long.parseLong(C0259.m3892(c0530.m5365(12).m5373()), 10)));
            this.f507.put(f505, Long.valueOf(Long.parseLong(C0259.m3892(c0530.m5365(13).m5373()), 10)));
            if (strM3892.startsWith(C0164.m3495(19367, 27, 32))) {
                C0433 c0433 = new C0433(C0259.m3905(C0259.m3902(strM3892), C0164.m3495(19394, 11, 25)));
                this.f509 = c0433;
                this.f508 = c0433.f2240;
            } else {
                C0538 c0538 = new C0538();
                this.f508 = c0538;
                C0671.m5907(c0538, strM3892);
            }
            this.f508.f3112 = this.f507;
        } catch (Exception e) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0164.m3495(19405, 36, 112) + C0414.m4672(e));
        }
    }
}
