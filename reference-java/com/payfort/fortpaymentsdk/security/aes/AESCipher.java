package com.payfort.fortpaymentsdk.security.aes;

import com.google.common.base.Throwables;
import com.google.common.io.BaseEncoding;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.util.encoders.Base64;

public class AESCipher {
    private static final String ALGORITHM_AES256 = "AES/CBC/PKCS5Padding";
    private static final byte[] INITIAL_IV = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private final Cipher cipher;
    private IvParameterSpec iv;
    private final SecretKeySpec secretKeySpec;

    public AESCipher(Key key) {
        this(key.getEncoded());
    }

    public AESCipher(Key key, byte[] bArr) {
        this(key.getEncoded(), bArr);
    }

    public AESCipher(byte[] bArr) {
        this(bArr, INITIAL_IV);
    }

    private AESCipher(byte[] bArr, byte[] bArr2) {
        try {
            this.secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.iv = new IvParameterSpec(bArr2);
            this.cipher = Cipher.getInstance(ALGORITHM_AES256);
        } catch (Exception e) {
            throw Throwables.propagate(e);
        }
    }

    public String getEncryptedMessage(String str) {
        try {
            return BaseEncoding.base64().encode(getCipher(1).doFinal(str.getBytes(com.bumptech.glide.load.Key.STRING_CHARSET_NAME)));
        } catch (Exception e) {
            throw Throwables.propagate(e);
        }
    }

    public String getDecryptedMessage(String str) {
        try {
            return new String(getCipher(2).doFinal(Base64.decode(str.getBytes("utf-8"))));
        } catch (Exception unused) {
            return str;
        }
    }

    public String getIV() {
        return BaseEncoding.base64().encode(this.iv.getIV());
    }

    public String getKey() {
        return getKey(KeyEncoding.BASE64);
    }

    static class AnonymousClass1 {
        static final int[] $SwitchMap$com$payfort$fortpaymentsdk$security$aes$KeyEncoding;

        static {
            int[] iArr = new int[KeyEncoding.values().length];
            $SwitchMap$com$payfort$fortpaymentsdk$security$aes$KeyEncoding = iArr;
            try {
                iArr[KeyEncoding.BASE64.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$payfort$fortpaymentsdk$security$aes$KeyEncoding[KeyEncoding.HEX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$payfort$fortpaymentsdk$security$aes$KeyEncoding[KeyEncoding.BASE32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public String getKey(KeyEncoding keyEncoding) {
        int i = AnonymousClass1.$SwitchMap$com$payfort$fortpaymentsdk$security$aes$KeyEncoding[keyEncoding.ordinal()];
        if (i == 1) {
            return BaseEncoding.base64().encode(this.secretKeySpec.getEncoded());
        }
        if (i == 2) {
            return BaseEncoding.base16().encode(this.secretKeySpec.getEncoded());
        }
        if (i != 3) {
            return null;
        }
        return BaseEncoding.base32().encode(this.secretKeySpec.getEncoded());
    }

    private Cipher getCipher(int i) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.cipher.init(i, getSecretKeySpec(), this.iv);
        return this.cipher;
    }

    private SecretKeySpec getSecretKeySpec() {
        return this.secretKeySpec;
    }
}
