package im.zego.zim.internal.generated;

final class ZIMGenOfflinePushPrivateMessageTemplate {
    String ContentParameters;
    boolean IsNullFromJava;
    String TemplateID;
    String TitleParameters;

    public ZIMGenOfflinePushPrivateMessageTemplate() {
    }

    public ZIMGenOfflinePushPrivateMessageTemplate(String templateID, String titleParameters, String contentParameters, boolean isNullFromJava) {
        this.TemplateID = templateID;
        this.TitleParameters = titleParameters;
        this.ContentParameters = contentParameters;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getTemplateID() {
        return this.TemplateID;
    }

    public void setTemplateID(String templateID) {
        this.TemplateID = templateID;
    }

    public String getTitleParameters() {
        return this.TitleParameters;
    }

    public void setTitleParameters(String titleParameters) {
        this.TitleParameters = titleParameters;
    }

    public String getContentParameters() {
        return this.ContentParameters;
    }

    public void setContentParameters(String contentParameters) {
        this.ContentParameters = contentParameters;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenOfflinePushPrivateMessageTemplate{TemplateID=" + this.TemplateID + ",TitleParameters=" + this.TitleParameters + ",ContentParameters=" + this.ContentParameters + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
