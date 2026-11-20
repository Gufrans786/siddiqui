package org.chromium.net.apihelpers;

import org.chromium.net.UrlResponseInfo;

public abstract class ByteArrayCronetCallback extends InMemoryTransformCronetCallback<byte[]> {
    @Override
    public final byte[] transformBodyBytes(UrlResponseInfo urlResponseInfo, byte[] bArr) {
        return bArr;
    }

    @Override
    public ByteArrayCronetCallback addCompletionListener(CronetRequestCompletionListener<? super byte[]> cronetRequestCompletionListener) {
        super.addCompletionListener((CronetRequestCompletionListener) cronetRequestCompletionListener);
        return this;
    }
}
