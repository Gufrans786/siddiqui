package io.invertase.firebase.firestore;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import io.invertase.firebase.interfaces.NativeEvent;

public class ReactNativeFirebaseFirestoreEvent implements NativeEvent {
    static final String COLLECTION_EVENT_SYNC = "firestore_collection_sync_event";
    private static final String DATABASE_ID = "databaseId";
    static final String DOCUMENT_EVENT_SYNC = "firestore_document_sync_event";
    private static final String KEY_APP_NAME = "appName";
    private static final String KEY_BODY = "body";
    private static final String KEY_EVENT_NAME = "eventName";
    private static final String KEY_ID = "listenerId";
    static final String SNAPSHOT_IN_SYNC_EVENT_SYNC = "firestore_snapshots_in_sync_event";
    static final String TRANSACTION_EVENT_SYNC = "firestore_transaction_event";
    private String appName;
    private String databaseId;
    private WritableMap eventBody;
    private String eventName;
    private int listenerId;

    ReactNativeFirebaseFirestoreEvent(String str, WritableMap writableMap, String str2, String str3, int i) {
        this.eventName = str;
        this.eventBody = writableMap;
        this.appName = str2;
        this.databaseId = str3;
        this.listenerId = i;
    }

    @Override
    public String getEventName() {
        return this.eventName;
    }

    @Override
    public WritableMap getEventBody() {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putInt(KEY_ID, this.listenerId);
        writableMapCreateMap.putMap(KEY_BODY, this.eventBody);
        writableMapCreateMap.putString(KEY_APP_NAME, this.appName);
        writableMapCreateMap.putString(DATABASE_ID, this.databaseId);
        writableMapCreateMap.putString(KEY_EVENT_NAME, this.eventName);
        return writableMapCreateMap;
    }

    @Override
    public String getFirebaseAppName() {
        return this.appName;
    }
}
