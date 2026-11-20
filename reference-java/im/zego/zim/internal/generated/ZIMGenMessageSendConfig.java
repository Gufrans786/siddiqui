package im.zego.zim.internal.generated;

public final class ZIMGenMessageSendConfig {
    boolean DisableUnreadMessageCount;
    boolean EnableOfflinePush;
    boolean HasReadReceipt;
    boolean IsAllowMultipleMessagePartialFailed;
    boolean IsNotifyMentionedUsers;
    boolean IsNullFromJava;
    boolean IsRetrySendMessage;
    int Priority;
    ZIMGenPushConfig PushConfig;

    public ZIMGenMessageSendConfig() {
    }

    public ZIMGenMessageSendConfig(int priority, boolean enableOfflinePush, boolean hasReadReceipt, boolean isNotifyMentionedUsers, boolean isRetrySendMessage, ZIMGenPushConfig pushConfig, boolean isNullFromJava, boolean disableUnreadMessageCount, boolean isAllowMultipleMessagePartialFailed) {
        this.Priority = priority;
        this.EnableOfflinePush = enableOfflinePush;
        this.HasReadReceipt = hasReadReceipt;
        this.IsNotifyMentionedUsers = isNotifyMentionedUsers;
        this.IsRetrySendMessage = isRetrySendMessage;
        this.PushConfig = pushConfig;
        this.IsNullFromJava = isNullFromJava;
        this.DisableUnreadMessageCount = disableUnreadMessageCount;
        this.IsAllowMultipleMessagePartialFailed = isAllowMultipleMessagePartialFailed;
    }

    public int getPriority() {
        return this.Priority;
    }

    public void setPriority(int priority) {
        this.Priority = priority;
    }

    public boolean getEnableOfflinePush() {
        return this.EnableOfflinePush;
    }

    public void setEnableOfflinePush(boolean enableOfflinePush) {
        this.EnableOfflinePush = enableOfflinePush;
    }

    public boolean getHasReadReceipt() {
        return this.HasReadReceipt;
    }

    public void setHasReadReceipt(boolean hasReadReceipt) {
        this.HasReadReceipt = hasReadReceipt;
    }

    public boolean getIsNotifyMentionedUsers() {
        return this.IsNotifyMentionedUsers;
    }

    public void setIsNotifyMentionedUsers(boolean isNotifyMentionedUsers) {
        this.IsNotifyMentionedUsers = isNotifyMentionedUsers;
    }

    public boolean getIsRetrySendMessage() {
        return this.IsRetrySendMessage;
    }

    public void setIsRetrySendMessage(boolean isRetrySendMessage) {
        this.IsRetrySendMessage = isRetrySendMessage;
    }

    public ZIMGenPushConfig getPushConfig() {
        return this.PushConfig;
    }

    public void setPushConfig(ZIMGenPushConfig pushConfig) {
        this.PushConfig = pushConfig;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public boolean getDisableUnreadMessageCount() {
        return this.DisableUnreadMessageCount;
    }

    public void setDisableUnreadMessageCount(boolean disableUnreadMessageCount) {
        this.DisableUnreadMessageCount = disableUnreadMessageCount;
    }

    public boolean getIsAllowMultipleMessagePartialFailed() {
        return this.IsAllowMultipleMessagePartialFailed;
    }

    public void setIsAllowMultipleMessagePartialFailed(boolean isAllowMultipleMessagePartialFailed) {
        this.IsAllowMultipleMessagePartialFailed = isAllowMultipleMessagePartialFailed;
    }

    public String toString() {
        return "ZIMGenMessageSendConfig{Priority=" + this.Priority + ",EnableOfflinePush=" + this.EnableOfflinePush + ",HasReadReceipt=" + this.HasReadReceipt + ",IsNotifyMentionedUsers=" + this.IsNotifyMentionedUsers + ",IsRetrySendMessage=" + this.IsRetrySendMessage + ",PushConfig=" + this.PushConfig + ",IsNullFromJava=" + this.IsNullFromJava + ",DisableUnreadMessageCount=" + this.DisableUnreadMessageCount + ",IsAllowMultipleMessagePartialFailed=" + this.IsAllowMultipleMessagePartialFailed + "}";
    }
}
