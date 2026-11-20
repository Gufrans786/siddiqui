package com.oppwa.mobile.connect.payment.card;

class b {
    private static final int[] a = {0, 2, 4, 6, 8, 1, 3, 5, 7, 9};

    static boolean a(String str) {
        String strReplaceAll = str.replaceAll("[^0-9]", "");
        if (strReplaceAll.length() == 0) {
            return false;
        }
        String string = new StringBuffer(strReplaceAll).reverse().toString();
        int i = 0;
        for (int i2 = 0; i2 < string.length(); i2++) {
            int iDigit = Character.digit(string.charAt(i2), 10);
            if (i2 % 2 == 1) {
                iDigit = a[iDigit];
            }
            i += iDigit;
        }
        return i % 10 == 0;
    }
}
