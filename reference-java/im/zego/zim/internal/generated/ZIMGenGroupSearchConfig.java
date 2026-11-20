package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenGroupSearchConfig {
    int Count;
    boolean IsAlsoMatchGroupMemberNickname;
    boolean IsAlsoMatchGroupMemberUserName;
    boolean IsNullFromJava;
    ArrayList<String> Keywords;
    int NextFlag;

    public ZIMGenGroupSearchConfig() {
    }

    public ZIMGenGroupSearchConfig(int count, int nextFlag, ArrayList<String> keywords, boolean isAlsoMatchGroupMemberUserName, boolean isAlsoMatchGroupMemberNickname, boolean isNullFromJava) {
        this.Count = count;
        this.NextFlag = nextFlag;
        this.Keywords = keywords;
        this.IsAlsoMatchGroupMemberUserName = isAlsoMatchGroupMemberUserName;
        this.IsAlsoMatchGroupMemberNickname = isAlsoMatchGroupMemberNickname;
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

    public ArrayList<String> getKeywords() {
        return this.Keywords;
    }

    public void setKeywords(ArrayList<String> keywords) {
        this.Keywords = keywords;
    }

    public boolean getIsAlsoMatchGroupMemberUserName() {
        return this.IsAlsoMatchGroupMemberUserName;
    }

    public void setIsAlsoMatchGroupMemberUserName(boolean isAlsoMatchGroupMemberUserName) {
        this.IsAlsoMatchGroupMemberUserName = isAlsoMatchGroupMemberUserName;
    }

    public boolean getIsAlsoMatchGroupMemberNickname() {
        return this.IsAlsoMatchGroupMemberNickname;
    }

    public void setIsAlsoMatchGroupMemberNickname(boolean isAlsoMatchGroupMemberNickname) {
        this.IsAlsoMatchGroupMemberNickname = isAlsoMatchGroupMemberNickname;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupSearchConfig{Count=" + this.Count + ",NextFlag=" + this.NextFlag + ",Keywords=" + this.Keywords + ",IsAlsoMatchGroupMemberUserName=" + this.IsAlsoMatchGroupMemberUserName + ",IsAlsoMatchGroupMemberNickname=" + this.IsAlsoMatchGroupMemberNickname + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
