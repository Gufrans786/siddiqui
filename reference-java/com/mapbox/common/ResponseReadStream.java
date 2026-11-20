package com.mapbox.common;

import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.ExpectedFactory;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0013\u001a\u00020\u0006H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016J\u001c\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000e0\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001a"}, d2 = {"Lcom/mapbox/common/ResponseReadStream;", "Lcom/mapbox/common/ReadStream;", "okioBuffer", "Lokio/Buffer;", "(Lokio/Buffer;)V", "exhausted", "", "getExhausted", "()Z", "setExhausted", "(Z)V", "getOkioBuffer", "()Lokio/Buffer;", "readBytes", "", "getReadBytes", "()J", "setReadBytes", "(J)V", "isExhausted", "isReadable", "read", "Lcom/mapbox/bindgen/Expected;", "", "commonBuffer", "Lcom/mapbox/common/Buffer;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ResponseReadStream implements ReadStream {
    private boolean exhausted;
    private final okio.Buffer okioBuffer;
    private long readBytes;

    public ResponseReadStream(okio.Buffer okioBuffer) {
        Intrinsics.checkNotNullParameter(okioBuffer, "okioBuffer");
        this.okioBuffer = okioBuffer;
    }

    public final okio.Buffer getOkioBuffer() {
        return this.okioBuffer;
    }

    public final long getReadBytes() {
        return this.readBytes;
    }

    public final void setReadBytes(long j) {
        this.readBytes = j;
    }

    @Override
    public long getProcessed() {
        return this.readBytes;
    }

    public final boolean getExhausted() {
        return this.exhausted;
    }

    public final void setExhausted(boolean z) {
        this.exhausted = z;
    }

    @Override
    public boolean getExhausted() {
        return this.exhausted;
    }

    @Override
    public boolean isReadable() {
        return this.okioBuffer.size() > 0;
    }

    @Override
    public Expected<String, Long> read(Buffer commonBuffer) {
        Intrinsics.checkNotNullParameter(commonBuffer, "commonBuffer");
        try {
            ByteBuffer buffer = commonBuffer.getData().getBuffer();
            Intrinsics.checkNotNullExpressionValue(buffer, "commonBuffer.data.buffer");
            long j = 0;
            while (isReadable() && buffer.hasRemaining()) {
                int i = this.okioBuffer.read(buffer);
                if (i == -1) {
                    this.exhausted = true;
                    Expected<String, Long> expectedCreateValue = ExpectedFactory.createValue(Long.valueOf(j));
                    Intrinsics.checkNotNullExpressionValue(expectedCreateValue, "createValue(totalRead)");
                    return expectedCreateValue;
                }
                long j2 = i;
                j += j2;
                this.readBytes += j2;
            }
            Expected<String, Long> expectedCreateValue2 = ExpectedFactory.createValue(Long.valueOf(j));
            Intrinsics.checkNotNullExpressionValue(expectedCreateValue2, "createValue(totalRead)");
            return expectedCreateValue2;
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = "Unknown stream error";
            }
            Expected<String, Long> expectedCreateError = ExpectedFactory.createError(message);
            Intrinsics.checkNotNullExpressionValue(expectedCreateError, "createError(e.message ?: \"Unknown stream error\")");
            return expectedCreateError;
        }
    }
}
