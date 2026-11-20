package org.bouncycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Hashtable;
import org.bouncycastle.util.Arrays;

public abstract class SRPTlsClient implements TlsClient {
    public static final Integer EXT_SRP = new Integer(12);
    protected TlsCipherFactory cipherFactory;
    protected TlsClientContext context;
    protected byte[] identity;
    protected byte[] password;
    protected int selectedCipherSuite;
    protected int selectedCompressionMethod;

    public SRPTlsClient(TlsCipherFactory tlsCipherFactory, byte[] bArr, byte[] bArr2) {
        this.cipherFactory = tlsCipherFactory;
        this.identity = Arrays.clone(bArr);
        this.password = Arrays.clone(bArr2);
    }

    public SRPTlsClient(byte[] bArr, byte[] bArr2) {
        this(new DefaultTlsCipherFactory(), bArr, bArr2);
    }

    protected TlsKeyExchange createSRPKeyExchange(int i) {
        return new TlsSRPKeyExchange(this.context, i, this.identity, this.password);
    }

    @Override
    public TlsCipher getCipher() throws IOException {
        TlsCipherFactory tlsCipherFactory;
        TlsClientContext tlsClientContext;
        int i;
        switch (this.selectedCipherSuite) {
            case CipherSuite.TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA:
                tlsCipherFactory = this.cipherFactory;
                tlsClientContext = this.context;
                i = 7;
                break;
            case CipherSuite.TLS_SRP_SHA_WITH_AES_128_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA:
                tlsCipherFactory = this.cipherFactory;
                tlsClientContext = this.context;
                i = 8;
                break;
            case CipherSuite.TLS_SRP_SHA_WITH_AES_256_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA:
                tlsCipherFactory = this.cipherFactory;
                tlsClientContext = this.context;
                i = 9;
                break;
            default:
                throw new TlsFatalAlert((short) 80);
        }
        return tlsCipherFactory.createCipher(tlsClientContext, i, 2);
    }

    @Override
    public int[] getCipherSuites() {
        return new int[]{CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA, CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA, CipherSuite.TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA, CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA, CipherSuite.TLS_SRP_SHA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_SRP_SHA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA};
    }

    @Override
    public Hashtable getClientExtensions() throws IOException {
        Hashtable hashtable = new Hashtable();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        TlsUtils.writeOpaque8(this.identity, byteArrayOutputStream);
        hashtable.put(EXT_SRP, byteArrayOutputStream.toByteArray());
        return hashtable;
    }

    @Override
    public TlsCompression getCompression() throws IOException {
        if (this.selectedCompressionMethod == 0) {
            return new TlsNullCompression();
        }
        throw new TlsFatalAlert((short) 80);
    }

    @Override
    public short[] getCompressionMethods() {
        return new short[]{0};
    }

    @Override
    public TlsKeyExchange getKeyExchange() throws IOException {
        int i;
        switch (this.selectedCipherSuite) {
            case CipherSuite.TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_WITH_AES_128_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_WITH_AES_256_CBC_SHA:
                i = 21;
                break;
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA:
                i = 23;
                break;
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA:
                i = 22;
                break;
            default:
                throw new TlsFatalAlert((short) 80);
        }
        return createSRPKeyExchange(i);
    }

    @Override
    public void init(TlsClientContext tlsClientContext) {
        this.context = tlsClientContext;
    }

    @Override
    public void notifySecureRenegotiation(boolean z) throws IOException {
    }

    @Override
    public void notifySelectedCipherSuite(int i) {
        this.selectedCipherSuite = i;
    }

    @Override
    public void notifySelectedCompressionMethod(short s) {
        this.selectedCompressionMethod = s;
    }

    @Override
    public void notifySessionID(byte[] bArr) {
    }

    @Override
    public void processServerExtensions(Hashtable hashtable) {
    }
}
