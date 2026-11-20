package com.oppwa.mobile.connect.provider;

final class b {
    public static final b d;
    public static final b e;
    public static final b f;
    public static final b g;
    private static final b[] h;
    private final Connect.ProviderMode a;
    private final Connect.ProviderDomain b;
    private final String c;

    static {
        Connect.ProviderMode providerMode = Connect.ProviderMode.LIVE;
        Connect.ProviderDomain providerDomain = Connect.ProviderDomain.DEFAULT;
        b bVar = new b("LIVE_DEFAULT", 0, providerMode, providerDomain, "https://oppwa.com");
        d = bVar;
        Connect.ProviderMode providerMode2 = Connect.ProviderMode.TEST;
        b bVar2 = new b("TEST_DEFAULT", 1, providerMode2, providerDomain, "https://test.oppwa.com");
        e = bVar2;
        Connect.ProviderDomain providerDomain2 = Connect.ProviderDomain.EU;
        b bVar3 = new b("LIVE_EU", 2, providerMode, providerDomain2, "https://eu-prod.oppwa.com");
        f = bVar3;
        b bVar4 = new b("TEST_EU", 3, providerMode2, providerDomain2, "https://eu-test.oppwa.com");
        g = bVar4;
        h = new b[]{bVar, bVar2, bVar3, bVar4};
    }

    private b(String str, int i, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, String str2) {
        super(str, i);
        this.a = providerMode;
        this.b = providerDomain;
        this.c = str2;
    }

    static String a(Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain) {
        for (b bVar : values()) {
            if (bVar.a == providerMode && bVar.b == providerDomain) {
                return bVar.c;
            }
        }
        return d.c;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) h.clone();
    }
}
