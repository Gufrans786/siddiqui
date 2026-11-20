package im.zego.zim.entity;

import im.zego.zim.enums.ZIMErrorCode;

public class ZIMError {
    public ZIMErrorCode code;
    public String message;

    public void setCode(ZIMErrorCode code) {
        this.code = code;
    }

    public ZIMErrorCode getCode() {
        return this.code;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getMessage() {
        return this.message;
    }

    public String toString() {
        return "ZIMError{code=" + this.code + ", message='" + this.message + "'}";
    }
}
