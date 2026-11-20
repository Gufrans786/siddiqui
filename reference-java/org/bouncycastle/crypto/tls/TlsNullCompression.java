package org.bouncycastle.crypto.tls;

import java.io.OutputStream;

public class TlsNullCompression implements TlsCompression {
    @Override
    public OutputStream compress(OutputStream outputStream) {
        return outputStream;
    }

    @Override
    public OutputStream decompress(OutputStream outputStream) {
        return outputStream;
    }
}
