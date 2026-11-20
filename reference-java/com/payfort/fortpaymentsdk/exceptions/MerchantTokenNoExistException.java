package com.payfort.fortpaymentsdk.exceptions;

public class MerchantTokenNoExistException extends Exception {
    @Override
    public String getMessage() {
        return "Merchant Token No Exist Exception";
    }
}
