package com.google.firebase.installations.remote;

final class AutoValue_TokenResult extends TokenResult {
    private final TokenResult.ResponseCode responseCode;
    private final String token;
    private final long tokenExpirationTimestamp;

    private AutoValue_TokenResult(String str, long j, TokenResult.ResponseCode responseCode) {
        this.token = str;
        this.tokenExpirationTimestamp = j;
        this.responseCode = responseCode;
    }

    @Override
    public String getToken() {
        return this.token;
    }

    @Override
    public long getTokenExpirationTimestamp() {
        return this.tokenExpirationTimestamp;
    }

    @Override
    public TokenResult.ResponseCode getResponseCode() {
        return this.responseCode;
    }

    public String toString() {
        return "TokenResult{token=" + this.token + ", tokenExpirationTimestamp=" + this.tokenExpirationTimestamp + ", responseCode=" + this.responseCode + "}";
    }

    public boolean equals(Object obj) {
        TokenResult.ResponseCode responseCode;
        if (obj == this) {
            return true;
        }
        if (obj instanceof TokenResult) {
            TokenResult tokenResult = (TokenResult) obj;
            String str = this.token;
            if (str != null ? str.equals(tokenResult.getToken()) : tokenResult.getToken() == null) {
                if (this.tokenExpirationTimestamp == tokenResult.getTokenExpirationTimestamp() && ((responseCode = this.responseCode) != null ? responseCode.equals(tokenResult.getResponseCode()) : tokenResult.getResponseCode() == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.token;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j = this.tokenExpirationTimestamp;
        int i = (((iHashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        TokenResult.ResponseCode responseCode = this.responseCode;
        return i ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    @Override
    public TokenResult.Builder toBuilder() {
        return new Builder(this);
    }

    static final class Builder extends TokenResult.Builder {
        private TokenResult.ResponseCode responseCode;
        private byte set$0;
        private String token;
        private long tokenExpirationTimestamp;

        Builder() {
        }

        private Builder(TokenResult tokenResult) {
            this.token = tokenResult.getToken();
            this.tokenExpirationTimestamp = tokenResult.getTokenExpirationTimestamp();
            this.responseCode = tokenResult.getResponseCode();
            this.set$0 = (byte) 1;
        }

        @Override
        public TokenResult.Builder setToken(String str) {
            this.token = str;
            return this;
        }

        @Override
        public TokenResult.Builder setTokenExpirationTimestamp(long j) {
            this.tokenExpirationTimestamp = j;
            this.set$0 = (byte) (this.set$0 | 1);
            return this;
        }

        @Override
        public TokenResult.Builder setResponseCode(TokenResult.ResponseCode responseCode) {
            this.responseCode = responseCode;
            return this;
        }

        @Override
        public TokenResult build() {
            if (this.set$0 != 1) {
                throw new IllegalStateException("Missing required properties: tokenExpirationTimestamp");
            }
            return new AutoValue_TokenResult(this.token, this.tokenExpirationTimestamp, this.responseCode);
        }
    }
}
