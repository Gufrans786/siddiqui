package com.nsoftware.ipworks3ds.sdk.customization;

import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;

public final class ButtonCustomization extends Customization {

    public int f37 = -1;

    public int f38 = 0;

    public int[] f39;

    public String f40;

    public String getBackgroundColor() {
        return this.f40;
    }

    public int getCornerRadius() {
        return this.f37;
    }

    public int getHeight() {
        return this.f38;
    }

    public int[] getPadding() {
        return this.f39;
    }

    public void setBackgroundColor(String str) throws InvalidInputException {
        Customization.m1179(str);
        this.f40 = str;
    }

    public void setCornerRadius(int i) throws InvalidInputException {
        m1180(i);
        this.f37 = i;
    }

    public void setHeight(int i) {
        this.f38 = i;
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        if (this.f39 == null) {
            this.f39 = new int[4];
        }
        int[] iArr = this.f39;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        iArr[3] = i4;
    }
}
