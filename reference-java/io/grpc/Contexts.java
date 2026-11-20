package io.grpc;

import com.google.common.base.Preconditions;
import java.util.concurrent.TimeoutException;

public final class Contexts {
    private Contexts() {
    }

    public static <ReqT, RespT> ServerCall.Listener<ReqT> interceptCall(Context context, ServerCall<ReqT, RespT> serverCall, Metadata metadata, ServerCallHandler<ReqT, RespT> serverCallHandler) {
        Context contextAttach = context.attach();
        try {
            return new ContextualizedServerCallListener(serverCallHandler.startCall(serverCall, metadata), context);
        } finally {
            context.detach(contextAttach);
        }
    }

    private static class ContextualizedServerCallListener<ReqT> extends ForwardingServerCallListener.SimpleForwardingServerCallListener<ReqT> {
        private final Context context;

        public ContextualizedServerCallListener(ServerCall.Listener<ReqT> listener, Context context) {
            super(listener);
            this.context = context;
        }

        @Override
        public void onMessage(ReqT reqt) {
            Context contextAttach = this.context.attach();
            try {
                super.onMessage(reqt);
            } finally {
                this.context.detach(contextAttach);
            }
        }

        @Override
        public void onHalfClose() {
            Context contextAttach = this.context.attach();
            try {
                super.onHalfClose();
            } finally {
                this.context.detach(contextAttach);
            }
        }

        @Override
        public void onCancel() {
            Context contextAttach = this.context.attach();
            try {
                super.onCancel();
            } finally {
                this.context.detach(contextAttach);
            }
        }

        @Override
        public void onComplete() {
            Context contextAttach = this.context.attach();
            try {
                super.onComplete();
            } finally {
                this.context.detach(contextAttach);
            }
        }

        @Override
        public void onReady() {
            Context contextAttach = this.context.attach();
            try {
                super.onReady();
            } finally {
                this.context.detach(contextAttach);
            }
        }
    }

    public static Status statusFromCancelled(Context context) {
        Preconditions.checkNotNull(context, "context must not be null");
        if (!context.isCancelled()) {
            return null;
        }
        Throwable thCancellationCause = context.cancellationCause();
        if (thCancellationCause == null) {
            return Status.CANCELLED.withDescription("io.grpc.Context was cancelled without error");
        }
        if (thCancellationCause instanceof TimeoutException) {
            return Status.DEADLINE_EXCEEDED.withDescription(thCancellationCause.getMessage()).withCause(thCancellationCause);
        }
        Status statusFromThrowable = Status.fromThrowable(thCancellationCause);
        if (Status.Code.UNKNOWN.equals(statusFromThrowable.getCode()) && statusFromThrowable.getCause() == thCancellationCause) {
            return Status.CANCELLED.withDescription("Context cancelled").withCause(thCancellationCause);
        }
        return statusFromThrowable.withCause(thCancellationCause);
    }
}
