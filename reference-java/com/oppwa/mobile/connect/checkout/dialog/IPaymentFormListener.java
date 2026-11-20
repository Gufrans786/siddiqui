package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Parcelable;
import com.oppwa.mobile.connect.checkout.meta.CheckoutValidationResult;

public interface IPaymentFormListener extends Parcelable {
    default CheckoutValidationResult onCardHolderValidate(String str) {
        return CheckoutValidationResult.DEFAULT;
    }
}
