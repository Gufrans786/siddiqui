package com.oppwa.mobile.connect.threeds;

import java.util.Objects;

public class SchemeConfig {
    private final String a;
    private final String b;
    private final String c;

    public SchemeConfig(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            SchemeConfig schemeConfig = (SchemeConfig) obj;
            if (Objects.equals(this.a, schemeConfig.a) && Objects.equals(this.b, schemeConfig.b) && Objects.equals(this.c, schemeConfig.c)) {
                return true;
            }
        }
        return false;
    }

    public String getDsCaRootCert() {
        return this.c;
    }

    public String getDsEncryptCert() {
        return this.b;
    }

    public String getDsRefId() {
        return this.a;
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }
}
