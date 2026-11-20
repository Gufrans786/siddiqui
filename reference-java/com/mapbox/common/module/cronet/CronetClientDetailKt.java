package com.mapbox.common.module.cronet;

import com.mapbox.bindgen.DataRef;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.ReadStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002¨\u0006\u0003"}, d2 = {"toOkioBuffer", "Lokio/Buffer;", "Lcom/mapbox/common/ReadStream;", "common_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class CronetClientDetailKt {
    public static final Buffer toOkioBuffer(ReadStream readStream) throws IOException {
        Buffer buffer = new Buffer();
        ByteBuffer byteBuffer = ByteBuffer.allocateDirect(4096);
        com.mapbox.common.Buffer buffer2 = new com.mapbox.common.Buffer(new DataRef(byteBuffer));
        while (!readStream.getExhausted()) {
            byteBuffer.clear();
            Expected<String, Long> expected = readStream.read(buffer2);
            Intrinsics.checkNotNullExpressionValue(expected, "this.read(commonBuffer)");
            if (expected.isValue()) {
                Long value = expected.getValue();
                Intrinsics.checkNotNull(value);
                byteBuffer.limit((int) value.longValue());
                Intrinsics.checkNotNullExpressionValue(byteBuffer, "byteBuffer");
                buffer.write(byteBuffer);
            } else {
                String error = expected.getError();
                Intrinsics.checkNotNull(error);
                throw new IOException(error);
            }
        }
        return buffer;
    }
}
