package io.invertase.firebase.messaging;

import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import io.invertase.firebase.common.ReactNativeFirebaseEventEmitter;

public class ReactNativeFirebaseMessagingService extends FirebaseMessagingService {
    @Override
    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    @Override
    public void onSendError(String str, Exception exc) {
        ReactNativeFirebaseEventEmitter.getSharedInstance().sendEvent(ReactNativeFirebaseMessagingSerializer.messageSendErrorToEvent(str, exc));
    }

    @Override
    public void onDeletedMessages() {
        ReactNativeFirebaseEventEmitter.getSharedInstance().sendEvent(ReactNativeFirebaseMessagingSerializer.messagesDeletedToEvent());
    }

    @Override
    public void onMessageSent(String str) {
        ReactNativeFirebaseEventEmitter.getSharedInstance().sendEvent(ReactNativeFirebaseMessagingSerializer.messageSentToEvent(str));
    }

    @Override
    public void onNewToken(String str) {
        ReactNativeFirebaseEventEmitter.getSharedInstance().sendEvent(ReactNativeFirebaseMessagingSerializer.newTokenToTokenEvent(str));
    }
}
