package im.zego.zim.entity;

public class ZIMMessageReactionSimpleInfo {
    private String reactionType = "";
    private int sumCount = 0;

    public String getReactionType() {
        return this.reactionType;
    }

    public void setReactionType(String reactionType) {
        this.reactionType = reactionType;
    }

    public int getSumCount() {
        return this.sumCount;
    }

    public void setSumCount(int sumCount) {
        this.sumCount = sumCount;
    }
}
