package com.nsoftware.ipworks3ds.sdk;

import android.content.Context;
import com.nsoftware.ipworks3ds.sdk.customization.UiCustomization;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKAlreadyInitializedException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKNotInitializedException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;
import java.util.List;
import nts.InterfaceC0504;

public interface ThreeDS2Service {
    public static final ThreeDS2Service INSTANCE = InterfaceC0504.f2818;

    void cleanup(Context context) throws SDKNotInitializedException;

    Transaction createTransaction(String str, String str2) throws InvalidInputException, SDKNotInitializedException, SDKRuntimeException;

    String getSDKVersion() throws SDKNotInitializedException, SDKRuntimeException;

    List<Warning> getWarnings() throws SDKNotInitializedException;

    void initialize(Context context, ConfigParameters configParameters, String str, UiCustomization uiCustomization, ClientEventListener clientEventListener, SecurityEventListener securityEventListener) throws SDKAlreadyInitializedException, InvalidInputException, SDKRuntimeException;
}
