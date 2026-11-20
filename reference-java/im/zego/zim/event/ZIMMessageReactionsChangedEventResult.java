package im.zego.zim.event;

import im.zego.zim.entity.ZIMMessageReaction;
import im.zego.zim.entity.ZIMMessageReactionChangeInfo;
import java.util.ArrayList;

public class ZIMMessageReactionsChangedEventResult {
    private ArrayList<ZIMMessageReaction> reactions = new ArrayList<>();
    private ArrayList<ZIMMessageReactionChangeInfo> changeInfoList = new ArrayList<>();

    public ArrayList<ZIMMessageReaction> getReactions() {
        return this.reactions;
    }

    public void setReactions(ArrayList<ZIMMessageReaction> reactions) {
        this.reactions = reactions;
    }

    public ArrayList<ZIMMessageReactionChangeInfo> getChangeInfoList() {
        return this.changeInfoList;
    }

    public void setChangeInfoList(ArrayList<ZIMMessageReactionChangeInfo> changeInfoList) {
        this.changeInfoList = changeInfoList;
    }
}
