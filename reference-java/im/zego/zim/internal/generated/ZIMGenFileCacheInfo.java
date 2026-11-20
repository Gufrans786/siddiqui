package im.zego.zim.internal.generated;

final class ZIMGenFileCacheInfo {
    boolean IsNullFromJava;
    long TotalFileSize;

    public ZIMGenFileCacheInfo() {
    }

    public ZIMGenFileCacheInfo(long totalFileSize, boolean isNullFromJava) {
        this.TotalFileSize = totalFileSize;
        this.IsNullFromJava = isNullFromJava;
    }

    public long getTotalFileSize() {
        return this.TotalFileSize;
    }

    public void setTotalFileSize(long totalFileSize) {
        this.TotalFileSize = totalFileSize;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFileCacheInfo{TotalFileSize=" + this.TotalFileSize + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
