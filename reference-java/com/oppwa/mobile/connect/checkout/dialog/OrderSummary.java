package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.identity.intents.model.UserAddress;
import com.google.android.gms.wallet.PaymentData;
import com.oppwa.mobile.connect.utils.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;

public class OrderSummary implements Parcelable {
    public static final Parcelable.Creator<OrderSummary> CREATOR = new a();
    private LinkedHashMap<String, Double> a;
    private Double b;
    private String c;
    private String d;
    private String e;

    class a implements Parcelable.Creator<OrderSummary> {
        a() {
        }

        @Override
        public OrderSummary createFromParcel(Parcel parcel) {
            return new OrderSummary(parcel, null);
        }

        @Override
        public OrderSummary[] newArray(int i) {
            return new OrderSummary[i];
        }
    }

    OrderSummary(Parcel parcel, a aVar) {
        this(parcel);
    }

    private String a(UserAddress userAddress) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(userAddress.getAddress1());
        arrayList.add(userAddress.getAddress2());
        String strA = a(arrayList, " ");
        ArrayList<String> arrayList2 = new ArrayList<>();
        arrayList2.add(userAddress.getLocality());
        arrayList2.add(userAddress.getPostalCode());
        String strA2 = a(arrayList2, ", ");
        ArrayList<String> arrayList3 = new ArrayList<>();
        arrayList3.add(userAddress.getName());
        arrayList3.add(strA);
        arrayList3.add(strA2);
        return a(arrayList3, "\n");
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            OrderSummary orderSummary = (OrderSummary) obj;
            if (Utils.compare(this.a, orderSummary.a) && Double.compare(this.b.doubleValue(), orderSummary.b.doubleValue()) == 0 && Utils.compare(this.c, orderSummary.c) && Utils.compare(this.d, orderSummary.d) && Utils.compare(this.e, orderSummary.e)) {
                return true;
            }
        }
        return false;
    }

    public LinkedHashMap<String, Double> getOrderItems() {
        return this.a;
    }

    public Double getOrderTotal() {
        return this.b;
    }

    public String getPaymentBrand() {
        return this.d;
    }

    public String getPaymentDetails() {
        return this.c;
    }

    public String getShippingInfo() {
        return this.e;
    }

    public int hashCode() {
        int iHashCode = ((((((this.a.hashCode() * 31) + Long.valueOf(Double.doubleToLongBits(this.b.doubleValue())).hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31;
        String str = this.e;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public OrderSummary setOrderItems(LinkedHashMap<String, Double> linkedHashMap) {
        this.a = linkedHashMap;
        return this;
    }

    public OrderSummary setOrderTotal(Double d) {
        this.b = d;
        return this;
    }

    public OrderSummary setPaymentBrand(String str) {
        this.d = str;
        return this;
    }

    public OrderSummary setPaymentDetails(String str) {
        this.c = str;
        return this;
    }

    public OrderSummary setShippingInfo(String str) {
        this.e = str;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a.size());
        for (String str : this.a.keySet()) {
            parcel.writeString(str);
            parcel.writeDouble(this.a.get(str).doubleValue());
        }
        parcel.writeDouble(this.b.doubleValue());
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
    }

    public OrderSummary(LinkedHashMap<String, Double> linkedHashMap, Double d, String str, String str2) {
        this.a = linkedHashMap;
        this.b = d;
        this.c = str;
        this.d = str2;
    }

    public OrderSummary(LinkedHashMap<String, Double> linkedHashMap, Double d, PaymentData paymentData) {
        this(linkedHashMap, d, "", "GOOGLEPAY");
        if (paymentData.getCardInfo() != null) {
            this.c = paymentData.getCardInfo().getCardDescription();
        }
        if (paymentData.getShippingAddress() != null) {
            this.e = a(paymentData.getShippingAddress());
        }
    }

    private OrderSummary(Parcel parcel) {
        this.a = new LinkedHashMap<>();
        int i = parcel.readInt();
        if (i > 0) {
            for (int i2 = 0; i2 < i; i2++) {
                this.a.put(parcel.readString(), Double.valueOf(parcel.readDouble()));
            }
        }
        this.b = Double.valueOf(parcel.readDouble());
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
    }

    private String a(ArrayList<String> arrayList, String str) {
        arrayList.removeAll(Collections.singleton(null));
        arrayList.removeAll(Collections.singleton(""));
        return TextUtils.join(str, arrayList);
    }
}
