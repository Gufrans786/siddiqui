package im.zego.zim.internal.generated;

public final class ZIMGenBlacklistQueryConfig {
    int Count;
    boolean IsNullFromJava;
    int NextFlag;

    public ZIMGenBlacklistQueryConfig() {
    }

    public ZIMGenBlacklistQueryConfig(int count, int nextFlag, boolean isNullFromJava) {
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

    public int getNextFlag() {
        return this.NextFlag;
    }

    public void setNextFlag(int nextFlag) {
        this.NextFlag = nextFlag;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenBlacklistQueryConfig{Count=" + this.Count + ",NextFlag=" + this.NextFlag + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
