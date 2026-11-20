package com.mapbox.common.module.okhttp;

import com.mapbox.bindgen.DataRef;
import com.mapbox.bindgen.Expected;
import com.mapbox.common.ReadStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/mapbox/common/module/okhttp/StreamingRequestBody;", "Lokhttp3/RequestBody;", "inputStream", "Lcom/mapbox/common/ReadStream;", "contentType", "Lokhttp3/MediaType;", "(Lcom/mapbox/common/ReadStream;Lokhttp3/MediaType;)V", "buffer", "Lokio/Buffer;", "getBuffer", "()Lokio/Buffer;", "getContentType", "()Lokhttp3/MediaType;", "getInputStream", "()Lcom/mapbox/common/ReadStream;", "contentLength", "", "isOneShot", "", "writeTo", "", "sink", "Lokio/BufferedSink;", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class StreamingRequestBody extends RequestBody {
    private final Buffer buffer;
    private final MediaType contentType;
    private final ReadStream inputStream;

    @Override
    public boolean isOneShot() {
        return false;
    }

    public StreamingRequestBody(ReadStream inputStream, MediaType mediaType) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        this.inputStream = inputStream;
        this.contentType = mediaType;
        this.buffer = new Buffer();
        ByteBuffer byteBuffer = ByteBuffer.allocateDirect(4096);
        com.mapbox.common.Buffer buffer = new com.mapbox.common.Buffer(new DataRef(byteBuffer));
        while (!this.inputStream.getExhausted()) {
            byteBuffer.clear();
            Expected<String, Long> expected = this.inputStream.read(buffer);
            Intrinsics.checkNotNullExpressionValue(expected, "inputStream.read(commonBuffer)");
            if (expected.isValue()) {
                Long value = expected.getValue();
                Intrinsics.checkNotNull(value);
                byteBuffer.limit((int) value.longValue());
                Buffer buffer2 = this.buffer;
                Intrinsics.checkNotNullExpressionValue(byteBuffer, "byteBuffer");
                buffer2.write(byteBuffer);
            } else {
                String error = expected.getError();
                Intrinsics.checkNotNull(error);
                throw new IOException(error);
            }
        }
    }

    public final MediaType getContentType() {
        return this.contentType;
    }

    public final ReadStream getInputStream() {
        return this.inputStream;
    }

    public final Buffer getBuffer() {
        return this.buffer;
    }

    @Override
    public MediaType getContentType() {
        return this.contentType;
    }

    @Override
    public long contentLength() {
        return this.buffer.size();
    }

    @Override
    public void writeTo(BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        sink.writeAll(this.buffer.copy());
    }
}
