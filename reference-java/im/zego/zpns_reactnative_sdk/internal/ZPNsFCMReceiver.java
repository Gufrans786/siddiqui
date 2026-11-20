package im.zego.zpns_reactnative_sdk.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.firebase.messaging.RemoteMessage;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.enums.ZPNsType;
import org.json.JSONObject;

public class ZPNsFCMReceiver extends BroadcastReceiver {
    private static final String TAG = "ZPNsFCM";

    @Override
    public void onReceive(Context context, Intent intent) {
        String title;
        String body;
        Log.i(TAG, "ZPNs Flutter FCM message received: " + intent.getExtras());
        if (intent.getExtras() == null) {
            Log.d(TAG, "broadcast received but intent contained no extras to process RemoteMessage. Operation cancelled.");
            return;
        }
        Log.i(TAG, "print intent extras: " + intent.getExtras());
        RemoteMessage remoteMessage = new RemoteMessage(intent.getExtras());
        if (remoteMessage.getNotification() != null) {
            Log.i(TAG, "this is notification, ignore");
            return;
        }
        if (remoteMessage.getNotification() != null) {
            title = remoteMessage.getNotification().getTitle();
            body = remoteMessage.getNotification().getBody();
        } else {
            title = remoteMessage.getData().containsKey("title") ? remoteMessage.getData().get("title") : "";
            body = remoteMessage.getData().containsKey("content") ? remoteMessage.getData().get("content") : "";
        }
        ZPNsMessage.Builder builderPushType = ZPNsMessage.builder().pushSource(ZPNsConstants.PushSource.FCM).pushMessage(remoteMessage).title(title).content(body).extras(new JSONObject(remoteMessage.getData()).toString()).pushType(ZPNsType.NOTIFICATION_THROUGH);
        if (ZPNsPluginUtils.isApplicationForeground(context)) {
            ZPNsPluginEventHandler.getInstance().onThroughForegroundMessage(context, builderPushType.build());
        } else {
            ZPNsPluginEventHandler.getInstance().onThroughBackgroundMessage(context, builderPushType.build());
        }
    }
}
