package io.grpc.okhttp;

import com.google.common.base.Preconditions;
import io.grpc.Attributes;
import io.grpc.CallOptions;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.AbstractClientStream;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.Http2ClientStreamTransportState;
import io.grpc.internal.StatsTraceContext;
import io.grpc.internal.TransportTracer;
import io.grpc.okhttp.internal.framed.ErrorCode;
import io.grpc.okhttp.internal.framed.Header;
import io.perfmark.PerfMark;
import io.perfmark.Tag;
import java.io.EOFException;
import java.util.List;
import okio.Buffer;

class OkHttpClientStream extends AbstractClientStream {
    public static final int ABSENT_ID = -1;
    private static final Buffer EMPTY_BUFFER = new Buffer();
    private final Attributes attributes;
    private String authority;
    private final MethodDescriptor<?, ?> method;
    private final Sink sink;
    private final TransportState state;
    private final StatsTraceContext statsTraceCtx;
    private boolean useGet;
    private final String userAgent;

    OkHttpClientStream(MethodDescriptor<?, ?> methodDescriptor, Metadata metadata, ExceptionHandlingFrameWriter exceptionHandlingFrameWriter, OkHttpClientTransport okHttpClientTransport, OutboundFlowController outboundFlowController, Object obj, int i, int i2, String str, String str2, StatsTraceContext statsTraceContext, TransportTracer transportTracer, CallOptions callOptions, boolean z) {
        super(new OkHttpWritableBufferAllocator(), statsTraceContext, transportTracer, metadata, callOptions, z && methodDescriptor.isSafe());
        this.sink = new Sink();
        this.useGet = false;
        this.statsTraceCtx = (StatsTraceContext) Preconditions.checkNotNull(statsTraceContext, "statsTraceCtx");
        this.method = methodDescriptor;
        this.authority = str;
        this.userAgent = str2;
        this.attributes = okHttpClientTransport.getAttributes();
        this.state = new TransportState(i, statsTraceContext, obj, exceptionHandlingFrameWriter, outboundFlowController, okHttpClientTransport, i2, methodDescriptor.getFullMethodName());
    }

    @Override
    public TransportState transportState() {
        return this.state;
    }

    @Override
    public Sink abstractClientStreamSink() {
        return this.sink;
    }

    public MethodDescriptor.MethodType getType() {
        return this.method.getType();
    }

    boolean useGet() {
        return this.useGet;
    }

    @Override
    public void setAuthority(String str) {
        this.authority = (String) Preconditions.checkNotNull(str, "authority");
    }

    @Override
    public Attributes getAttributes() {
        return this.attributes;
    }

    class Sink implements AbstractClientStream.Sink {
        Sink() {
        }

        @Override
        public void writeHeaders(io.grpc.Metadata r5, byte[] r6) {
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.okhttp.OkHttpClientStream.Sink.writeHeaders(io.grpc.Metadata, byte[]):void");
        }

        @Override
        public void writeFrame(io.grpc.internal.WritableBuffer r4, boolean r5, boolean r6, int r7) {
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.okhttp.OkHttpClientStream.Sink.writeFrame(io.grpc.internal.WritableBuffer, boolean, boolean, int):void");
        }

        @Override
        public void cancel(io.grpc.Status r6) {
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.okhttp.OkHttpClientStream.Sink.cancel(io.grpc.Status):void");
        }
    }

    class TransportState extends Http2ClientStreamTransportState implements OutboundFlowController.Stream {
        private boolean canStart;
        private boolean cancelSent;
        private boolean flushPendingData;
        private final ExceptionHandlingFrameWriter frameWriter;
        private int id;
        private final int initialWindowSize;
        private final Object lock;
        private final OutboundFlowController outboundFlow;
        private OutboundFlowController.StreamState outboundFlowState;
        private Buffer pendingData;
        private boolean pendingDataHasEndOfStream;
        private int processedWindow;
        private List<Header> requestHeaders;
        private final Tag tag;
        private final OkHttpClientTransport transport;
        private int window;

        public TransportState(int i, StatsTraceContext statsTraceContext, Object obj, ExceptionHandlingFrameWriter exceptionHandlingFrameWriter, OutboundFlowController outboundFlowController, OkHttpClientTransport okHttpClientTransport, int i2, String str) {
            super(i, statsTraceContext, OkHttpClientStream.this.getTransportTracer());
            this.pendingData = new Buffer();
            this.pendingDataHasEndOfStream = false;
            this.flushPendingData = false;
            this.cancelSent = false;
            this.canStart = true;
            this.id = -1;
            this.lock = Preconditions.checkNotNull(obj, "lock");
            this.frameWriter = exceptionHandlingFrameWriter;
            this.outboundFlow = outboundFlowController;
            this.transport = okHttpClientTransport;
            this.window = i2;
            this.processedWindow = i2;
            this.initialWindowSize = i2;
            this.tag = PerfMark.createTag(str);
        }

        public void start(int i) {
            Preconditions.checkState(this.id == -1, "the stream has been started with id %s", i);
            this.id = i;
            this.outboundFlowState = this.outboundFlow.createState(this, i);
            OkHttpClientStream.this.state.onStreamAllocated();
            if (this.canStart) {
                this.frameWriter.synStream(OkHttpClientStream.this.useGet, false, this.id, 0, this.requestHeaders);
                OkHttpClientStream.this.statsTraceCtx.clientOutboundHeaders();
                this.requestHeaders = null;
                if (this.pendingData.size() > 0) {
                    this.outboundFlow.data(this.pendingDataHasEndOfStream, this.outboundFlowState, this.pendingData, this.flushPendingData);
                }
                this.canStart = false;
            }
        }

        @Override
        protected void onStreamAllocated() {
            super.onStreamAllocated();
            getTransportTracer().reportLocalStreamStarted();
        }

        @Override
        protected void http2ProcessingFailed(Status status, boolean z, Metadata metadata) throws EOFException {
            cancel(status, z, metadata);
        }

        @Override
        public void deframeFailed(Throwable th) throws EOFException {
            http2ProcessingFailed(Status.fromThrowable(th), true, new Metadata());
        }

        @Override
        public void bytesRead(int i) {
            int i2 = this.processedWindow - i;
            this.processedWindow = i2;
            float f = i2;
            int i3 = this.initialWindowSize;
            if (f <= i3 * 0.5f) {
                int i4 = i3 - i2;
                this.window += i4;
                this.processedWindow = i2 + i4;
                this.frameWriter.windowUpdate(id(), i4);
            }
        }

        @Override
        public void deframerClosed(boolean z) {
            onEndOfStream();
            super.deframerClosed(z);
        }

        @Override
        public void runOnTransportThread(Runnable runnable) {
            synchronized (this.lock) {
                runnable.run();
            }
        }

        public void transportHeadersReceived(List<Header> list, boolean z) {
            if (z) {
                transportTrailersReceived(Utils.convertTrailers(list));
            } else {
                transportHeadersReceived(Utils.convertHeaders(list));
            }
        }

        public void transportDataReceived(Buffer buffer, boolean z, int i) {
            int size = this.window - (((int) buffer.size()) + i);
            this.window = size;
            this.processedWindow -= i;
            if (size < 0) {
                this.frameWriter.rstStream(id(), ErrorCode.FLOW_CONTROL_ERROR);
                this.transport.finishStream(id(), Status.INTERNAL.withDescription("Received data size exceeded our receiving window size"), ClientStreamListener.RpcProgress.PROCESSED, false, null, null);
            } else {
                super.transportDataReceived(new OkHttpReadableBuffer(buffer), z);
            }
        }

        private void onEndOfStream() {
            if (!isOutboundClosed()) {
                this.transport.finishStream(id(), null, ClientStreamListener.RpcProgress.PROCESSED, false, ErrorCode.CANCEL, null);
            } else {
                this.transport.finishStream(id(), null, ClientStreamListener.RpcProgress.PROCESSED, false, null, null);
            }
        }

        public void cancel(Status status, boolean z, Metadata metadata) throws EOFException {
            if (this.cancelSent) {
                return;
            }
            this.cancelSent = true;
            if (this.canStart) {
                this.transport.removePendingStream(OkHttpClientStream.this);
                this.requestHeaders = null;
                this.pendingData.clear();
                this.canStart = false;
                if (metadata == null) {
                    metadata = new Metadata();
                }
                transportReportStatus(status, true, metadata);
                return;
            }
            this.transport.finishStream(id(), status, ClientStreamListener.RpcProgress.PROCESSED, z, ErrorCode.CANCEL, metadata);
        }

        public void sendBuffer(Buffer buffer, boolean z, boolean z2) {
            if (this.cancelSent) {
                return;
            }
            if (this.canStart) {
                this.pendingData.write(buffer, (int) buffer.size());
                this.pendingDataHasEndOfStream |= z;
                this.flushPendingData |= z2;
            } else {
                Preconditions.checkState(id() != -1, "streamId should be set");
                this.outboundFlow.data(z, this.outboundFlowState, buffer, z2);
            }
        }

        public void streamReady(Metadata metadata, String str) {
            this.requestHeaders = Headers.createRequestHeaders(metadata, str, OkHttpClientStream.this.authority, OkHttpClientStream.this.userAgent, OkHttpClientStream.this.useGet, this.transport.isUsingPlaintext());
            this.transport.streamReadyToStart(OkHttpClientStream.this);
        }

        Tag tag() {
            return this.tag;
        }

        int id() {
            return this.id;
        }

        OutboundFlowController.StreamState getOutboundFlowState() {
            OutboundFlowController.StreamState streamState;
            synchronized (this.lock) {
                streamState = this.outboundFlowState;
            }
            return streamState;
        }
    }
}
