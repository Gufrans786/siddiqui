package com.google.android.play.core.integrity;

final class b extends bv {
    private String a;
    private long b;
    private ag c;
    private byte d;

    b() {
    }

    @Override
    final bv a(ag agVar) {
        this.c = agVar;
        return this;
    }

    @Override
    final bv b(long j) {
        this.b = j;
        this.d = (byte) 1;
        return this;
    }

    @Override
    final bv c(String str) {
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.a = str;
        return this;
    }

    @Override
    final bw d() {
        String str;
        ag agVar;
        if (this.d == 1 && (str = this.a) != null && (agVar = this.c) != null) {
            return new bw(str, this.b, agVar);
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
