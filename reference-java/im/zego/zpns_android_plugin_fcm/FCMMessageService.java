package im.zego.zpns_android_plugin_fcm;

import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.entity.ZPNsRegisterMessage;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.enums.ZPNsErrorCode;
import im.zego.zpns.enums.ZPNsType;
import im.zego.zpns.internal.ZPNsBridge;
import im.zego.zpns.internal.dispatcher.ZPNsBroadcastDispatcher;
import org.json.JSONObject;

public class FCMMessageService extends FirebaseMessagingService {
    public static final String TAG = "ZPNsFCMService";

    @Override
    public void onMessageReceived(RemoteMessage remoteMessage) {
        String title;
        String body;
        if (remoteMessage.getNotification() != null) {
            title = remoteMessage.getNotification().getTitle();
            body = remoteMessage.getNotification().getBody();
        } else {
            title = remoteMessage.getData().containsKey("title") ? remoteMessage.getData().get("title") : "";
            body = remoteMessage.getData().containsKey("content") ? remoteMessage.getData().get("content") : "";
        }
        String str = "get Data: " + remoteMessage.getData() + " getFrom: " + remoteMessage.getFrom() + " getTo: " + remoteMessage.getTo() + " getMessageId: " + remoteMessage.getMessageId() + " getSendTime: " + remoteMessage.getSentTime() + " getDataMap: " + remoteMessage.getData() + " getMessageType: " + remoteMessage.getMessageType() + " getTtl: " + remoteMessage.getTtl() + " getCollapseKey: " + remoteMessage.getCollapseKey();
        Log.i(TAG, "onMessageReceived is called. title: " + title + " content: " + body + " " + str);
        ZPNsMessage zPNsMessageBuild = ZPNsMessage.builder().pushSource(ZPNsConstants.PushSource.FCM).pushMessage(remoteMessage).title(title).content(body).extras(new JSONObject(remoteMessage.getData()).toString()).pushType(ZPNsType.NOTIFICATION_THROUGH).build();
        ZPNsBroadcastDispatcher.create(getApplication()).messageDispatch(zPNsMessageBuild);
        ZPNsBridge.zpnsLogInfo(TAG, "onMessageReceived. title: " + title + ",content: " + body + ", extras: " + zPNsMessageBuild.getExtras() + ", src remote msg params: " + str);
    }

    private void refreshedTokenToServer(String str) {
        ZPNsBroadcastDispatcher.create(getApplication()).commandDispatch(ZPNsRegisterMessage.builder().errorCode(ZPNsErrorCode.SUCCESS).pushSource(ZPNsConstants.PushSource.FCM).commandResult(str).build());
    }

    @Override
    public void onNewToken(String str) {
        Log.i(TAG, "onNewToken: " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        refreshedTokenToServer(str);
        ZPNsBridge.zpnsLogInfo(TAG, "onNewToken: " + str);
    }
}
