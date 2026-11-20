package com.transistorsoft.locationmanager.settings;

class a {
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 3;
    public static final int m = 4;

    public static final int f3747n = 5;
    public static final int o = 6;
    public int a;
    public String b;
    public Object c;
    public Object d;
    public Object e;
    public String f;
    public Boolean g;
    public Boolean h;

    public a(String str, int i2, Object obj) {
        this.f = null;
        Boolean bool = Boolean.FALSE;
        this.g = bool;
        this.h = bool;
        a(str, i2, obj);
    }

    private void a(String str, int i2, Object obj) {
        this.b = str;
        this.a = i2;
        this.c = obj;
        this.e = obj;
    }

    public void a(Object obj) {
        this.e = obj;
    }

    public Object a() {
        return this.e;
    }

    public a(String str, int i2, Object obj, Object obj2, String str2, Boolean bool, Boolean bool2) {
        this.f = null;
        Boolean bool3 = Boolean.FALSE;
        this.g = bool3;
        this.h = bool3;
        a(str, i2, obj);
        this.f = str2;
        if (bool != null) {
            this.g = bool;
        }
        if (bool2 != null) {
            this.h = bool2;
        }
        if (obj2 != null) {
            this.d = obj2;
        }
    }
}
