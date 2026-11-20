package com.oppwa.mobile.connect.payment;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.oppwa.mobile.connect.checkout.dialog.PaymentButtonFragment;
import com.oppwa.mobile.connect.utils.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONException;
import org.json.JSONObject;

public class BrandsValidation implements Parcelable {
    public static final Parcelable.Creator<BrandsValidation> CREATOR = new a();
    private static final String f = "com.oppwa.mobile.connect.payment.BrandsValidation";
    private Map<String, BrandInfo> a;
    private Set<String> b;
    private Set<String> c;
    private Map<String, Pattern> d;
    private Map<String, Pattern> e;

    class a implements Parcelable.Creator<BrandsValidation> {
        a() {
        }

        @Override
        public BrandsValidation createFromParcel(Parcel parcel) {
            return new BrandsValidation(parcel, null);
        }

        @Override
        public BrandsValidation[] newArray(int i) {
            return new BrandsValidation[i];
        }
    }

    BrandsValidation(Parcel parcel, a aVar) {
        this(parcel);
    }

    private List<String> a(List<String> list) {
        Set<String> set = this.c;
        if (set == null || set.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : this.c) {
            if (list.contains(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private BrandInfo b(String str) {
        if (this.a.containsKey(str)) {
            return this.a.get(str);
        }
        return null;
    }

    public static BrandsValidation createFromJson(JSONObject jSONObject, String[] strArr) throws JSONException {
        return new BrandsValidation(com.oppwa.mobile.connect.payment.a.a(jSONObject, strArr));
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Utils.compare(this.a, ((BrandsValidation) obj).a);
    }

    public String[] filterOutUnconfiguredBrands(String[] strArr) {
        List listAsList = Arrays.asList(strArr);
        ArrayList arrayList = new ArrayList();
        for (String str : this.b) {
            if (listAsList.contains(str)) {
                arrayList.add(str);
            }
        }
        return (String[]) a(arrayList).toArray(new String[0]);
    }

    public List<String> getBrandDetectionPriority() {
        if (this.c != null) {
            return new ArrayList(this.c);
        }
        return null;
    }

    public Map<String, BrandInfo> getBrandInfoMap() {
        return this.a;
    }

    public CardBrandInfo getCardBrandInfo(String str) {
        BrandInfo brandInfoB = b(str);
        return (brandInfoB == null || brandInfoB.getCardBrandInfo() == null) ? new CardBrandInfo() : brandInfoB.getCardBrandInfo();
    }

    public Pattern getCardValidationPattern(String str) {
        return this.e.get(str);
    }

    public List<String> getDetectedCardBrands(String str, String str2) {
        List<String> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        for (String str3 : this.b) {
            Pattern pattern = this.d.get(str3);
            if (pattern == null) {
                arrayList2.add(str3);
            } else if (pattern.matcher(str).find()) {
                arrayList.add(str3);
            }
        }
        if (str2.equalsIgnoreCase(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD)) {
            arrayList.addAll(arrayList2);
        }
        return a(arrayList);
    }

    public Bundle getLabels() {
        Bundle bundle = new Bundle();
        for (String str : this.a.keySet()) {
            bundle.putString(str, this.a.get(str).getLabel());
        }
        return bundle;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean isCardBrand(String str) {
        if (str.equalsIgnoreCase(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD)) {
            return true;
        }
        BrandInfo brandInfoB = b(str);
        return brandInfoB != null && brandInfoB.isCardBrand();
    }

    public void setBrandDetectionPriority(List<String> list) {
        if (list != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            this.c = linkedHashSet;
            linkedHashSet.addAll(list);
            this.c.addAll(this.b);
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.a.size();
        parcel.writeInt(size);
        if (size > 0) {
            for (Map.Entry<String, BrandInfo> entry : this.a.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeParcelable(entry.getValue(), 0);
            }
        }
    }

    public BrandsValidation(Map<String, BrandInfo> map) {
        new LinkedHashMap();
        this.a = map;
        a();
    }

    private void a() {
        this.b = new LinkedHashSet();
        this.d = new LinkedHashMap();
        this.e = new LinkedHashMap();
        for (String str : this.a.keySet()) {
            BrandInfo brandInfo = this.a.get(str);
            if (brandInfo.isCardBrand() && brandInfo.getCardBrandInfo() != null) {
                this.b.add(str);
                String detection = brandInfo.getCardBrandInfo().getDetection();
                if (detection != null && !detection.isEmpty()) {
                    this.d.put(str, a(detection));
                }
                String validation = brandInfo.getCardBrandInfo().getValidation();
                if (!validation.isEmpty()) {
                    this.e.put(str, a(validation));
                }
            }
        }
    }

    private BrandsValidation(Parcel parcel) {
        this.a = new LinkedHashMap();
        int i = parcel.readInt();
        if (i > 0) {
            this.a = new LinkedHashMap();
            for (int i2 = 0; i2 < i; i2++) {
                this.a.put(parcel.readString(), (BrandInfo) parcel.readParcelable(BrandInfo.class.getClassLoader()));
            }
            a();
        }
    }

    private Pattern a(String str) {
        try {
            return Pattern.compile(str);
        } catch (PatternSyntaxException e) {
            Log.w(f, "Invalid regex '" + str + "' was ignored. " + e.getDescription());
            return null;
        }
    }
}
