package im.zego.zim.entity;

import java.io.Serializable;

public class ZIMGroupConversation extends ZIMConversation implements Serializable {
    public boolean isDisabled = false;
    public long mutedExpiredTime = 0;

    @Override
    public String toString() {
        return super.toString() + ", ZIMGroupConversation{mutedExpiryTime=" + this.mutedExpiredTime + ", isDisabled=" + this.isDisabled + '}';
    }
}
