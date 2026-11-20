package com.nsoftware.ipworks3ds.sdk.customization;

import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;

public final class ToolbarCustomization extends Customization {

    public String f59;

    public String f60;

    public String f61;

    public String getBackgroundColor() {
        return this.f61;
    }

    public String getButtonText() {
        return this.f60;
    }

    public String getHeaderText() {
        return this.f59;
    }

    public void setBackgroundColor(String str) throws InvalidInputException {
        this.f61 = str;
    }

    public void setButtonText(String str) throws InvalidInputException {
        this.f60 = str;
    }

    public void setHeaderText(String str) throws InvalidInputException {
        this.f59 = str;
    }
}
