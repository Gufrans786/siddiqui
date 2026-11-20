package nts;

import com.google.apphosting.datastore.testing.DatastoreTestTrace;

public abstract class AbstractC0116 {

    public static AbstractC0116 f198 = new C0315();

    public static boolean m3182() {
        return f198 instanceof C0303;
    }

    public static void m3184(Object obj) {
        if (obj instanceof AbstractC0116) {
            f198 = (AbstractC0116) obj;
            return;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str == null || str.length() == 0 || C0259.m3872(str, C0315.f1692)) {
                f198 = new C0315();
                return;
            }
            try {
                f198 = new C0162(str);
            } catch (Exception e) {
                throw new C0414(e, DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0642.m5849(1064, 39, 38) + C0414.m4672(e));
            }
        }
    }

    public abstract AbstractC0313 mo3185(String str) throws C0537;

    public abstract AbstractC0317 mo3186(String str) throws C0537;

    public abstract AbstractC0403 mo3187(String str) throws C0537;

    public abstract AbstractC0264 mo3188(String str) throws C0537;

    public abstract AbstractC0317 mo3189(String str) throws C0537;

    public abstract String mo3190();

    public abstract AbstractC0645 mo3191(String str) throws C0537;

    public static AbstractC0116 m3183(int i) {
        if (2 == i) {
            return new C0303();
        }
        if (3 == i) {
            return new C0118();
        }
        return new C0315();
    }
}
