package com.oppwa.mobile.connect.provider;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.provider.model.yookassa.YooKassaInfo;
import com.oppwa.mobile.connect.utils.ParcelUtils;
import com.oppwa.mobile.connect.utils.Utils;
import java.util.HashMap;
import java.util.Map;

public class Transaction implements Parcelable {
    public static final String ALIPAY_SIGNED_ORDER_INFO_KEY = "alipaySignedInfo";
    public static final String BANCONTACT_LINK_APP_SCHEME_URL_KEY = "secureTransactionId";
    public static final Parcelable.Creator<Transaction> CREATOR = new a();
    public static final String KLARNA_INLINE_CALLBACK_URL_KEY = "callbackUrl";
    public static final String KLARNA_INLINE_CLIENT_TOKEN_KEY = "clientToken";
    public static final String KLARNA_INLINE_FAILURE_CALLBACK_URL_KEY = "failureCallbackUrl";
    public static final String KLARNA_INLINE_INITIAL_TRANSACTION_ID = "connectorId";
    private final PaymentParams a;
    private TransactionType b;
    private String c;
    private String d;
    private ThreeDS2Info e;
    private YooKassaInfo f;
    private Map<String, String> g;

    class a implements Parcelable.Creator<Transaction> {
        a() {
        }

        @Override
        public Transaction createFromParcel(Parcel parcel) {
            return new Transaction(parcel, null);
        }

        @Override
        public Transaction[] newArray(int i) {
            return new Transaction[i];
        }
    }

    Transaction(Parcel parcel, a aVar) {
        this(parcel);
    }

    void a(TransactionType transactionType) {
        this.b = transactionType;
    }

    void b(String str) {
        this.d = str;
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
            Transaction transaction = (Transaction) obj;
            if (Utils.compare(this.b, transaction.b) && Utils.compare(this.a, transaction.a) && Utils.compare(this.c, transaction.c) && Utils.compare(this.d, transaction.d) && Utils.compare(this.e, transaction.e) && Utils.compare(this.g, transaction.g) && Utils.compare(this.f, transaction.f)) {
                return true;
            }
        }
        return false;
    }

    public Map<String, String> getBrandSpecificInfo() {
        return this.g;
    }

    public PaymentParams getPaymentParams() {
        return this.a;
    }

    public String getRedirectUrl() {
        return this.c;
    }

    public ThreeDS2Info getThreeDS2Info() {
        return this.e;
    }

    public String getThreeDS2MethodRedirectUrl() {
        return this.d;
    }

    public TransactionType getTransactionType() {
        return this.b;
    }

    public YooKassaInfo getYooKassaInfo() {
        return this.f;
    }

    public int hashCode() {
        TransactionType transactionType = this.b;
        int iHashCode = (((transactionType != null ? transactionType.hashCode() : 0) * 31) + this.a.hashCode()) * 31;
        String str = this.c;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        ThreeDS2Info threeDS2Info = this.e;
        int iHashCode4 = (iHashCode3 + (threeDS2Info != null ? threeDS2Info.hashCode() : 0)) * 31;
        Map<String, String> map = this.g;
        int iHashCode5 = (iHashCode4 + (map != null ? map.hashCode() : 0)) * 31;
        YooKassaInfo yooKassaInfo = this.f;
        return iHashCode5 + (yooKassaInfo != null ? yooKassaInfo.hashCode() : 0);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.a, 0);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeParcelable(this.e, 0);
        parcel.writeParcelable(this.f, 0);
        ParcelUtils.writeMapToParcel(parcel, this.g);
    }

    public Transaction(PaymentParams paymentParams) throws PaymentException {
        this.g = new HashMap();
        if (paymentParams == null) {
            throw new PaymentException(PaymentError.getPaymentParamsInvalidError());
        }
        this.a = paymentParams;
    }

    void a(String str) {
        this.c = str;
    }

    void a(YooKassaInfo yooKassaInfo) {
        this.f = yooKassaInfo;
    }

    void a(Map<String, String> map) {
        this.g = map;
    }

    void a(ThreeDS2Info threeDS2Info) {
        this.e = threeDS2Info;
    }

    private Transaction(Parcel parcel) {
        this.g = new HashMap();
        this.b = (TransactionType) parcel.readParcelable(TransactionType.class.getClassLoader());
        this.a = (PaymentParams) parcel.readParcelable(PaymentParams.class.getClassLoader());
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = (ThreeDS2Info) parcel.readParcelable(ThreeDS2Info.class.getClassLoader());
        this.f = (YooKassaInfo) parcel.readParcelable(YooKassaInfo.class.getClassLoader());
        this.g = ParcelUtils.readMapFromParcel(parcel, String.class);
    }
}
