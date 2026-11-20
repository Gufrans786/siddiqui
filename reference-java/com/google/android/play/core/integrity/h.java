package com.google.android.play.core.integrity;

final class h extends IntegrityTokenRequest {
    private final String a;
    private final Long b;

    h(String str, Long l, g gVar) {
        this.a = str;
        this.b = l;
    }

    @Override
    public final Long cloudProjectNumber() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        Long l;
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntegrityTokenRequest) {
            IntegrityTokenRequest integrityTokenRequest = (IntegrityTokenRequest) obj;
            if (this.a.equals(integrityTokenRequest.nonce()) && ((l = this.b) != null ? l.equals(integrityTokenRequest.cloudProjectNumber()) : integrityTokenRequest.cloudProjectNumber() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() ^ 1000003;
        Long l = this.b;
        return (iHashCode * 1000003) ^ (l == null ? 0 : l.hashCode());
    }

    @Override
    public final String nonce() {
        return this.a;
    }

    public final String toString() {
        return "IntegrityTokenRequest{nonce=" + this.a + ", cloudProjectNumber=" + this.b + "}";
    }
}
