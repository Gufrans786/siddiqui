package im.zego.zim.internal.generated;

import java.util.HashMap;

public final class ZIMGenGroupAdvancedConfig {
    int BeInviteMode;
    HashMap<String, String> GroupAttributes;
    String GroupNotice;
    int InviteMode;
    boolean IsNullFromJava;
    int JoinMode;
    int MaxMemberCount;

    public ZIMGenGroupAdvancedConfig() {
    }

    public ZIMGenGroupAdvancedConfig(String groupNotice, HashMap<String, String> groupAttributes, int maxMemberCount, int joinMode, int inviteMode, int beInviteMode, boolean isNullFromJava) {
        this.GroupNotice = groupNotice;
        this.GroupAttributes = groupAttributes;
        this.MaxMemberCount = maxMemberCount;
        this.JoinMode = joinMode;
        this.InviteMode = inviteMode;
        this.BeInviteMode = beInviteMode;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getGroupNotice() {
        return this.GroupNotice;
    }

    public void setGroupNotice(String groupNotice) {
        this.GroupNotice = groupNotice;
    }

    public HashMap<String, String> getGroupAttributes() {
        return this.GroupAttributes;
    }

    public void setGroupAttributes(HashMap<String, String> groupAttributes) {
        this.GroupAttributes = groupAttributes;
    }

    public int getMaxMemberCount() {
        return this.MaxMemberCount;
    }

    public void setMaxMemberCount(int maxMemberCount) {
        this.MaxMemberCount = maxMemberCount;
    }

    public int getJoinMode() {
        return this.JoinMode;
    }

    public void setJoinMode(int joinMode) {
        this.JoinMode = joinMode;
    }

    public int getInviteMode() {
        return this.InviteMode;
    }

    public void setInviteMode(int inviteMode) {
        this.InviteMode = inviteMode;
    }

    public int getBeInviteMode() {
        return this.BeInviteMode;
    }

    public void setBeInviteMode(int beInviteMode) {
        this.BeInviteMode = beInviteMode;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupAdvancedConfig{GroupNotice=" + this.GroupNotice + ",GroupAttributes=" + this.GroupAttributes + ",MaxMemberCount=" + this.MaxMemberCount + ",JoinMode=" + this.JoinMode + ",InviteMode=" + this.InviteMode + ",BeInviteMode=" + this.BeInviteMode + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
