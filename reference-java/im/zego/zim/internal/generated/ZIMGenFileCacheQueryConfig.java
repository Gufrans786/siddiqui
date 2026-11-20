package im.zego.zim.internal.generated;

public final class ZIMGenFileCacheQueryConfig {
    long EndTime;
    boolean IsNullFromJava;

    public ZIMGenFileCacheQueryConfig() {
    }

    public ZIMGenFileCacheQueryConfig(long endTime, boolean isNullFromJava) {
        this.EndTime = endTime;
        this.IsNullFromJava = isNullFromJava;
    }

    public long getEndTime() {
        return this.EndTime;
    }

    public void setEndTime(long endTime) {
        this.EndTime = endTime;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFileCacheQueryConfig{EndTime=" + this.EndTime + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
