package im.zego.zpns.entity;

import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.enums.ZPNsErrorCode;
import java.io.Serializable;

public class ZPNsRegisterMessage implements Serializable {
    private String commandResult;
    private String deviceToken;
    private ZPNsErrorCode errorCode;
    private String msg;
    private ZPNsConstants.PushCmdType pushCmdType;
    private String pushID;
    private Object pushMessage;
    private ZPNsConstants.PushSource pushSource;

    private ZPNsRegisterMessage(Builder builder) {
        this.errorCode = ZPNsErrorCode.SUCCESS;
        this.msg = "";
        this.pushID = "";
        this.errorCode = builder.errorCode;
        this.msg = builder.msg;
        this.commandResult = builder.commandResult;
        this.pushCmdType = builder.pushCmdType;
        this.pushSource = builder.pushSource;
        this.pushMessage = builder.pushMessage;
        this.deviceToken = builder.deviceToken;
    }

    public static Builder builder() {
        return new Builder();
    }

    public ZPNsErrorCode getErrorCode() {
        return this.errorCode;
    }

    public void setErrorCode(ZPNsErrorCode zPNsErrorCode) {
        this.errorCode = zPNsErrorCode;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public String getCommandResult() {
        return this.commandResult;
    }

    public void setCommandResult(String str) {
        this.commandResult = str;
    }

    public ZPNsConstants.PushSource getPushSource() {
        return this.pushSource;
    }

    public void setPushSource(ZPNsConstants.PushSource pushSource) {
        this.pushSource = pushSource;
    }

    public ZPNsConstants.PushCmdType getPushCmdType() {
        return this.pushCmdType;
    }

    public void setPushCmdType(ZPNsConstants.PushCmdType pushCmdType) {
        this.pushCmdType = pushCmdType;
    }

    public String getPushID() {
        return this.pushID;
    }

    public void setPushID(String str) {
        this.pushID = str;
    }

    public Object getPushMessage() {
        return this.pushMessage;
    }

    public void setPushMessage(Object obj) {
        this.pushMessage = obj;
    }

    public void setDeviceToken(String str) {
        this.deviceToken = str;
    }

    public String getDeviceToken() {
        return this.deviceToken;
    }

    public String toString() {
        StringBuilder sbAppend = new StringBuilder("{  errorCode='").append(this.errorCode).append("', msg='").append(this.msg).append("', pushID='").append(this.pushID).append("', commandResult='").append(this.commandResult).append("', pushSource='").append(this.pushSource).append("', pushCmdType='").append(this.pushCmdType).append("', pushMessage='");
        Object obj = this.pushMessage;
        return sbAppend.append(obj != null ? obj.toString() : "is null").append("', deviceToken='").append(this.deviceToken).append("'}").toString();
    }

    public static class Builder {
        private String commandResult;
        private String deviceToken;
        private ZPNsErrorCode errorCode = ZPNsErrorCode.SUCCESS;
        private String msg = "";
        private ZPNsConstants.PushCmdType pushCmdType;
        private Object pushMessage;
        private ZPNsConstants.PushSource pushSource;

        public Builder errorCode(ZPNsErrorCode zPNsErrorCode) {
            this.errorCode = zPNsErrorCode;
            return this;
        }

        public Builder msg(String str) {
            this.msg = str;
            return this;
        }

        public Builder commandResult(String str) {
            this.commandResult = str;
            return this;
        }

        public Builder pushSource(ZPNsConstants.PushSource pushSource) {
            this.pushSource = pushSource;
            return this;
        }

        public Builder pushCmdType(ZPNsConstants.PushCmdType pushCmdType) {
            this.pushCmdType = pushCmdType;
            return this;
        }

        public Builder pushMessage(Object obj) {
            this.pushMessage = obj;
            return this;
        }

        public Builder deviceToken(String str) {
            this.deviceToken = str;
            return this;
        }

        public ZPNsRegisterMessage build() {
            return new ZPNsRegisterMessage(this);
        }
    }
}
