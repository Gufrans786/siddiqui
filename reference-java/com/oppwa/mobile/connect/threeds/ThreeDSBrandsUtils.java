package com.oppwa.mobile.connect.threeds;

import com.payfort.fortpaymentsdk.constants.Constants;

public class ThreeDSBrandsUtils {
    private static boolean a(String str) {
        return str.equals("DINERS") || str.equals("DISCOVER");
    }

    private static boolean b(String str) {
        return str.equals("MASTER") || str.equals("MASTERDEBIT") || str.equals(Constants.CREDIT_CARDS_TYPES.MAESTRO);
    }

    private static boolean c(String str) {
        return str.equals(Constants.CREDIT_CARDS_TYPES.VISA) || str.equals("VISADEBIT") || str.equals("VISAELECTRON") || str.equals("VPAY");
    }

    public static String getThreeDSBrand(String str) {
        if (c(str)) {
            return Constants.CREDIT_CARDS_TYPES.VISA;
        }
        if (b(str)) {
            return "MASTER";
        }
        return a(str) ? "DINERS" : str;
    }
}
