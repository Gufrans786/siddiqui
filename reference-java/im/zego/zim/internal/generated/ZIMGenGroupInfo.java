package im.zego.zim.internal.generated;

public final class ZIMGenGroupInfo {
    String GroupAvatarUrl;
    String GroupId;
    String GroupName;
    boolean IsNullFromJava;

    public ZIMGenGroupInfo() {
    }

    public ZIMGenGroupInfo(String groupId, String groupName, String groupAvatarUrl, boolean isNullFromJava) {
        this.GroupId = groupId;
        this.GroupName = groupName;
        this.GroupAvatarUrl = groupAvatarUrl;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getGroupId() {
        return this.GroupId;
    }

    public void setGroupId(String groupId) {
        this.GroupId = groupId;
    }

    public String getGroupName() {
        return this.GroupName;
    }

    public void setGroupName(String groupName) {
        this.GroupName = groupName;
    }

    public String getGroupAvatarUrl() {
        return this.GroupAvatarUrl;
    }

    public void setGroupAvatarUrl(String groupAvatarUrl) {
        this.GroupAvatarUrl = groupAvatarUrl;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupInfo{GroupId=" + this.GroupId + ",GroupName=" + this.GroupName + ",GroupAvatarUrl=" + this.GroupAvatarUrl + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
