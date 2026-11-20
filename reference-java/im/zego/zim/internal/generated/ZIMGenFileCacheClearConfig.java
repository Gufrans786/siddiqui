package im.zego.zim.internal.generated;

public final class ZIMGenFileCacheClearConfig {
    long EndTime;
    boolean IsNullFromJava;

    public ZIMGenFileCacheClearConfig() {
    }

    public ZIMGenFileCacheClearConfig(long endTime, boolean isNullFromJava) {
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
        return "ZIMGenFileCacheClearConfig{EndTime=" + this.EndTime + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
