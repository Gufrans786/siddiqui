package im.zego.zim.entity;

public class ZIMPushConfig {
    public String title = "";
    public String content = "";
    public String payload = "";
    public String resourcesID = "";
    public String threadID = "";
    public Boolean enableBadge = false;
    public int badgeIncrement = 0;
    public ZIMVoIPConfig voIPConfig = null;
    public ZIMOfflinePushPrivateMessageTemplate privateMessageTemplate = null;
}
