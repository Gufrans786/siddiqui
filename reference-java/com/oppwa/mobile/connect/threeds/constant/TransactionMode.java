package com.oppwa.mobile.connect.threeds.constant;

public enum TransactionMode {
    TEST,
    LIVE;

    public static TransactionMode getByName(String str) {
        for (TransactionMode transactionMode : values()) {
            if (transactionMode.name().equalsIgnoreCase(str)) {
                return transactionMode;
            }
        }
        return null;
    }
}
