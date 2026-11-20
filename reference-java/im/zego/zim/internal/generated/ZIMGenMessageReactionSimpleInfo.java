package im.zego.zim.internal.generated;

final class ZIMGenMessageReactionSimpleInfo {
    int ReactionSumCount;
    String ReactionType;

    public ZIMGenMessageReactionSimpleInfo() {
    }

    public ZIMGenMessageReactionSimpleInfo(String reactionType, int reactionSumCount) {
        this.ReactionType = reactionType;
        this.ReactionSumCount = reactionSumCount;
    }

    public String getReactionType() {
        return this.ReactionType;
    }

    public void setReactionType(String reactionType) {
        this.ReactionType = reactionType;
    }

    public int getReactionSumCount() {
        return this.ReactionSumCount;
    }

    public void setReactionSumCount(int reactionSumCount) {
        this.ReactionSumCount = reactionSumCount;
    }

    public String toString() {
        return "ZIMGenMessageReactionSimpleInfo{ReactionType=" + this.ReactionType + ",ReactionSumCount=" + this.ReactionSumCount + "}";
    }
}
