package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenFriendSearchConfig {
    int Count;
    boolean IsAlsoMatchFriendAlias;
    boolean IsNullFromJava;
    ArrayList<String> Keywords;
    int NextFlag;

    public ZIMGenFriendSearchConfig() {
    }

    public ZIMGenFriendSearchConfig(int count, int nextFlag, ArrayList<String> keywords, boolean isAlsoMatchFriendAlias, boolean isNullFromJava) {
        this.Count = count;
        this.NextFlag = nextFlag;
        this.Keywords = keywords;
        this.IsAlsoMatchFriendAlias = isAlsoMatchFriendAlias;
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

    public boolean getIsAlsoMatchFriendAlias() {
        return this.IsAlsoMatchFriendAlias;
    }

    public void setIsAlsoMatchFriendAlias(boolean isAlsoMatchFriendAlias) {
        this.IsAlsoMatchFriendAlias = isAlsoMatchFriendAlias;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFriendSearchConfig{Count=" + this.Count + ",NextFlag=" + this.NextFlag + ",Keywords=" + this.Keywords + ",IsAlsoMatchFriendAlias=" + this.IsAlsoMatchFriendAlias + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
