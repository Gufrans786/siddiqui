package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.jwk.JWKSet;

class ForceRefreshJWKSetCacheEvaluator extends JWKSetCacheRefreshEvaluator {
    public int hashCode() {
        return 0;
    }

    @Override
    public boolean requiresRefresh(JWKSet jWKSet) {
        return true;
    }

    ForceRefreshJWKSetCacheEvaluator() {
    }

    public boolean equals(Object obj) {
        return obj instanceof ForceRefreshJWKSetCacheEvaluator;
    }
}
