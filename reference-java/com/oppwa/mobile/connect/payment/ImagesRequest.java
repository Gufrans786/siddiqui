package com.oppwa.mobile.connect.payment;

import android.os.Parcel;
import android.os.Parcelable;
import com.caverock.androidsvg.SVGParser;
import com.google.android.gms.common.internal.ImagesContract;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ImagesRequest implements Parcelable {
    public static final Parcelable.Creator<ImagesRequest> CREATOR = new a();
    private Map<String, ImageDetail> a;

    class a implements Parcelable.Creator<ImagesRequest> {
        a() {
        }

        @Override
        public ImagesRequest createFromParcel(Parcel parcel) {
            return new ImagesRequest(parcel, null);
        }

        @Override
        public ImagesRequest[] newArray(int i) {
            return new ImagesRequest[i];
        }
    }

    ImagesRequest(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static ImagesRequest createFromJson(JSONObject jSONObject) throws JSONException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ImagesRequest imagesRequest = new ImagesRequest(linkedHashMap);
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            linkedHashMap.put(next, a(jSONObject.getJSONArray(next)));
        }
        return imagesRequest;
    }

    public void addValues(ImagesRequest imagesRequest) {
        if (imagesRequest != null) {
            this.a.putAll(imagesRequest.getImagesRequestMap());
        }
    }

    public boolean containsPaymentBrand(String str) {
        return this.a.containsKey(str);
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
        return this.a.equals(((ImagesRequest) obj).a);
    }

    public Map<String, ImageDetail> getImagesRequestMap() {
        return this.a;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.a.size();
        parcel.writeInt(size);
        if (size > 0) {
            for (Map.Entry<String, ImageDetail> entry : this.a.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeParcelable(entry.getValue(), 0);
            }
        }
    }

    public ImagesRequest(Map<String, ImageDetail> map) {
        this.a = map;
    }

    private static ImageDetail a(JSONArray jSONArray) throws JSONException {
        String string = "0";
        String string2 = "";
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            if (jSONObject.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE).equals("PNG") && Integer.parseInt(string) < Integer.parseInt(jSONObject.getString("width"))) {
                string = jSONObject.getString("width");
                string2 = jSONObject.getString(ImagesContract.URL);
            }
        }
        ImageDetail imageDetail = new ImageDetail();
        imageDetail.setUrl(string2);
        return imageDetail;
    }

    private ImagesRequest(Parcel parcel) {
        int i = parcel.readInt();
        if (i > 0) {
            this.a = new LinkedHashMap();
            for (int i2 = 0; i2 < i; i2++) {
                this.a.put(parcel.readString(), (ImageDetail) parcel.readParcelable(ImageDetail.class.getClassLoader()));
            }
        }
    }
}
