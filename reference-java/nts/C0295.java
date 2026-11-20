package nts;

import com.nsoftware.ipworks3ds.sdk.AuthenticationRequestParameters;
import java.io.Serializable;

public class C0295 implements AuthenticationRequestParameters, Serializable {

    public final String f1532;

    public final String f1533;

    public final String f1534;

    public final String f1535;

    public final String f1536;

    public final String f1537;

    public final String f1538;

    public C0295(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f1537 = str2;
        this.f1534 = str;
        this.f1536 = str4;
        this.f1532 = str5;
        this.f1538 = str3;
        this.f1533 = str6;
        this.f1535 = str7;
    }

    @Override
    public String getAuthRequest() {
        return this.f1535;
    }

    @Override
    public String getDeviceData() {
        return this.f1537;
    }

    @Override
    public String getMessageVersion() {
        return this.f1533;
    }

    @Override
    public String getSDKAppID() {
        return this.f1536;
    }

    @Override
    public String getSDKEphemeralPublicKey() {
        return this.f1538;
    }

    @Override
    public String getSDKReferenceNumber() {
        return this.f1532;
    }

    @Override
    public String getSDKTransactionID() {
        return this.f1534;
    }
}
