package io.grpc.okhttp;

import androidx.core.app.NotificationCompat;
import com.google.common.base.Preconditions;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.grpc.Attributes;
import io.grpc.Metadata;
import io.grpc.Status;
import io.grpc.internal.AbstractServerStream;
import io.grpc.internal.StatsTraceContext;
import io.grpc.internal.TransportTracer;
import io.grpc.internal.WritableBuffer;
import io.grpc.okhttp.internal.framed.ErrorCode;
import io.grpc.okhttp.internal.framed.Header;
import io.perfmark.PerfMark;
import io.perfmark.Tag;
import io.perfmark.TaskCloseable;
import java.util.List;
import okio.Buffer;

class OkHttpServerStream extends AbstractServerStream {
    private final Attributes attributes;
    private final String authority;
    private final Sink sink;
    private final TransportState state;
    private final TransportTracer transportTracer;

    public OkHttpServerStream(TransportState transportState, Attributes attributes, String str, StatsTraceContext statsTraceContext, TransportTracer transportTracer) {
        super(new OkHttpWritableBufferAllocator(), statsTraceContext);
        this.sink = new Sink();
        this.state = (TransportState) Preconditions.checkNotNull(transportState, RemoteConfigConstants.ResponseFieldKey.STATE);
        this.attributes = (Attributes) Preconditions.checkNotNull(attributes, "transportAttrs");
        this.authority = str;
        this.transportTracer = (TransportTracer) Preconditions.checkNotNull(transportTracer, "transportTracer");
    }

    @Override
    public TransportState transportState() {
        return this.state;
    }

    @Override
    public Sink abstractServerStreamSink() {
        return this.sink;
    }

    @Override
    public int streamId() {
        return this.state.streamId;
    }

    @Override
    public String getAuthority() {
        return this.authority;
    }

    @Override
    public Attributes getAttributes() {
        return this.attributes;
    }

    class Sink implements AbstractServerStream.Sink {
        Sink() {
        }

        @Override
        public void writeHeaders(Metadata metadata, boolean z) {
            TaskCloseable taskCloseableTraceTask = PerfMark.traceTask("OkHttpServerStream$Sink.writeHeaders");
            try {
                List<Header> listCreateResponseHeaders = Headers.createResponseHeaders(metadata);
                synchronized (OkHttpServerStream.this.state.lock) {
                    try {
                        OkHttpServerStream.this.state.sendHeaders(listCreateResponseHeaders);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (taskCloseableTraceTask != null) {
                    taskCloseableTraceTask.close();
                }
            } catch (Throwable th2) {
                if (taskCloseableTraceTask != null) {
                    try {
                        taskCloseableTraceTask.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }

        @Override
        public void writeFrame(WritableBuffer writableBuffer, boolean z, int i) {
            TaskCloseable taskCloseableTraceTask = PerfMark.traceTask("OkHttpServerStream$Sink.writeFrame");
            try {
                Buffer buffer = ((OkHttpWritableBuffer) writableBuffer).buffer();
                int size = (int) buffer.size();
                if (size > 0) {
                    OkHttpServerStream.this.onSendingBytes(size);
                }
                synchronized (OkHttpServerStream.this.state.lock) {
                    try {
                        OkHttpServerStream.this.state.sendBuffer(buffer, z);
                        OkHttpServerStream.this.transportTracer.reportMessageSent(i);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (taskCloseableTraceTask != null) {
                    taskCloseableTraceTask.close();
                }
            } catch (Throwable th2) {
                if (taskCloseableTraceTask != null) {
                    try {
                        taskCloseableTraceTask.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }

        @Override
        public void writeTrailers(Metadata metadata, boolean z, Status status) {
            TaskCloseable taskCloseableTraceTask = PerfMark.traceTask("OkHttpServerStream$Sink.writeTrailers");
            try {
                List<Header> listCreateResponseTrailers = Headers.createResponseTrailers(metadata, z);
                synchronized (OkHttpServerStream.this.state.lock) {
                    try {
                        OkHttpServerStream.this.state.sendTrailers(listCreateResponseTrailers);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (taskCloseableTraceTask != null) {
                    taskCloseableTraceTask.close();
                }
            } catch (Throwable th2) {
                if (taskCloseableTraceTask != null) {
                    try {
                        taskCloseableTraceTask.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }

        @Override
        public void cancel(io.grpc.Status r5) {
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.okhttp.OkHttpServerStream.Sink.cancel(io.grpc.Status):void");
        }
    }

    static class TransportState extends AbstractServerStream.TransportState implements OutboundFlowController.Stream, OkHttpServerTransport.StreamState {
        private boolean cancelSent;
        private final ExceptionHandlingFrameWriter frameWriter;
        private final int initialWindowSize;
        private final Object lock;
        private final OutboundFlowController outboundFlow;
        private final OutboundFlowController.StreamState outboundFlowState;
        private int processedWindow;
        private boolean receivedEndOfStream;
        private final int streamId;
        private final Tag tag;
        private final OkHttpServerTransport transport;
        private int window;

        public TransportState(OkHttpServerTransport okHttpServerTransport, int i, int i2, StatsTraceContext statsTraceContext, Object obj, ExceptionHandlingFrameWriter exceptionHandlingFrameWriter, OutboundFlowController outboundFlowController, int i3, TransportTracer transportTracer, String str) {
            super(i2, statsTraceContext, transportTracer);
            this.cancelSent = false;
            this.transport = (OkHttpServerTransport) Preconditions.checkNotNull(okHttpServerTransport, NotificationCompat.CATEGORY_TRANSPORT);
            this.streamId = i;
            this.lock = Preconditions.checkNotNull(obj, "lock");
            this.frameWriter = exceptionHandlingFrameWriter;
            this.outboundFlow = outboundFlowController;
            this.window = i3;
            this.processedWindow = i3;
            this.initialWindowSize = i3;
            this.tag = PerfMark.createTag(str);
            this.outboundFlowState = outboundFlowController.createState(this, i);
        }

        @Override
        public void deframeFailed(Throwable th) {
            cancel(ErrorCode.INTERNAL_ERROR, Status.fromThrowable(th));
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
                this.frameWriter.windowUpdate(this.streamId, i4);
                this.frameWriter.flush();
            }
        }

        @Override
        public void runOnTransportThread(Runnable runnable) {
            synchronized (this.lock) {
                runnable.run();
            }
        }

        @Override
        public void inboundDataReceived(Buffer buffer, int i, int i2, boolean z) {
            synchronized (this.lock) {
                PerfMark.event("OkHttpServerTransport$FrameHandler.data", this.tag);
                if (z) {
                    this.receivedEndOfStream = true;
                }
                this.window -= i + i2;
                this.processedWindow -= i2;
                super.inboundDataReceived(new OkHttpReadableBuffer(buffer), z);
            }
        }

        @Override
        public void inboundRstReceived(Status status) {
            PerfMark.event("OkHttpServerTransport$FrameHandler.rstStream", this.tag);
            transportReportStatus(status);
        }

        @Override
        public boolean hasReceivedEndOfStream() {
            boolean z;
            synchronized (this.lock) {
                z = this.receivedEndOfStream;
            }
            return z;
        }

        @Override
        public int inboundWindowAvailable() {
            int i;
            synchronized (this.lock) {
                i = this.window;
            }
            return i;
        }

        public void sendBuffer(Buffer buffer, boolean z) {
            if (this.cancelSent) {
                return;
            }
            this.outboundFlow.data(false, this.outboundFlowState, buffer, z);
        }

        public void sendHeaders(List<Header> list) {
            this.frameWriter.synReply(false, this.streamId, list);
            this.frameWriter.flush();
        }

        public void sendTrailers(final List<Header> list) {
            this.outboundFlow.notifyWhenNoPendingData(this.outboundFlowState, new Runnable() {
                @Override
                public final void run() {
                    this.f$0.m1437x223b3517(list);
                }
            });
        }

        public void m1437x223b3517(List<Header> list) {
            synchronized (this.lock) {
                this.frameWriter.synReply(true, this.streamId, list);
                if (!this.receivedEndOfStream) {
                    this.frameWriter.rstStream(this.streamId, ErrorCode.NO_ERROR);
                }
                this.transport.streamClosed(this.streamId, true);
                complete();
            }
        }

        public void cancel(ErrorCode errorCode, Status status) {
            if (this.cancelSent) {
                return;
            }
            this.cancelSent = true;
            this.frameWriter.rstStream(this.streamId, errorCode);
            transportReportStatus(status);
            this.transport.streamClosed(this.streamId, true);
        }

        @Override
        public OutboundFlowController.StreamState getOutboundFlowState() {
            return this.outboundFlowState;
        }
    }
}
