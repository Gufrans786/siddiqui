package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessagePriority;

public class ZIMMessageSendConfig {
    public ZIMPushConfig pushConfig;
    public ZIMMessagePriority priority = ZIMMessagePriority.LOW;
    public boolean hasReceipt = false;
    public boolean isNotifyMentionedUsers = true;
    public boolean isRetrySend = false;
    public boolean disableUnreadMessageCount = false;
    public boolean isAllowMultipleMessagePartialFailed = false;
}
