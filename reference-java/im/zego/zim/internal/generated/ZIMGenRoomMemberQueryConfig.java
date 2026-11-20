package im.zego.zim.internal.generated;

public final class ZIMGenRoomMemberQueryConfig {
    int Count;
    boolean IsNullFromJava;
    String NextFlag;

    public ZIMGenRoomMemberQueryConfig() {
    }

    public ZIMGenRoomMemberQueryConfig(String nextFlag, int count, boolean isNullFromJava) {
        this.NextFlag = nextFlag;
        this.Count = count;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getNextFlag() {
        return this.NextFlag;
    }

    public void setNextFlag(String nextFlag) {
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
        return "ZIMGenRoomMemberQueryConfig{NextFlag=" + this.NextFlag + ",Count=" + this.Count + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
