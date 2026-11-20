package nts;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;

public abstract class AbstractC0410 {

    public PrivateKey f2122 = null;

    public PublicKey f2121 = null;

    public int f2120 = 0;

    public static KeyFactory m4649(String str, String str2) throws Exception {
        if (C0320.f1718) {
            str2 = C0303.f1620;
        }
        return (str2 == null || str2.length() <= 0) ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, str2);
    }

    public abstract int mo3181();
}
