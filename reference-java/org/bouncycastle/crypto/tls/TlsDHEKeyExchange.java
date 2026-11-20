package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.io.SignerInputStream;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;

class TlsDHEKeyExchange extends TlsDHKeyExchange {
    TlsDHEKeyExchange(TlsClientContext tlsClientContext, int i) {
        super(tlsClientContext, i);
    }

    protected Signer initSigner(TlsSigner tlsSigner, SecurityParameters securityParameters) {
        Signer signerCreateVerifyer = tlsSigner.createVerifyer(this.serverPublicKey);
        signerCreateVerifyer.update(securityParameters.clientRandom, 0, securityParameters.clientRandom.length);
        signerCreateVerifyer.update(securityParameters.serverRandom, 0, securityParameters.serverRandom.length);
        return signerCreateVerifyer;
    }

    @Override
    public void processServerKeyExchange(InputStream inputStream) throws IOException {
        Signer signerInitSigner = initSigner(this.tlsSigner, this.context.getSecurityParameters());
        SignerInputStream signerInputStream = new SignerInputStream(inputStream, signerInitSigner);
        byte[] opaque16 = TlsUtils.readOpaque16(signerInputStream);
        byte[] opaque17 = TlsUtils.readOpaque16(signerInputStream);
        byte[] opaque18 = TlsUtils.readOpaque16(signerInputStream);
        if (!signerInitSigner.verifySignature(TlsUtils.readOpaque16(inputStream))) {
            throw new TlsFatalAlert((short) 42);
        }
        this.dhAgreeServerPublicKey = validateDHPublicKey(new DHPublicKeyParameters(new BigInteger(1, opaque18), new DHParameters(new BigInteger(1, opaque16), new BigInteger(1, opaque17))));
    }

    @Override
    public void skipServerKeyExchange() throws IOException {
        throw new TlsFatalAlert((short) 10);
    }
}
