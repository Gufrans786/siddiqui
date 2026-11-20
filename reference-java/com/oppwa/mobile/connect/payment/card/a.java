package com.oppwa.mobile.connect.payment.card;

import java.lang.ref.SoftReference;
import java.util.regex.Pattern;

class a {
    private static SoftReference<Pattern> a;
    private static SoftReference<Pattern> b;
    private static SoftReference<Pattern> c;
    private static SoftReference<Pattern> d;
    private static SoftReference<Pattern> e;
    private static SoftReference<Pattern> f;
    private static SoftReference<Pattern> g;

    static Pattern a() {
        if (!a(e)) {
            e = new SoftReference<>(Pattern.compile("[0-9]{3,4}"));
        }
        return e.get();
    }

    static Pattern b() {
        if (!a(c)) {
            c = new SoftReference<>(Pattern.compile("^1[0-2]$|^0[1-9]$"));
        }
        return c.get();
    }

    static Pattern c() {
        if (!a(d)) {
            d = new SoftReference<>(Pattern.compile("20[0-9]{2}"));
        }
        return d.get();
    }

    static Pattern d() {
        if (!a(a)) {
            a = new SoftReference<>(Pattern.compile(".{3,128}"));
        }
        return a.get();
    }

    static Pattern e() {
        if (!a(f)) {
            f = new SoftReference<>(Pattern.compile("^[0-9].*"));
        }
        return f.get();
    }

    static Pattern f() {
        if (!a(b)) {
            b = new SoftReference<>(Pattern.compile("[0-9]{10,19}"));
        }
        return b.get();
    }

    static Pattern g() {
        if (!a(g)) {
            g = new SoftReference<>(Pattern.compile("[0-9]{1,5}"));
        }
        return g.get();
    }

    private static boolean a(SoftReference<Pattern> softReference) {
        return (softReference == null || softReference.get() == null) ? false : true;
    }
}
