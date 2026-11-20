package im.zego.zim.internal.generated;

public final class ZIMGenMediaDownloadConfig {
    boolean IsNullFromJava;
    int MessageInfoIndex;

    public ZIMGenMediaDownloadConfig() {
    }

    public ZIMGenMediaDownloadConfig(int messageInfoIndex, boolean isNullFromJava) {
        this.MessageInfoIndex = messageInfoIndex;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getMessageInfoIndex() {
        return this.MessageInfoIndex;
    }

    public void setMessageInfoIndex(int messageInfoIndex) {
        this.MessageInfoIndex = messageInfoIndex;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenMediaDownloadConfig{MessageInfoIndex=" + this.MessageInfoIndex + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
