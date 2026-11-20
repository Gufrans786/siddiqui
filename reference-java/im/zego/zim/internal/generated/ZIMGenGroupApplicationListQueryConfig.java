package im.zego.zim.internal.generated;

public final class ZIMGenGroupApplicationListQueryConfig {
    int Count;
    int NextFlag;

    public ZIMGenGroupApplicationListQueryConfig() {
    }

    public ZIMGenGroupApplicationListQueryConfig(int count, int nextFlag) {
        this.Count = count;
        this.NextFlag = nextFlag;
    }

    public int getCount() {
        return this.Count;
    }

    public void setCount(int count) {
        this.Count = count;
    }

    public int getNextFlag() {
        return this.NextFlag;
    }

    public void setNextFlag(int nextFlag) {
        this.NextFlag = nextFlag;
    }

    public String toString() {
        return "ZIMGenGroupApplicationListQueryConfig{Count=" + this.Count + ",NextFlag=" + this.NextFlag + "}";
    }
}
