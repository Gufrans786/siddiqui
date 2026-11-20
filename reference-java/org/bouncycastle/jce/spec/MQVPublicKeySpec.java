package org.bouncycastle.jce.spec;

import java.security.PublicKey;
import java.security.spec.KeySpec;
import org.bouncycastle.jce.interfaces.MQVPublicKey;

public class MQVPublicKeySpec implements KeySpec, MQVPublicKey {
    private PublicKey ephemeralKey;
    private PublicKey staticKey;

    public MQVPublicKeySpec(PublicKey publicKey, PublicKey publicKey2) {
        this.staticKey = publicKey;
        this.ephemeralKey = publicKey2;
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
    public PublicKey getEphemeralKey() {
        return this.ephemeralKey;
    }

    @Override
    public String getFormat() {
        return null;
    }

    @Override
    public PublicKey getStaticKey() {
        return this.staticKey;
    }
}
