package com.oppwa.mobile.connect.payment.mbway;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.payment.PaymentParams;
import com.oppwa.mobile.connect.utils.Utils;
import java.util.Arrays;
import java.util.Map;

public class MBWayPaymentParams extends PaymentParams {
    public static final Parcelable.Creator<MBWayPaymentParams> CREATOR = new a();
    private byte[] f;
    private byte[] g;
    private byte[] h;

    class a implements Parcelable.Creator<MBWayPaymentParams> {
        a() {
        }

        @Override
        public MBWayPaymentParams createFromParcel(Parcel parcel) {
            return new MBWayPaymentParams(parcel, (a) null);
        }

        @Override
        public MBWayPaymentParams[] newArray(int i) {
            return new MBWayPaymentParams[i];
        }
    }

    MBWayPaymentParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    private String e() {
        return this.h != null ? getEmail() : getCountryCode() + "#" + getMobilePhone();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        MBWayPaymentParams mBWayPaymentParams = (MBWayPaymentParams) obj;
        return Arrays.equals(this.f, mBWayPaymentParams.f) && Arrays.equals(this.g, mBWayPaymentParams.g) && Arrays.equals(this.h, mBWayPaymentParams.h);
    }

    public String getCountryCode() {
        return Utils.stringFromBytes(this.f);
    }

    public String getEmail() {
        return Utils.stringFromBytes(this.h);
    }

    public String getMobilePhone() {
        return Utils.stringFromBytes(this.g);
    }

    @Override
    public Map<String, String> getParamsForRequest() {
        Map<String, String> paramsForRequest = super.getParamsForRequest();
        paramsForRequest.put("virtualAccount.accountId", e());
        return paramsForRequest;
    }

    @Override
    public int hashCode() {
        return (((((super.hashCode() * 31) + Arrays.hashCode(this.f)) * 31) + Arrays.hashCode(this.g)) * 31) + Arrays.hashCode(this.h);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        Utils.writeByteArray(parcel, this.f);
        Utils.writeByteArray(parcel, this.g);
        Utils.writeByteArray(parcel, this.h);
    }

    public MBWayPaymentParams(String str, String str2, String str3) throws PaymentException {
        super(str, "MBWAY");
        if (TextUtils.isEmpty(str2)) {
            throw new PaymentException(PaymentError.getPaymentParamsCountryCodeInvalidError());
        }
        if (TextUtils.isEmpty(str3)) {
            throw new PaymentException(PaymentError.getPaymentParamsMobilePhoneInvalidError());
        }
        this.f = Utils.bytesFromString(str2);
        this.g = Utils.bytesFromString(str3);
    }

    public MBWayPaymentParams(String str, String str2) throws PaymentException {
        super(str, "MBWAY");
        if (!TextUtils.isEmpty(str2)) {
            this.h = Utils.bytesFromString(str2);
            return;
        }
        throw new PaymentException(PaymentError.getPaymentParamsEmailInvalidError());
    }

    private MBWayPaymentParams(Parcel parcel) {
        super(parcel);
        this.f = Utils.readByteArray(parcel);
        this.g = Utils.readByteArray(parcel);
        this.h = Utils.readByteArray(parcel);
    }
}
