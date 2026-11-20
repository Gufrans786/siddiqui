package com.oppwa.mobile.connect.provider;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

public class ThreeDS2Info implements Parcelable {
    public static final Parcelable.Creator<ThreeDS2Info> CREATOR = new a();
    private final AuthStatus a;
    private final String b;
    private String c;
    private String d;
    private String e;

    public enum AuthStatus implements Parcelable {
        AUTHENTICATED,
        ATTEMPT_PROCESSING_PERFORMED,
        CHALLENGE_REQUIRED,
        DECOUPLED_CONFIRMED,
        DENIED,
        REJECTED,
        FAILED,
        INFORMATIONAL_ONLY,
        AUTH_PARAMS_REQUIRED;

        public static final Parcelable.Creator<AuthStatus> CREATOR = new a();

        class a implements Parcelable.Creator<AuthStatus> {
            a() {
            }

            @Override
            public AuthStatus createFromParcel(Parcel parcel) {
                return AuthStatus.values()[parcel.readInt()];
            }

            @Override
            public AuthStatus[] newArray(int i) {
                return new AuthStatus[i];
            }
        }

        static AuthStatus a(String str) {
            str.hashCode();
            str.hashCode();
            switch (str) {
                case "A":
                    return ATTEMPT_PROCESSING_PERFORMED;
                case "C":
                    return CHALLENGE_REQUIRED;
                case "D":
                    return DECOUPLED_CONFIRMED;
                case "I":
                    return INFORMATIONAL_ONLY;
                case "N":
                    return DENIED;
                case "R":
                    return REJECTED;
                case "U":
                    return FAILED;
                case "Y":
                    return AUTHENTICATED;
                default:
                    return null;
            }
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    class a implements Parcelable.Creator<ThreeDS2Info> {
        a() {
        }

        @Override
        public ThreeDS2Info createFromParcel(Parcel parcel) {
            return new ThreeDS2Info(parcel);
        }

        @Override
        public ThreeDS2Info[] newArray(int i) {
            return new ThreeDS2Info[i];
        }
    }

    public ThreeDS2Info(AuthStatus authStatus, String str) {
        this.a = authStatus;
        this.b = str;
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
            ThreeDS2Info threeDS2Info = (ThreeDS2Info) obj;
            if (this.a == threeDS2Info.a && Objects.equals(this.b, threeDS2Info.b) && Objects.equals(this.c, threeDS2Info.c) && Objects.equals(this.d, threeDS2Info.d) && Objects.equals(this.e, threeDS2Info.e)) {
                return true;
            }
        }
        return false;
    }

    public String getAuthResponse() {
        return this.b;
    }

    public AuthStatus getAuthStatus() {
        return this.a;
    }

    public String getCallbackUrl() {
        return this.e;
    }

    public String getCardHolderInfo() {
        return this.c;
    }

    public String getProtocolVersion() {
        return this.d;
    }

    public int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, this.e);
    }

    public boolean isAuthParamsRequired() {
        return this.a.equals(AuthStatus.AUTH_PARAMS_REQUIRED);
    }

    public boolean isChallengeRequired() {
        return this.a.equals(AuthStatus.CHALLENGE_REQUIRED);
    }

    public void setCallbackUrl(String str) {
        this.e = str;
    }

    public void setCardHolderInfo(String str) {
        this.c = str;
    }

    public void setProtocolVersion(String str) {
        this.d = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, 0);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
    }

    ThreeDS2Info(Parcel parcel) {
        this.a = (AuthStatus) parcel.readParcelable(AuthStatus.class.getClassLoader());
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
    }
}
