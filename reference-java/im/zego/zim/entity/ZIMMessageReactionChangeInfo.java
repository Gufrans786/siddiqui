package im.zego.zim.entity;

import java.util.ArrayList;

public class ZIMMessageReactionChangeInfo {
    private ZIMMessage message;
    private ArrayList<ZIMMessageReactionUserChangeInfo> userChangeInfoList = new ArrayList<>();

    public ZIMMessage getMessage() {
        return this.message;
    }

    public void setMessage(ZIMMessage message) {
        this.message = message;
    }

    public ArrayList<ZIMMessageReactionUserChangeInfo> getUserChangeInfoList() {
        return this.userChangeInfoList;
    }

    public void setUserChangeInfoList(ArrayList<ZIMMessageReactionUserChangeInfo> userChangeInfoList) {
        this.userChangeInfoList = userChangeInfoList;
    }
}
