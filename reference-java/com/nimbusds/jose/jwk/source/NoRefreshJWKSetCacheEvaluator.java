package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.jwk.JWKSet;

class NoRefreshJWKSetCacheEvaluator extends JWKSetCacheRefreshEvaluator {
    public int hashCode() {
        return 0;
    }

    @Override
    public boolean requiresRefresh(JWKSet jWKSet) {
        return false;
    }

    NoRefreshJWKSetCacheEvaluator() {
    }

    public boolean equals(Object obj) {
        return obj instanceof NoRefreshJWKSetCacheEvaluator;
    }
}
