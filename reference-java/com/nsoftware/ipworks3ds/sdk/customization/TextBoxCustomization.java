package com.nsoftware.ipworks3ds.sdk.customization;

import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;

public final class TextBoxCustomization extends Customization {

    public int f56 = -1;

    public int f57 = -1;

    public String f58;

    public String getBorderColor() {
        return this.f58;
    }

    public int getBorderWidth() {
        return this.f56;
    }

    public int getCornerRadius() {
        return this.f57;
    }

    public void setBorderColor(String str) throws InvalidInputException {
        Customization.m1179(str);
        this.f58 = str;
    }

    public void setBorderWidth(int i) throws InvalidInputException {
        m1180(i);
        this.f56 = i;
    }

    public void setCornerRadius(int i) throws InvalidInputException {
        m1180(i);
        this.f57 = i;
    }
}
