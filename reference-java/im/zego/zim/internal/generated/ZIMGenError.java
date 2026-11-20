package im.zego.zim.internal.generated;

final class ZIMGenError {
    int ErrorCode;
    String Message;

    public ZIMGenError() {
    }

    public ZIMGenError(String message, int errorCode) {
        this.Message = message;
        this.ErrorCode = errorCode;
    }

    public String getMessage() {
        return this.Message;
    }

    public void setMessage(String message) {
        this.Message = message;
    }

    public int getErrorCode() {
        return this.ErrorCode;
    }

    public void setErrorCode(int errorCode) {
        this.ErrorCode = errorCode;
    }

    public String toString() {
        return "ZIMGenError{Message=" + this.Message + ",ErrorCode=" + this.ErrorCode + "}";
    }
}
