package com.nsoftware.ipworks3ds.sdk.customization;

import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import nts.C0558;

public class Customization {

    public int f41 = 0;

    public String f42;

    public String f43;

    public static void m1179(String str) {
        if (str == null || str.isEmpty() || str.charAt(0) != '#') {
            throw new InvalidInputException(C0558.m5473(51, 36, 59), null);
        }
    }

    public String getTextColor() {
        return this.f42;
    }

    public String getTextFontName() {
        return this.f43;
    }

    public int getTextFontSize() {
        return this.f41;
    }

    public void setTextColor(String str) throws InvalidInputException {
        this.f42 = str;
    }

    public void setTextFontName(String str) throws InvalidInputException {
        this.f43 = str;
    }

    public void setTextFontSize(int i) throws InvalidInputException {
        m1180(i);
        this.f41 = i;
    }

    public void m1180(int i) {
        if (i < 0) {
            throw new InvalidInputException(C0558.m5473(0, 27, 82), null);
        }
    }

    public void m1181(String str) {
        if (str == null || str.length() == 0) {
            throw new InvalidInputException(C0558.m5473(27, 24, 70), null);
        }
    }
}
