package com.nsoftware.ipworks3ds.sdk.customization;

import androidx.appcompat.app.AppCompatDelegate;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import java.util.HashMap;
import java.util.Map;
import nts.C0558;
import nts.C0663;
import okhttp3.internal.ws.WebSocketProtocol;

public final class UiCustomization {

    public final Map<ButtonType, ButtonCustomization> f65 = new HashMap();

    public final Map<Class<? extends Customization>, Customization> f64 = new HashMap();

    public String f62 = null;

    public int f63 = 0;

    public enum ButtonType {
        SUBMIT,
        CONTINUE,
        NEXT,
        CANCEL,
        RESEND
    }

    public enum LabelType {
        INFO_HEADER,
        INFO_TEXT,
        INFO_LABEL,
        WHITELIST,
        WHY_INFO,
        WHY_INFO_TEXT,
        EXPANDABLE_INFO,
        EXPANDABLE_INFO_TEXT,
        SELECTION_LIST
    }

    public String getBackground() {
        return this.f62;
    }

    public ButtonCustomization getButtonCustomization(ButtonType buttonType) throws InvalidInputException {
        m1182(C0558.m5451(68, 10, 76), buttonType);
        ButtonCustomization buttonCustomization = this.f65.get(buttonType);
        if (buttonCustomization != null) {
            return buttonCustomization;
        }
        ButtonCustomization buttonCustomization2 = new ButtonCustomization();
        this.f65.put(buttonType, buttonCustomization2);
        return buttonCustomization2;
    }

    public int getInformationZoneIconPosition() {
        return this.f63;
    }

    public LabelCustomization getLabelCustomization() {
        LabelCustomization labelCustomization = (LabelCustomization) this.f64.get(LabelCustomization.class);
        if (labelCustomization != null) {
            return labelCustomization;
        }
        LabelCustomization labelCustomization2 = new LabelCustomization();
        this.f64.put(LabelCustomization.class, labelCustomization2);
        return labelCustomization2;
    }

    public TextBoxCustomization getTextBoxCustomization() {
        TextBoxCustomization textBoxCustomization = (TextBoxCustomization) this.f64.get(TextBoxCustomization.class);
        if (textBoxCustomization != null) {
            return textBoxCustomization;
        }
        TextBoxCustomization textBoxCustomization2 = new TextBoxCustomization();
        this.f64.put(TextBoxCustomization.class, textBoxCustomization2);
        return textBoxCustomization2;
    }

    public ToolbarCustomization getToolbarCustomization() {
        ToolbarCustomization toolbarCustomization = (ToolbarCustomization) this.f64.get(ToolbarCustomization.class);
        if (toolbarCustomization != null) {
            return toolbarCustomization;
        }
        ToolbarCustomization toolbarCustomization2 = new ToolbarCustomization();
        this.f64.put(ToolbarCustomization.class, toolbarCustomization2);
        return toolbarCustomization2;
    }

    public void setBackground(String str) throws InvalidInputException {
        Customization.m1179(str);
        this.f62 = str;
    }

    public void setButtonCustomization(ButtonCustomization buttonCustomization, ButtonType buttonType) throws InvalidInputException {
        m1182(C0558.m5451(0, 10, WebSocketProtocol.PAYLOAD_SHORT), buttonType);
        this.f65.put(buttonType, buttonCustomization);
    }

    public void setInformationZoneIconPosition(int i) {
        this.f63 = i;
    }

    public void setLabelCustomization(LabelCustomization labelCustomization) throws InvalidInputException {
        m1182(C0558.m5451(30, 18, 38), labelCustomization);
        this.f64.put(LabelCustomization.class, labelCustomization);
    }

    public void setTextBoxCustomization(TextBoxCustomization textBoxCustomization) throws InvalidInputException {
        m1182(C0558.m5451(48, 20, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), textBoxCustomization);
        this.f64.put(TextBoxCustomization.class, textBoxCustomization);
    }

    public void setToolbarCustomization(ToolbarCustomization toolbarCustomization) throws InvalidInputException {
        m1182(C0558.m5451(10, 20, 82), toolbarCustomization);
        this.f64.put(ToolbarCustomization.class, toolbarCustomization);
    }

    public final void m1182(String str, Object obj) throws InvalidInputException {
        if (obj == null) {
            throw new InvalidInputException(C0663.m5891(str).append(C0558.m5451(78, 18, 35)).toString(), null);
        }
    }
}
