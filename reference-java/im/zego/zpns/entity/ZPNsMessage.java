package im.zego.zpns.entity;

import android.os.Parcel;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.enums.ZPNsType;
import java.io.Serializable;

public class ZPNsMessage implements Serializable {
    private String content;
    private String extras;
    private int notifyId;
    private String payload;
    private Object pushMessage;
    private ZPNsConstants.PushSource pushSource;
    private ZPNsType pushType;
    private String requestID;
    private String title;

    protected ZPNsMessage(Parcel parcel) {
        this.title = parcel.readString();
        this.content = parcel.readString();
    }

    private ZPNsMessage(Builder builder) {
        this.title = builder.title;
        this.content = builder.content;
        this.pushType = builder.pushType;
        this.pushSource = builder.pushSource;
        this.pushMessage = builder.pushMessage;
        this.extras = builder.extras;
        this.notifyId = builder.notifyId;
        this.requestID = builder.requestID;
        this.payload = builder.payload;
    }

    public String getRequestID() {
        return this.requestID;
    }

    public void setRequestID(String str) {
        this.requestID = str;
    }

    public String getPayload() {
        return this.payload;
    }

    public void setPayload(String str) {
        this.payload = str;
    }

    public int getNotifyId() {
        return this.notifyId;
    }

    public void setNotifyId(int i) {
        this.notifyId = i;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public ZPNsType getPushType() {
        return this.pushType;
    }

    public void setPushType(ZPNsType zPNsType) {
        this.pushType = zPNsType;
    }

    public ZPNsConstants.PushSource getPushSource() {
        return this.pushSource;
    }

    public void setPushSource(ZPNsConstants.PushSource pushSource) {
        this.pushSource = pushSource;
    }

    public Object getPushMessage() {
        return this.pushMessage;
    }

    public void setPushMessage(Object obj) {
        this.pushMessage = obj;
    }

    public String getExtras() {
        return this.extras;
    }

    public void setExtras(String str) {
        this.extras = str;
    }

    public static Builder builder() {
        return new Builder();
    }

    public String toString() {
        return "{title='" + this.title + "', content='" + this.content + "', payload='" + this.payload + "', notifyId='" + this.notifyId + "', extras='" + this.extras + "', pushType='" + this.pushType + "', pushSource='" + this.pushSource + "', pushMessage='" + this.pushMessage + "'}";
    }

    public static class Builder {
        private String content;
        private String extras;
        private int notifyId;
        private String payload;
        private Object pushMessage;
        private ZPNsConstants.PushSource pushSource;
        private ZPNsType pushType;
        private String requestID;
        private String title;

        public Builder requestID(String str) {
            this.requestID = str;
            return this;
        }

        public Builder payload(String str) {
            this.payload = str;
            return this;
        }

        public Builder title(String str) {
            this.title = str;
            return this;
        }

        public Builder content(String str) {
            this.content = str;
            return this;
        }

        public Builder pushType(ZPNsType zPNsType) {
            this.pushType = zPNsType;
            return this;
        }

        public Builder pushSource(ZPNsConstants.PushSource pushSource) {
            this.pushSource = pushSource;
            return this;
        }

        public Builder pushMessage(Object obj) {
            this.pushMessage = obj;
            return this;
        }

        public Builder extras(String str) {
            this.extras = str;
            return this;
        }

        public Builder notifyId(int i) {
            this.notifyId = i;
            return this;
        }

        public ZPNsMessage build() {
            return new ZPNsMessage(this);
        }
    }
}
