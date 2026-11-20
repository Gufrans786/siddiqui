package im.zego.zim.internal.generated;

public final class ZIMGenGroupMemberMutedListQueryConfig {
    int Count;
    boolean IsNullFromJava;
    long NextFlag;

    public ZIMGenGroupMemberMutedListQueryConfig() {
    }

    public ZIMGenGroupMemberMutedListQueryConfig(long nextFlag, int count, boolean isNullFromJava) {
        this.NextFlag = nextFlag;
        this.Count = count;
        this.IsNullFromJava = isNullFromJava;
    }

    public long getNextFlag() {
        return this.NextFlag;
    }

    public void setNextFlag(long nextFlag) {
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
        return "ZIMGenGroupMemberMutedListQueryConfig{NextFlag=" + this.NextFlag + ",Count=" + this.Count + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
