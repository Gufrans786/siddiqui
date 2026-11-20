package im.zego.zim.internal.generated;

public final class ZIMGenGroupMemberQueryConfig {
    int Count;
    boolean IsNullFromJava;
    int NextFlag;

    public ZIMGenGroupMemberQueryConfig() {
    }

    public ZIMGenGroupMemberQueryConfig(int nextFlag, int count, boolean isNullFromJava) {
        this.NextFlag = nextFlag;
        this.Count = count;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getNextFlag() {
        return this.NextFlag;
    }

    public void setNextFlag(int nextFlag) {
        this.NextFlag = nextFlag;
    }

    public int getCount() {
        return this.Count;
    }

    public void setCount(int count) {
        this.Count = count;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupMemberQueryConfig{NextFlag=" + this.NextFlag + ",Count=" + this.Count + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
