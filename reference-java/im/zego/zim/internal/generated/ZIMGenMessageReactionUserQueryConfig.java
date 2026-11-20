package im.zego.zim.internal.generated;

public final class ZIMGenMessageReactionUserQueryConfig {
    int Count;
    boolean IsNullFromJava;
    long NextFlag;
    String ReactionType;

    public ZIMGenMessageReactionUserQueryConfig() {
    }

    public ZIMGenMessageReactionUserQueryConfig(long nextFlag, String reactionType, int count, boolean isNullFromJava) {
        this.NextFlag = nextFlag;
        this.ReactionType = reactionType;
        this.Count = count;
        this.IsNullFromJava = isNullFromJava;
    }

    public long getNextFlag() {
        return this.NextFlag;
    }

    public void setNextFlag(long nextFlag) {
        this.NextFlag = nextFlag;
    }

    public String getReactionType() {
        return this.ReactionType;
    }

    public void setReactionType(String reactionType) {
        this.ReactionType = reactionType;
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
        return "ZIMGenMessageReactionUserQueryConfig{NextFlag=" + this.NextFlag + ",ReactionType=" + this.ReactionType + ",Count=" + this.Count + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
