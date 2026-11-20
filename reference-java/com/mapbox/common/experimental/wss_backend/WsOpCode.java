package com.mapbox.common.experimental.wss_backend;

public enum WsOpCode {
    TEXT,
    BINARY,
    CONTINUATION,
    CLOSE,
    PING,
    PONG;

    private int getValue() {
        return ordinal();
    }
}
