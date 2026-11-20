package io.grpc;

public interface ServerCallHandler<RequestT, ResponseT> {
    ServerCall.Listener<RequestT> startCall(ServerCall<RequestT, ResponseT> serverCall, Metadata metadata);
}
