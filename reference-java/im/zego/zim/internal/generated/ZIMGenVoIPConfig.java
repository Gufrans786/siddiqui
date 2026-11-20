package im.zego.zim.internal.generated;

final class ZIMGenVoIPConfig {
    int IOSVoIPHandleType;
    String IOSVoIPHandleValue;
    boolean IOSVoIPHasVideo;
    boolean IsNullFromJava;

    public ZIMGenVoIPConfig() {
    }

    public ZIMGenVoIPConfig(int iOSVoIPHandleType, String iOSVoIPHandleValue, boolean iOSVoIPHasVideo, boolean isNullFromJava) {
        this.IOSVoIPHandleType = iOSVoIPHandleType;
        this.IOSVoIPHandleValue = iOSVoIPHandleValue;
        this.IOSVoIPHasVideo = iOSVoIPHasVideo;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getIOSVoIPHandleType() {
        return this.IOSVoIPHandleType;
    }

    public void setIOSVoIPHandleType(int iOSVoIPHandleType) {
        this.IOSVoIPHandleType = iOSVoIPHandleType;
    }

    public String getIOSVoIPHandleValue() {
        return this.IOSVoIPHandleValue;
    }

    public void setIOSVoIPHandleValue(String iOSVoIPHandleValue) {
        this.IOSVoIPHandleValue = iOSVoIPHandleValue;
    }

    public boolean getIOSVoIPHasVideo() {
        return this.IOSVoIPHasVideo;
    }

    public void setIOSVoIPHasVideo(boolean iOSVoIPHasVideo) {
        this.IOSVoIPHasVideo = iOSVoIPHasVideo;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenVoIPConfig{IOSVoIPHandleType=" + this.IOSVoIPHandleType + ",IOSVoIPHandleValue=" + this.IOSVoIPHandleValue + ",IOSVoIPHasVideo=" + this.IOSVoIPHasVideo + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
