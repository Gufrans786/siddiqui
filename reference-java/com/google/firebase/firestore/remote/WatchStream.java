package com.google.firebase.firestore.remote;

import com.google.firebase.firestore.local.TargetData;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.AsyncQueue;
import com.google.firestore.v1.FirestoreGrpc;
import com.google.firestore.v1.ListenRequest;
import com.google.firestore.v1.ListenResponse;
import com.google.protobuf.ByteString;
import java.util.Map;

public class WatchStream extends AbstractStream<ListenRequest, ListenResponse, Callback> {
    public static final ByteString EMPTY_RESUME_TOKEN = ByteString.EMPTY;
    private final RemoteSerializer serializer;

    interface Callback extends Stream.StreamCallback {
        void onWatchChange(SnapshotVersion snapshotVersion, WatchChange watchChange);
    }

    @Override
    public void inhibitBackoff() {
        super.inhibitBackoff();
    }

    @Override
    public boolean isOpen() {
        return super.isOpen();
    }

    @Override
    public boolean isStarted() {
        return super.isStarted();
    }

    @Override
    public void start() {
        super.start();
    }

    @Override
    public void stop() {
        super.stop();
    }

    WatchStream(FirestoreChannel firestoreChannel, AsyncQueue asyncQueue, RemoteSerializer remoteSerializer, Callback callback) {
        super(firestoreChannel, FirestoreGrpc.getListenMethod(), asyncQueue, AsyncQueue.TimerId.LISTEN_STREAM_CONNECTION_BACKOFF, AsyncQueue.TimerId.LISTEN_STREAM_IDLE, AsyncQueue.TimerId.HEALTH_CHECK_TIMEOUT, callback);
        this.serializer = remoteSerializer;
    }

    public void watchQuery(TargetData targetData) {
        Assert.hardAssert(isOpen(), "Watching queries requires an open stream", new Object[0]);
        ListenRequest.Builder addTarget = ListenRequest.newBuilder().setDatabase(this.serializer.databaseName()).setAddTarget(this.serializer.encodeTarget(targetData));
        Map<String, String> mapEncodeListenRequestLabels = this.serializer.encodeListenRequestLabels(targetData);
        if (mapEncodeListenRequestLabels != null) {
            addTarget.putAllLabels(mapEncodeListenRequestLabels);
        }
        writeRequest(addTarget.build());
    }

    public void unwatchTarget(int i) {
        Assert.hardAssert(isOpen(), "Unwatching targets requires an open stream", new Object[0]);
        writeRequest(ListenRequest.newBuilder().setDatabase(this.serializer.databaseName()).setRemoveTarget(i).build());
    }

    @Override
    public void onFirst(ListenResponse listenResponse) {
        onNext(listenResponse);
    }

    @Override
    public void onNext(ListenResponse listenResponse) {
        this.backoff.reset();
        WatchChange watchChangeDecodeWatchChange = this.serializer.decodeWatchChange(listenResponse);
        ((Callback) this.listener).onWatchChange(this.serializer.decodeVersionFromListenResponse(listenResponse), watchChangeDecodeWatchChange);
    }
}
