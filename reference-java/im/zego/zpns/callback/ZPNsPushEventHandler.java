package im.zego.zpns.callback;

import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.enums.ZPNsErrorCode;

public abstract class ZPNsPushEventHandler {
    public void onError(ZPNsConstants.PushSource pushSource, ZPNsErrorCode zPNsErrorCode) {
    }
}
