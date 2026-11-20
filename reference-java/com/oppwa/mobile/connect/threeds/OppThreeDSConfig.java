package com.oppwa.mobile.connect.threeds;

import com.nsoftware.ipworks3ds.sdk.customization.UiCustomization;
import com.oppwa.mobile.connect.threeds.constant.ChallengeUiType;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Objects;

public class OppThreeDSConfig {
    private final EnumSet<ChallengeUiType> a;
    private final int b;
    private final HashMap<String, String> c;
    private final UiCustomization d;
    private final String e;
    private final String[] f;
    private final String g;
    private final String[] h;
    private final String[] i;

    public OppThreeDSConfig(Builder builder) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            OppThreeDSConfig oppThreeDSConfig = (OppThreeDSConfig) obj;
            if (Objects.equals(this.a, oppThreeDSConfig.a) && this.b == oppThreeDSConfig.b && Objects.equals(this.c, oppThreeDSConfig.c) && Objects.equals(this.d, oppThreeDSConfig.d) && Objects.equals(this.e, oppThreeDSConfig.e) && Arrays.equals(this.f, oppThreeDSConfig.f) && Objects.equals(this.g, oppThreeDSConfig.g) && Arrays.equals(this.h, oppThreeDSConfig.h) && Arrays.equals(this.i, oppThreeDSConfig.i)) {
                return true;
            }
        }
        return false;
    }

    public String getAppSignature() {
        return this.g;
    }

    public EnumSet<ChallengeUiType> getChallengeUiTypes() {
        return this.a;
    }

    public String getClientConfigParam(String str) {
        return this.c.get(str);
    }

    public String[] getDeviceParameterBlacklist() {
        return this.f;
    }

    public String getLocale() {
        return this.e;
    }

    public String[] getMaliciousApps() {
        return this.i;
    }

    public int getSdkMaxTimeout() {
        return this.b;
    }

    public String[] getTrustedAppStores() {
        return this.h;
    }

    public UiCustomization getUiCustomization() {
        return this.d;
    }

    public int hashCode() {
        return (((((Objects.hash(this.a, Integer.valueOf(this.b), this.c, this.d, this.e, this.g) * 31) + Arrays.hashCode(this.f)) * 31) + Arrays.hashCode(this.h)) * 31) + Arrays.hashCode(this.i);
    }

    HashMap<String, String> a() {
        return this.c;
    }

    public static class Builder {
        private EnumSet<ChallengeUiType> a;
        private int b;
        private HashMap<String, String> c;
        private UiCustomization d;
        private String e;
        private String[] f;
        private String g;
        private String[] h;
        private String[] i;

        public Builder() {
            this.a = EnumSet.allOf(ChallengeUiType.class);
            this.b = 5;
            this.c = new HashMap<>();
        }

        public Builder addClientConfigParam(String str, String str2) {
            this.c.put(str, str2);
            return this;
        }

        public OppThreeDSConfig build() {
            return new OppThreeDSConfig(this);
        }

        public Builder setAppSignature(String str) {
            this.g = str;
            return this;
        }

        public Builder setChallengeUiTypes(EnumSet<ChallengeUiType> enumSet) {
            this.a = enumSet;
            return this;
        }

        public Builder setDeviceParameterBlacklist(String[] strArr) {
            this.f = strArr;
            return this;
        }

        public Builder setLocale(String str) {
            this.e = str;
            return this;
        }

        public Builder setMaliciousApps(String[] strArr) {
            this.i = strArr;
            return this;
        }

        public Builder setSdkMaxTimeout(int i) {
            this.b = i;
            return this;
        }

        public Builder setTrustedAppStores(String[] strArr) {
            this.h = strArr;
            return this;
        }

        public Builder setUiCustomization(UiCustomization uiCustomization) {
            this.d = uiCustomization;
            return this;
        }

        public Builder(OppThreeDSConfig oppThreeDSConfig) {
            this.a = EnumSet.allOf(ChallengeUiType.class);
            this.b = 5;
            this.c = new HashMap<>();
            if (oppThreeDSConfig != null) {
                this.a = oppThreeDSConfig.a;
                this.b = oppThreeDSConfig.b;
                this.c = oppThreeDSConfig.c;
                this.d = oppThreeDSConfig.d;
                this.e = oppThreeDSConfig.e;
                this.f = oppThreeDSConfig.f;
                this.g = oppThreeDSConfig.g;
                this.h = oppThreeDSConfig.h;
                this.i = oppThreeDSConfig.i;
            }
        }
    }
}
