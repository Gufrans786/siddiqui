package nts;

import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C0508 {

    public static final Map<String, String> f2854;

    public static final Map<String, List<String>> f2855;

    public final Map<String, String> f2856;

    public final Map<String, String> f2857;

    static {
        HashMap map = new HashMap();
        map.put(C0599.f3309, C0599.f3308);
        map.put(C0435.f2244, C0435.f2243);
        map.put(C0634.f3484, C0634.f3483);
        map.put(C0334.f1792, C0334.f1791);
        map.put(C0321.f1729, C0321.f1728);
        map.put(C0562.f3172, C0562.f3171);
        f2854 = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put(C0599.f3309, Arrays.asList(C0599.f3306, C0599.f3307, C0599.f3305));
        map2.put(C0435.f2244, Collections.singletonList(C0435.f2242));
        map2.put(C0634.f3484, Collections.singletonList(C0634.f3482));
        map2.put(C0334.f1792, Collections.singletonList(C0334.f1790));
        map2.put(C0321.f1729, Collections.singletonList(C0321.f1727));
        map2.put(C0562.f3172, Collections.singletonList(C0562.f3170));
        f2855 = Collections.unmodifiableMap(map2);
    }

    public C0508(C0400 c0400) {
        this.f2857 = c0400.f2088;
        this.f2856 = c0400.f2079;
    }

    public C0281 m5199(String str) throws C0369 {
        Map<String, String> map = this.f2857;
        String str2 = null;
        String str3 = map != null ? map.get(str) : null;
        if (str3 != null && str3.length() != 0) {
            str2 = str3;
        } else if (str != null && str.length() != 0) {
            str2 = f2854.get(str.toUpperCase());
        }
        if (str2 == null || str2.length() == 0) {
            throw new SDKRuntimeException(C0558.m5459(0, 26, 29));
        }
        return new C0281(99, str2, "", "*");
    }

    public List<C0281> m5200(String str) throws C0369 {
        ArrayList arrayList;
        String str2;
        Map<String, String> map = this.f2856;
        List<String> list = null;
        if (map == null || (str2 = map.get(str)) == null || str2.length() <= 0) {
            arrayList = null;
        } else {
            String strM5459 = C0558.m5459(26, 26, 94);
            arrayList = new ArrayList();
            String[] strArrSplit = str2.split(strM5459);
            if (strArrSplit.length == 1 && strArrSplit[0].equals(str2)) {
                throw new SDKRuntimeException(C0558.m5459(52, 14, 13));
            }
            for (String str3 : strArrSplit) {
                String strTrim = str3.trim();
                if (strTrim.length() > 0) {
                    arrayList.add(strTrim + strM5459);
                }
            }
        }
        if (arrayList != null && arrayList.size() != 0) {
            list = arrayList;
        } else if (str != null && str.length() != 0) {
            list = f2855.get(str.toUpperCase());
        }
        if (list == null || list.size() == 0) {
            throw new SDKRuntimeException(C0558.m5459(66, 26, 26));
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(new C0281(99, it.next(), "", "*"));
        }
        return arrayList2;
    }
}
