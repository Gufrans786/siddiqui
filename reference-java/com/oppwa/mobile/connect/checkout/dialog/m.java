package com.oppwa.mobile.connect.checkout.dialog;

import com.transistorsoft.locationmanager.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

class m {
    private static final Map<String, String> a;
    private static final Map<String, String> b;
    private static final Map<String, String> c;

    static {
        ArrayList arrayList = new ArrayList(Arrays.asList(Locale.getISOCountries()));
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new Locale("", (String) it.next()));
        }
        a = a(arrayList2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        b = linkedHashMap;
        linkedHashMap.put("AL", "Alabama");
        linkedHashMap.put("AK", "Alaska");
        linkedHashMap.put("AZ", "Arizona");
        linkedHashMap.put("AR", "Arkansas");
        linkedHashMap.put("CA", "California");
        linkedHashMap.put("CO", "Colorado");
        linkedHashMap.put("CT", "Connecticut");
        linkedHashMap.put("DE", "Delaware");
        linkedHashMap.put("DC", "District Of Columbia");
        linkedHashMap.put("FL", "Florida");
        linkedHashMap.put("GA", "Georgia");
        linkedHashMap.put("HI", "Hawaii");
        linkedHashMap.put("ID", "Idaho");
        linkedHashMap.put("IL", "Illinois");
        linkedHashMap.put("IN", "Indiana");
        linkedHashMap.put("IA", "Iowa");
        linkedHashMap.put("KS", "Kansas");
        linkedHashMap.put("KY", "Kentucky");
        linkedHashMap.put("LA", "Louisiana");
        linkedHashMap.put("ME", "Maine");
        linkedHashMap.put("MD", "Maryland");
        linkedHashMap.put("MA", "Massachusetts");
        linkedHashMap.put("MI", "Michigan");
        linkedHashMap.put("MN", "Minnesota");
        linkedHashMap.put("MS", "Mississippi");
        linkedHashMap.put("MO", "Missouri");
        linkedHashMap.put("MT", "Montana");
        linkedHashMap.put("NE", "Nebraska");
        linkedHashMap.put("NV", "Nevada");
        linkedHashMap.put("NH", "New Hampshire");
        linkedHashMap.put("NJ", "New Jersey");
        linkedHashMap.put("NM", "New Mexico");
        linkedHashMap.put("NY", "New York");
        linkedHashMap.put("NC", "North Carolina");
        linkedHashMap.put("ND", "North Dakota");
        linkedHashMap.put("OH", "Ohio");
        linkedHashMap.put("OK", "Oklahoma");
        linkedHashMap.put("OR", "Oregon");
        linkedHashMap.put("PA", "Pennsylvania");
        linkedHashMap.put("RI", "Rhode Island");
        linkedHashMap.put("SC", "South Carolina");
        linkedHashMap.put("SD", "South Dakota");
        linkedHashMap.put("TN", "Tennessee");
        linkedHashMap.put("TX", "Texas");
        linkedHashMap.put("UT", "Utah");
        linkedHashMap.put("VT", "Vermont");
        linkedHashMap.put("VA", "Virginia");
        linkedHashMap.put("WA", "Washington");
        linkedHashMap.put("WV", "West Virginia");
        linkedHashMap.put("WI", "Wisconsin");
        linkedHashMap.put("WY", "Wyoming");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        c = linkedHashMap2;
        linkedHashMap2.put("AB", "Alberta");
        linkedHashMap2.put("BC", "British Columbia");
        linkedHashMap2.put("MB", "Manitoba");
        linkedHashMap2.put("NB", "New Brunswick");
        linkedHashMap2.put("NL", "Newfoundland and Labrador");
        linkedHashMap2.put("NS", "Nova Scotia");
        linkedHashMap2.put(Constants.a.a, "Ontario");
        linkedHashMap2.put("PE", "Prince Edward Island");
        linkedHashMap2.put("QC", "Quebec");
        linkedHashMap2.put("SK", "Saskatchewan");
        linkedHashMap2.put("NT", "Northwest Territories");
        linkedHashMap2.put("NU", "Nunavut");
        linkedHashMap2.put("YT", "Yukon");
    }

    private static Map<String, String> a(List<Locale> list) {
        Collections.sort(list, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return m.a((Locale) obj, (Locale) obj2);
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Locale locale : list) {
            linkedHashMap.put(locale.getCountry(), locale.getDisplayCountry());
        }
        return linkedHashMap;
    }

    static Map<String, String> b() {
        return a;
    }

    static Map<String, String> c() {
        return b;
    }

    public static int a(Locale locale, Locale locale2) {
        return locale.getDisplayCountry().compareTo(locale2.getDisplayCountry());
    }

    static Map<String, String> a() {
        return c;
    }
}
