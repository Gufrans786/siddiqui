package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMFileMessage extends ZIMMediaMessage {
    public ZIMFileMessage(String fileLocalPath) {
        super(ZIMMessageType.FILE, fileLocalPath);
    }
}
