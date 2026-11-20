package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationType;
import java.io.Serializable;
import java.util.ArrayList;

public class ZIMMessageReaction implements Serializable {
    public String conversationID;
    public ZIMConversationType conversationType;
    public boolean isSelfIncluded;
    public long messageID;
    public String reactionType;
    public int sumCount;
    public int totalCount;
    public ArrayList<ZIMMessageReactionUserInfo> userList;

    public String toString() {
        return "ZIMMessageReaction{conversationID='" + this.conversationID + "', conversationType=" + this.conversationType + ", reactionType='" + this.reactionType + "', messageID=" + this.messageID + ", totalCount=" + this.totalCount + ", isSelfIncluded=" + this.isSelfIncluded + ", userList=" + this.userList + ", sumCount=" + this.sumCount + '}';
    }
}
