package io.grpc;

import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ClientInterceptors {
    private static final ClientCall<Object, Object> NOOP_CALL = new ClientCall<Object, Object>() {
        @Override
        public void cancel(String str, Throwable th) {
        }

        @Override
        public void halfClose() {
        }

        @Override
        public boolean isReady() {
            return false;
        }

        @Override
        public void request(int i) {
        }

        @Override
        public void sendMessage(Object obj) {
        }

        @Override
        public void start(ClientCall.Listener<Object> listener, Metadata metadata) {
        }
    };

    private ClientInterceptors() {
    }

    public static Channel interceptForward(Channel channel, ClientInterceptor... clientInterceptorArr) {
        return interceptForward(channel, (List<? extends ClientInterceptor>) Arrays.asList(clientInterceptorArr));
    }

    public static Channel interceptForward(Channel channel, List<? extends ClientInterceptor> list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.reverse(arrayList);
        return intercept(channel, arrayList);
    }

    public static Channel intercept(Channel channel, ClientInterceptor... clientInterceptorArr) {
        return intercept(channel, (List<? extends ClientInterceptor>) Arrays.asList(clientInterceptorArr));
    }

    public static Channel intercept(Channel channel, List<? extends ClientInterceptor> list) {
        Preconditions.checkNotNull(channel, "channel");
        Iterator<? extends ClientInterceptor> it = list.iterator();
        while (it.hasNext()) {
            channel = new InterceptorChannel(channel, it.next(), null);
        }
        return channel;
    }

    class AnonymousClass1 implements ClientInterceptor {
        final ClientInterceptor val$interceptor;
        final MethodDescriptor.Marshaller val$reqMarshaller;
        final MethodDescriptor.Marshaller val$respMarshaller;

        AnonymousClass1(MethodDescriptor.Marshaller marshaller, MethodDescriptor.Marshaller marshaller2, ClientInterceptor clientInterceptor) {
            this.val$reqMarshaller = marshaller;
            this.val$respMarshaller = marshaller2;
            this.val$interceptor = clientInterceptor;
        }

        @Override
        public <ReqT, RespT> ClientCall<ReqT, RespT> interceptCall(final MethodDescriptor<ReqT, RespT> methodDescriptor, CallOptions callOptions, Channel channel) {
            final ClientCall<ReqT, RespT> clientCallInterceptCall = this.val$interceptor.interceptCall(methodDescriptor.toBuilder(this.val$reqMarshaller, this.val$respMarshaller).build(), callOptions, channel);
            return new PartialForwardingClientCall<ReqT, RespT>() {
                @Override
                public void start(final ClientCall.Listener<RespT> listener, Metadata metadata) {
                    clientCallInterceptCall.start(new PartialForwardingClientCallListener<WRespT>() {
                        @Override
                        public void onMessage(WRespT wrespt) {
                            listener.onMessage(methodDescriptor.getResponseMarshaller().parse(AnonymousClass1.this.val$respMarshaller.stream(wrespt)));
                        }

                        @Override
                        protected ClientCall.Listener<?> delegate() {
                            return listener;
                        }
                    }, metadata);
                }

                @Override
                public void sendMessage(ReqT reqt) {
                    clientCallInterceptCall.sendMessage(AnonymousClass1.this.val$reqMarshaller.parse(methodDescriptor.getRequestMarshaller().stream(reqt)));
                }

                @Override
                protected ClientCall<?, ?> delegate() {
                    return clientCallInterceptCall;
                }
            };
        }
    }

    static <WReqT, WRespT> ClientInterceptor wrapClientInterceptor(ClientInterceptor clientInterceptor, MethodDescriptor.Marshaller<WReqT> marshaller, MethodDescriptor.Marshaller<WRespT> marshaller2) {
        return new AnonymousClass1(marshaller, marshaller2, clientInterceptor);
    }

    private static class InterceptorChannel extends Channel {
        private final Channel channel;
        private final ClientInterceptor interceptor;

        InterceptorChannel(Channel channel, ClientInterceptor clientInterceptor, AnonymousClass1 anonymousClass1) {
            this(channel, clientInterceptor);
        }

        private InterceptorChannel(Channel channel, ClientInterceptor clientInterceptor) {
            this.channel = channel;
            this.interceptor = (ClientInterceptor) Preconditions.checkNotNull(clientInterceptor, "interceptor");
        }

        @Override
        public <ReqT, RespT> ClientCall<ReqT, RespT> newCall(MethodDescriptor<ReqT, RespT> methodDescriptor, CallOptions callOptions) {
            return this.interceptor.interceptCall(methodDescriptor, callOptions, this.channel);
        }

        @Override
        public String authority() {
            return this.channel.authority();
        }
    }

    public static abstract class CheckedForwardingClientCall<ReqT, RespT> extends ForwardingClientCall<ReqT, RespT> {
        private ClientCall<ReqT, RespT> delegate;

        protected abstract void checkedStart(ClientCall.Listener<RespT> listener, Metadata metadata) throws Exception;

        protected CheckedForwardingClientCall(ClientCall<ReqT, RespT> clientCall) {
            this.delegate = clientCall;
        }

        @Override
        protected final ClientCall<ReqT, RespT> delegate() {
            return this.delegate;
        }

        @Override
        public final void start(ClientCall.Listener<RespT> listener, Metadata metadata) {
            try {
                checkedStart(listener, metadata);
            } catch (Exception e) {
                this.delegate = ClientInterceptors.NOOP_CALL;
                Metadata metadataTrailersFromThrowable = Status.trailersFromThrowable(e);
                Status statusFromThrowable = Status.fromThrowable(e);
                if (metadataTrailersFromThrowable == null) {
                    metadataTrailersFromThrowable = new Metadata();
                }
                listener.onClose(statusFromThrowable, metadataTrailersFromThrowable);
            }
        }
    }
}
