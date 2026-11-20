package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenMessageReactionChangeInfo {
    ZIMGenMessage Message;
    ArrayList<ZIMGenMessageReactionUserChangeInfo> UserChangeInfoList;

    public ZIMGenMessageReactionChangeInfo() {
    }

    public ZIMGenMessageReactionChangeInfo(ZIMGenMessage message, ArrayList<ZIMGenMessageReactionUserChangeInfo> userChangeInfoList) {
        this.Message = message;
        this.UserChangeInfoList = userChangeInfoList;
    }

    public ZIMGenMessage getMessage() {
        return this.Message;
    }

    public void setMessage(ZIMGenMessage message) {
        this.Message = message;
    }

    public ArrayList<ZIMGenMessageReactionUserChangeInfo> getUserChangeInfoList() {
        return this.UserChangeInfoList;
    }

    public void setUserChangeInfoList(ArrayList<ZIMGenMessageReactionUserChangeInfo> userChangeInfoList) {
        this.UserChangeInfoList = userChangeInfoList;
    }

    public String toString() {
        return "ZIMGenMessageReactionChangeInfo{Message=" + this.Message + ",UserChangeInfoList=" + this.UserChangeInfoList + "}";
    }
}
