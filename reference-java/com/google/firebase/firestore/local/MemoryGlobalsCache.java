package com.google.firebase.firestore.local;

import com.google.protobuf.ByteString;

final class MemoryGlobalsCache implements GlobalsCache {
    private ByteString sessionToken = ByteString.EMPTY;

    MemoryGlobalsCache() {
    }

    @Override
    public ByteString getSessionsToken() {
        return this.sessionToken;
    }

    @Override
    public void setSessionToken(ByteString byteString) {
        this.sessionToken = byteString;
    }
}
