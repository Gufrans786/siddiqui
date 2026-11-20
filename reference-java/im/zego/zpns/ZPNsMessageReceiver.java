package im.zego.zpns;

import android.content.Context;
import android.content.Intent;
import com.caverock.androidsvg.BuildConfig;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.entity.ZPNsRegisterMessage;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.internal.ZPNsBridge;
import im.zego.zpns.internal.basic.IntentReceiver;
import im.zego.zpns.internal.util.PushIDGenerateTools;

public abstract class ZPNsMessageReceiver extends IntentReceiver {
    public static final String TAG = "ZPNsMessageReceiver";

    protected abstract void onNotificationArrived(Context context, ZPNsMessage zPNsMessage);

    protected abstract void onNotificationClicked(Context context, ZPNsMessage zPNsMessage);

    protected abstract void onRegistered(Context context, ZPNsRegisterMessage zPNsRegisterMessage);

    protected abstract void onThroughMessageReceived(Context context, ZPNsMessage zPNsMessage);

    @Override
    protected void onHandleIntent(Context context, Intent intent) {
        String action = intent.getAction();
        if (ZPNsConstants.PUSH_ON_MESSAGE_ACTION.equals(action) && ZPNsConstants.PUSH_METHOD_ON_COMMAND_RESULT.equals(getIntentMethod(intent))) {
            ZPNsRegisterMessage zPNsRegisterMessage = (ZPNsRegisterMessage) intent.getSerializableExtra(ZPNsConstants.PUSH_MESSAGE);
            zPNsRegisterMessage.setDeviceToken(zPNsRegisterMessage.getCommandResult());
            String pushID = PushIDGenerateTools.getPushID(zPNsRegisterMessage.getCommandResult(), true, zPNsRegisterMessage.getPushSource(), BuildConfig.VERSION_NAME);
            zPNsRegisterMessage.setPushID(pushID);
            zPNsRegisterMessage.setCommandResult(pushID);
            ZPNsBridge.zpnsLogInfo(TAG, "onRegistered command message:" + zPNsRegisterMessage.toString());
            onRegistered(context, zPNsRegisterMessage);
            return;
        }
        if (ZPNsConstants.PUSH_ON_MESSAGE_ACTION.equals(action) && ZPNsConstants.PUSH_METHOD_ON_THROUGH_MESSAGE.equals(getIntentMethod(intent))) {
            ZPNsMessage zPNsMessage = (ZPNsMessage) intent.getSerializableExtra(ZPNsConstants.PUSH_MESSAGE);
            ZPNsBridge.zpnsLogInfo(TAG, "onThroughMessageReceived push message:" + zPNsMessage.toString());
            onThroughMessageReceived(context, zPNsMessage);
        } else if (ZPNsConstants.PUSH_ON_MESSAGE_ACTION.equals(action) && ZPNsConstants.PUSH_METHOD_ON_NOTIFICATION_CLICKED.equals(getIntentMethod(intent))) {
            ZPNsMessage zPNsMessage2 = (ZPNsMessage) intent.getSerializableExtra(ZPNsConstants.PUSH_MESSAGE);
            ZPNsBridge.zpnsLogInfo(TAG, "onNotificationClicked push message:" + zPNsMessage2.toString());
            onNotificationClicked(context, zPNsMessage2);
        } else if (ZPNsConstants.PUSH_ON_MESSAGE_ACTION.equals(action) && ZPNsConstants.PUSH_METHOD_ON_NOTIFICATION_ARRIVED.equals(getIntentMethod(intent))) {
            ZPNsMessage zPNsMessage3 = (ZPNsMessage) intent.getSerializableExtra(ZPNsConstants.PUSH_MESSAGE);
            ZPNsBridge.zpnsLogInfo(TAG, "onNotificationArrived push message:" + zPNsMessage3.toString());
            onNotificationArrived(context, zPNsMessage3);
        }
    }

    private String getIntentMethod(Intent intent) {
        return intent.getStringExtra("method");
    }
}
