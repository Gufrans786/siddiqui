package org.bouncycastle.jce.spec;

import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.KeySpec;
import org.bouncycastle.jce.interfaces.MQVPrivateKey;

public class MQVPrivateKeySpec implements KeySpec, MQVPrivateKey {
    private PrivateKey ephemeralPrivateKey;
    private PublicKey ephemeralPublicKey;
    private PrivateKey staticPrivateKey;

    public MQVPrivateKeySpec(PrivateKey privateKey, PrivateKey privateKey2) {
        this(privateKey, privateKey2, null);
    }

    public MQVPrivateKeySpec(PrivateKey privateKey, PrivateKey privateKey2, PublicKey publicKey) {
        this.staticPrivateKey = privateKey;
        this.ephemeralPrivateKey = privateKey2;
        this.ephemeralPublicKey = publicKey;
    }

    @Override
    public String getAlgorithm() {
        return "ECMQV";
    }

    @Override
    public byte[] getEncoded() {
        return null;
    }

    @Override
    public PrivateKey getEphemeralPrivateKey() {
        return this.ephemeralPrivateKey;
    }

    @Override
    public PublicKey getEphemeralPublicKey() {
        return this.ephemeralPublicKey;
    }

    @Override
    public String getFormat() {
        return null;
    }

    @Override
    public PrivateKey getStaticPrivateKey() {
        return this.staticPrivateKey;
    }
}
