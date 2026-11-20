package im.zego.zim.internal.generated;

final class ZIMGenPushConfig {
    int BadgeIncrement;
    boolean EnableBadgeIncrement;
    boolean EnablePrivateMessageTemplate;
    boolean EnableVoIPPush;
    boolean IsNullFromJava;
    String OfflineExtendedData;
    String OfflinePushContent;
    String OfflinePushResourceId;
    String OfflinePushTitle;
    ZIMGenVoIPConfig OfflinePushVoIPConfig;
    ZIMGenOfflinePushPrivateMessageTemplate PrivateMessageTemplate;
    String ThreadId;

    public ZIMGenPushConfig() {
    }

    public ZIMGenPushConfig(String offlinePushTitle, String offlinePushContent, String offlineExtendedData, String offlinePushResourceId, String threadId, ZIMGenVoIPConfig offlinePushVoIPConfig, ZIMGenOfflinePushPrivateMessageTemplate privateMessageTemplate, boolean enableBadgeIncrement, int badgeIncrement, boolean enableVoIPPush, boolean enablePrivateMessageTemplate, boolean isNullFromJava) {
        this.OfflinePushTitle = offlinePushTitle;
        this.OfflinePushContent = offlinePushContent;
        this.OfflineExtendedData = offlineExtendedData;
        this.OfflinePushResourceId = offlinePushResourceId;
        this.ThreadId = threadId;
        this.OfflinePushVoIPConfig = offlinePushVoIPConfig;
        this.PrivateMessageTemplate = privateMessageTemplate;
        this.EnableBadgeIncrement = enableBadgeIncrement;
        this.BadgeIncrement = badgeIncrement;
        this.EnableVoIPPush = enableVoIPPush;
        this.EnablePrivateMessageTemplate = enablePrivateMessageTemplate;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getOfflinePushTitle() {
        return this.OfflinePushTitle;
    }

    public void setOfflinePushTitle(String offlinePushTitle) {
        this.OfflinePushTitle = offlinePushTitle;
    }

    public String getOfflinePushContent() {
        return this.OfflinePushContent;
    }

    public void setOfflinePushContent(String offlinePushContent) {
        this.OfflinePushContent = offlinePushContent;
    }

    public String getOfflineExtendedData() {
        return this.OfflineExtendedData;
    }

    public void setOfflineExtendedData(String offlineExtendedData) {
        this.OfflineExtendedData = offlineExtendedData;
    }

    public String getOfflinePushResourceId() {
        return this.OfflinePushResourceId;
    }

    public void setOfflinePushResourceId(String offlinePushResourceId) {
        this.OfflinePushResourceId = offlinePushResourceId;
    }

    public String getThreadId() {
        return this.ThreadId;
    }

    public void setThreadId(String threadId) {
        this.ThreadId = threadId;
    }

    public ZIMGenVoIPConfig getOfflinePushVoIPConfig() {
        return this.OfflinePushVoIPConfig;
    }

    public void setOfflinePushVoIPConfig(ZIMGenVoIPConfig offlinePushVoIPConfig) {
        this.OfflinePushVoIPConfig = offlinePushVoIPConfig;
    }

    public ZIMGenOfflinePushPrivateMessageTemplate getPrivateMessageTemplate() {
        return this.PrivateMessageTemplate;
    }

    public void setPrivateMessageTemplate(ZIMGenOfflinePushPrivateMessageTemplate privateMessageTemplate) {
        this.PrivateMessageTemplate = privateMessageTemplate;
    }

    public boolean getEnableBadgeIncrement() {
        return this.EnableBadgeIncrement;
    }

    public void setEnableBadgeIncrement(boolean enableBadgeIncrement) {
        this.EnableBadgeIncrement = enableBadgeIncrement;
    }

    public int getBadgeIncrement() {
        return this.BadgeIncrement;
    }

    public void setBadgeIncrement(int badgeIncrement) {
        this.BadgeIncrement = badgeIncrement;
    }

    public boolean getEnableVoIPPush() {
        return this.EnableVoIPPush;
    }

    public void setEnableVoIPPush(boolean enableVoIPPush) {
        this.EnableVoIPPush = enableVoIPPush;
    }

    public boolean getEnablePrivateMessageTemplate() {
        return this.EnablePrivateMessageTemplate;
    }

    public void setEnablePrivateMessageTemplate(boolean enablePrivateMessageTemplate) {
        this.EnablePrivateMessageTemplate = enablePrivateMessageTemplate;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenPushConfig{OfflinePushTitle=" + this.OfflinePushTitle + ",OfflinePushContent=" + this.OfflinePushContent + ",OfflineExtendedData=" + this.OfflineExtendedData + ",OfflinePushResourceId=" + this.OfflinePushResourceId + ",ThreadId=" + this.ThreadId + ",OfflinePushVoIPConfig=" + this.OfflinePushVoIPConfig + ",PrivateMessageTemplate=" + this.PrivateMessageTemplate + ",EnableBadgeIncrement=" + this.EnableBadgeIncrement + ",BadgeIncrement=" + this.BadgeIncrement + ",EnableVoIPPush=" + this.EnableVoIPPush + ",EnablePrivateMessageTemplate=" + this.EnablePrivateMessageTemplate + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
