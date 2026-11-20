package im.zego.zim.internal.generated;

public final class ZIMGenRepliedListQueryConfig {
    int Count;
    boolean IsNullFromJava;
    long NextFlag;

    public ZIMGenRepliedListQueryConfig() {
    }

    public ZIMGenRepliedListQueryConfig(int count, long nextFlag, boolean isNullFromJava) {
        this.Count = count;
        this.NextFlag = nextFlag;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getCount() {
        return this.Count;
    }

    public void setCount(int count) {
        this.Count = count;
    }

    public long getNextFlag() {
        return this.NextFlag;
    }

    public void setNextFlag(long nextFlag) {
        this.NextFlag = nextFlag;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenRepliedListQueryConfig{Count=" + this.Count + ",NextFlag=" + this.NextFlag + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
