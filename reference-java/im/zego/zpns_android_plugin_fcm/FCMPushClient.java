package im.zego.zpns_android_plugin_fcm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.RemoteMessage;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.entity.ZPNsRegisterMessage;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.enums.ZPNsErrorCode;
import im.zego.zpns.enums.ZPNsType;
import im.zego.zpns.internal.basic.PushClient;
import im.zego.zpns.internal.dispatcher.ZPNsBroadcastDispatcher;
import im.zego.zpns.util.ZPNsConfig;
import org.json.JSONObject;

public class FCMPushClient extends PushClient {
    private Context context;

    @Override
    public void setApplicationIconBadgeNumber(Context context, int i) {
    }

    public FCMPushClient(ZPNsConfig zPNsConfig) {
        super(zPNsConfig);
        this.context = null;
    }

    @Override
    public ZPNsErrorCode register(Context context) {
        this.context = context;
        FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                this.f$0.m1432lambda$register$0$imzegozpns_android_plugin_fcmFCMPushClient(task);
            }
        });
        return ZPNsErrorCode.SUCCESS;
    }

    void m1432lambda$register$0$imzegozpns_android_plugin_fcmFCMPushClient(Task task) {
        if (!task.isSuccessful()) {
            sendRegTokenToServer(null, false, task.getException() != null ? task.getException().toString() : "");
        } else {
            sendRegTokenToServer((String) task.getResult(), true, "");
        }
    }

    private void sendRegTokenToServer(String str, boolean z, String str2) {
        ZPNsBroadcastDispatcher.create(this.context).commandDispatch(ZPNsRegisterMessage.builder().errorCode(z ? ZPNsErrorCode.SUCCESS : ZPNsErrorCode.OBTAIN_PUSH_ID_FAILS).pushSource(ZPNsConstants.PushSource.FCM).commandResult(str).msg(str2).build());
    }

    @Override
    public ZPNsErrorCode unRegister(Context context) {
        FirebaseMessaging.getInstance().deleteToken();
        return ZPNsErrorCode.SUCCESS;
    }

    @Override
    public ZPNsConstants.PushSource getType() {
        return ZPNsConstants.PushSource.FCM;
    }

    @Override
    public ZPNsMessage getZPNsMessage(Intent intent) {
        Bundle extras = intent.getExtras();
        ZPNsMessage.Builder builder = ZPNsMessage.builder();
        builder.pushType(ZPNsType.NOTIFICATION_CLICK);
        builder.pushSource(ZPNsConstants.PushSource.FCM);
        if (extras != null) {
            try {
                JSONObject jSONObject = new JSONObject(extras.getString("zego", ""));
                if (jSONObject.getInt("version") == 1) {
                    builder.requestID(jSONObject.getString("zpns_request_id"));
                }
            } catch (Error | Exception unused) {
            }
            builder.payload(extras.getString("payload", ""));
        }
        if (extras != null) {
            builder.pushMessage(new RemoteMessage(extras));
        }
        return builder.build();
    }
}
