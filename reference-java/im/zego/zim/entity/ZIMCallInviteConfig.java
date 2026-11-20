package im.zego.zim.entity;

import im.zego.zim.enums.ZIMCallInvitationMode;

public class ZIMCallInviteConfig {
    public ZIMPushConfig pushConfig;
    public int timeout = 90;
    public String extendedData = "";
    public ZIMCallInvitationMode mode = ZIMCallInvitationMode.GENERAL;
    public boolean enableNotReceivedCheck = false;
}
