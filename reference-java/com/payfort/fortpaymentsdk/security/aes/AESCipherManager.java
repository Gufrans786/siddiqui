package com.payfort.fortpaymentsdk.security.aes;

import ch.qos.logback.core.net.ssl.SSL;
import com.payfort.fortpaymentsdk.exceptions.FortException;
import java.security.Key;
import java.security.SecureRandom;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

public class AESCipherManager {
    private final String AES_ALGORITHM = "AES";

    public String encryptData(String str, Key key) {
        return new AESCipher(key).getEncryptedMessage(str);
    }

    public String decryptMsg(String str, Key key) {
        try {
            return new AESCipher(key).getDecryptedMessage(str);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public SecretKeySpec generateAESKey() throws FortException {
        try {
            SecureRandom secureRandom = SecureRandom.getInstance(SSL.DEFAULT_SECURE_RANDOM_ALGORITHM);
            secureRandom.setSeed("23Feb2016".getBytes());
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(256, secureRandom);
            return new SecretKeySpec(keyGenerator.generateKey().getEncoded(), "AES");
        } catch (Exception e) {
            throw new FortException("failed to generate AES key", e);
        }
    }
}
