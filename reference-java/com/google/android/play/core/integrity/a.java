package com.google.android.play.core.integrity;

final class a extends au {
    private String a;
    private long b;
    private ag c;
    private byte d;

    a() {
    }

    @Override
    final au a(ag agVar) {
        this.c = agVar;
        return this;
    }

    @Override
    final au b(long j) {
        this.b = j;
        this.d = (byte) 1;
        return this;
    }

    @Override
    final au c(String str) {
        this.a = str;
        return this;
    }

    @Override
    final av d() {
        String str;
        ag agVar;
        if (this.d == 1 && (str = this.a) != null && (agVar = this.c) != null) {
            return new av(str, this.b, agVar);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" token");
        }
        if (this.d == 0) {
            sb.append(" requestTokenSessionId");
        }
        if (this.c == null) {
            sb.append(" integrityDialogWrapper");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
