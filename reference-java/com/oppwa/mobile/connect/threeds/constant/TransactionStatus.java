package com.oppwa.mobile.connect.threeds.constant;

public enum TransactionStatus {
    AUTHENTICATED,
    ATTEMPT_PROCESSING_PERFORMED,
    DENIED,
    REJECTED,
    FAILED;

    public static TransactionStatus fromString(String str) {
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "A":
                return ATTEMPT_PROCESSING_PERFORMED;
            case "N":
                return DENIED;
            case "R":
                return REJECTED;
            case "U":
                return FAILED;
            case "Y":
                return AUTHENTICATED;
            default:
                return null;
        }
    }
}
