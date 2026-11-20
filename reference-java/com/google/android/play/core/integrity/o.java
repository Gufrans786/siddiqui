package com.google.android.play.core.integrity;

import java.util.Set;

final class o extends StandardIntegrityManager.StandardIntegrityTokenRequest.Builder {
    private String a;
    private Set b;

    o() {
    }

    @Override
    public final StandardIntegrityManager.StandardIntegrityTokenRequest build() {
        Set set = this.b;
        if (set != null) {
            return new q(this.a, set, null);
        }
        throw new IllegalStateException("Missing required properties: verdictOptOut");
    }

    @Override
    public final StandardIntegrityManager.StandardIntegrityTokenRequest.Builder setRequestHash(String str) {
        this.a = str;
        return this;
    }

    @Override
    public final StandardIntegrityManager.StandardIntegrityTokenRequest.Builder setVerdictOptOut(Set<Integer> set) {
        if (set == null) {
            throw new NullPointerException("Null verdictOptOut");
        }
        this.b = set;
        return this;
    }
}
