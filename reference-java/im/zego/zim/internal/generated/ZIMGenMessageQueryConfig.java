package im.zego.zim.internal.generated;

public final class ZIMGenMessageQueryConfig {
    int Count;
    boolean IsNullFromJava;
    boolean IsPreferQueryFromServer;
    ZIMGenMessage NextMessage;
    boolean Reverse;

    public ZIMGenMessageQueryConfig() {
    }

    public ZIMGenMessageQueryConfig(ZIMGenMessage nextMessage, int count, boolean reverse, boolean isPreferQueryFromServer, boolean isNullFromJava) {
        this.NextMessage = nextMessage;
        this.Count = count;
        this.Reverse = reverse;
        this.IsPreferQueryFromServer = isPreferQueryFromServer;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenMessage getNextMessage() {
        return this.NextMessage;
    }

    public void setNextMessage(ZIMGenMessage nextMessage) {
        this.NextMessage = nextMessage;
    }

    public int getCount() {
        return this.Count;
    }

    public void setCount(int count) {
        this.Count = count;
    }

    public boolean getReverse() {
        return this.Reverse;
    }

    public void setReverse(boolean reverse) {
        this.Reverse = reverse;
    }

    public boolean getIsPreferQueryFromServer() {
        return this.IsPreferQueryFromServer;
    }

    public void setIsPreferQueryFromServer(boolean isPreferQueryFromServer) {
        this.IsPreferQueryFromServer = isPreferQueryFromServer;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenMessageQueryConfig{NextMessage=" + this.NextMessage + ",Count=" + this.Count + ",Reverse=" + this.Reverse + ",IsPreferQueryFromServer=" + this.IsPreferQueryFromServer + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
