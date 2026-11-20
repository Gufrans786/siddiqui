package com.google.firebase.firestore.model.mutation;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.model.ServerTimestamps;
import com.google.firestore.v1.Value;

public class ServerTimestampOperation implements TransformOperation {
    private static final ServerTimestampOperation SHARED_INSTANCE = new ServerTimestampOperation();

    @Override
    public Value applyToRemoteDocument(Value value, Value value2) {
        return value2;
    }

    @Override
    public Value computeBaseValue(Value value) {
        return null;
    }

    private ServerTimestampOperation() {
    }

    public static ServerTimestampOperation getInstance() {
        return SHARED_INSTANCE;
    }

    @Override
    public Value applyToLocalView(Value value, Timestamp timestamp) {
        return ServerTimestamps.valueOf(timestamp, value);
    }
}
