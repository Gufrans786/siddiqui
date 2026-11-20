package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenGroupMemberSearchConfig {
    int Count;
    boolean IsAlsoMatchGroupMemberNickname;
    boolean IsNullFromJava;
    ArrayList<String> Keywords;
    int NextFlag;

    public ZIMGenGroupMemberSearchConfig() {
    }

    public ZIMGenGroupMemberSearchConfig(int count, int nextFlag, ArrayList<String> keywords, boolean isAlsoMatchGroupMemberNickname, boolean isNullFromJava) {
        this.Count = count;
        this.NextFlag = nextFlag;
        this.Keywords = keywords;
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
        return "ZIMGenGroupMemberSearchConfig{Count=" + this.Count + ",NextFlag=" + this.NextFlag + ",Keywords=" + this.Keywords + ",IsAlsoMatchGroupMemberNickname=" + this.IsAlsoMatchGroupMemberNickname + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
