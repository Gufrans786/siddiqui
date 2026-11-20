package com.oppwa.mobile.connect.threeds;

import com.oppwa.mobile.connect.threeds.constant.TransactionMode;
import java.util.HashMap;
import java.util.Map;

class f {
    private static f b;
    private Map<a, SchemeConfig> a = new HashMap();

    private static class a {
        private final TransactionMode a;
        private final String b;

        a(TransactionMode transactionMode, String str) {
            this.a = transactionMode;
            this.b = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                a aVar = (a) obj;
                if (this.a.equals(aVar.a) && this.b.equals(aVar.b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }
    }

    f() {
    }

    static f a() {
        if (b == null) {
            f fVar = new f();
            b = fVar;
            g.a(fVar);
        }
        return b;
    }

    void a(TransactionMode transactionMode, String str, SchemeConfig schemeConfig) {
        this.a.put(new a(transactionMode, str), schemeConfig);
    }

    SchemeConfig a(TransactionMode transactionMode, String str) {
        return a(new a(transactionMode, str));
    }

    private SchemeConfig a(a aVar) {
        if (this.a.containsKey(aVar)) {
            return this.a.get(aVar);
        }
        return null;
    }
}
