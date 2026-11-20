package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMAudioMessage extends ZIMMediaMessage {
    private long audioDuration;

    public ZIMAudioMessage(String fileLocalPath, long audioDuration) {
        super(ZIMMessageType.AUDIO, fileLocalPath);
        this.audioDuration = audioDuration;
    }

    public void setAudioDuration(long audioDuration) {
        this.audioDuration = audioDuration;
    }

    public long getAudioDuration() {
        return this.audioDuration;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMAudioMessage{audioDuration=" + this.audioDuration + '}';
    }
}
