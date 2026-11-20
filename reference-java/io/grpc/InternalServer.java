package io.grpc;

public class InternalServer {
    public static final Context.Key<Server> SERVER_CONTEXT_KEY = Server.SERVER_CONTEXT_KEY;

    private InternalServer() {
    }
}
