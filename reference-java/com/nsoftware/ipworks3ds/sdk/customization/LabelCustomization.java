package com.nsoftware.ipworks3ds.sdk.customization;

import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import java.util.HashMap;
import java.util.Map;

public final class LabelCustomization extends Customization {

    public String f44;

    public String f46;

    public String f47;

    public String f51;

    public int f45 = -1;

    public int f48 = -1;

    public int f55 = -1;

    public Map<UiCustomization.LabelType, String> f50 = null;

    public Map<UiCustomization.LabelType, String> f53 = null;

    public Map<UiCustomization.LabelType, String> f54 = null;

    public Map<UiCustomization.LabelType, Integer> f49 = null;

    public Map<UiCustomization.LabelType, int[]> f52 = null;

    public String getBackgroundColor(UiCustomization.LabelType labelType) {
        Map<UiCustomization.LabelType, String> map = this.f50;
        if (map == null) {
            return null;
        }
        return map.get(labelType);
    }

    public int getHeadingTextAlignment() {
        return this.f48;
    }

    public String getHeadingTextColor() {
        return this.f51;
    }

    public String getHeadingTextFontName() {
        return this.f44;
    }

    public int getHeadingTextFontSize() {
        return this.f45;
    }

    public String getInputLabelTextColor() {
        return this.f46;
    }

    public String getInputLabelTextFontName() {
        return this.f47;
    }

    public int getInputLabelTextFontSize() {
        return this.f55;
    }

    public int[] getPadding(UiCustomization.LabelType labelType) {
        Map<UiCustomization.LabelType, int[]> map = this.f52;
        if (map == null) {
            return null;
        }
        return map.get(labelType);
    }

    public String getTextColor(UiCustomization.LabelType labelType) {
        Map<UiCustomization.LabelType, String> map = this.f53;
        if (map == null) {
            return null;
        }
        return map.get(labelType);
    }

    public String getTextFontName(UiCustomization.LabelType labelType) {
        Map<UiCustomization.LabelType, String> map = this.f54;
        if (map == null) {
            return null;
        }
        return map.get(labelType);
    }

    public Integer getTextFontSize(UiCustomization.LabelType labelType) {
        Map<UiCustomization.LabelType, Integer> map = this.f49;
        if (map == null) {
            return null;
        }
        return map.get(labelType);
    }

    public void setBackgroundColor(UiCustomization.LabelType labelType, String str) {
        if (this.f50 == null) {
            this.f50 = new HashMap();
        }
        this.f50.put(labelType, str);
    }

    public void setHeadingTextAlignment(int i) {
        this.f48 = i;
    }

    public void setHeadingTextColor(String str) throws InvalidInputException {
        Customization.m1179(str);
        this.f51 = str;
    }

    public void setHeadingTextFontName(String str) throws InvalidInputException {
        m1181(str);
        this.f44 = str;
    }

    public void setHeadingTextFontSize(int i) throws InvalidInputException {
        m1180(i);
        this.f45 = i;
    }

    public void setInputLabelTextColor(String str) throws InvalidInputException {
        Customization.m1179(str);
        this.f46 = str;
    }

    public void setInputLabelTextFontName(String str) throws InvalidInputException {
        m1181(str);
        this.f47 = str;
    }

    public void setInputLabelTextFontSize(int i) throws InvalidInputException {
        m1180(i);
        this.f55 = i;
    }

    public void setPadding(UiCustomization.LabelType labelType, int i, int i2, int i3, int i4) {
        if (this.f52 == null) {
            this.f52 = new HashMap();
        }
        this.f52.put(labelType, new int[]{i, i2, i3, i4});
    }

    public void setTextColor(UiCustomization.LabelType labelType, String str) {
        if (this.f53 == null) {
            this.f53 = new HashMap();
        }
        this.f53.put(labelType, str);
    }

    public void setTextFontName(UiCustomization.LabelType labelType, String str) {
        if (this.f54 == null) {
            this.f54 = new HashMap();
        }
        this.f54.put(labelType, str);
    }

    public void setTextFontSize(UiCustomization.LabelType labelType, Integer num) {
        if (this.f49 == null) {
            this.f49 = new HashMap();
        }
        this.f49.put(labelType, num);
    }
}
