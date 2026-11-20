package im.zego.zim.internal.generated;

final class ZIMGenMessageReceivedInfo {
    boolean IsOfflineMessage;

    public ZIMGenMessageReceivedInfo() {
    }

    public ZIMGenMessageReceivedInfo(boolean isOfflineMessage) {
        this.IsOfflineMessage = isOfflineMessage;
    }

    public boolean getIsOfflineMessage() {
        return this.IsOfflineMessage;
    }

    public void setIsOfflineMessage(boolean isOfflineMessage) {
        this.IsOfflineMessage = isOfflineMessage;
    }

    public String toString() {
        return "ZIMGenMessageReceivedInfo{IsOfflineMessage=" + this.IsOfflineMessage + "}";
    }
}
