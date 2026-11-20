package com.payfort.fortpaymentsdk.security.rsa;

import java.security.PublicKey;
import java.security.Security;
import javax.crypto.Cipher;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.util.encoders.Base64;

public class RSAEncryptUtil {
    protected static final String ALGORITHM = "RSA";

    public RSAEncryptUtil() {
        init();
    }

    public static void init() {
        Security.addProvider(new BouncyCastleProvider());
    }

    public static byte[] encrypt(byte[] bArr, PublicKey publicKey) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKey);
        return cipher.doFinal(bArr);
    }

    public static String encrypt(String str, PublicKey publicKey) throws Exception {
        return encodeBASE64(encrypt(str.getBytes("UTF8"), publicKey));
    }

    private static String encodeBASE64(byte[] bArr) {
        return new String(Base64.encode(bArr));
    }
}
