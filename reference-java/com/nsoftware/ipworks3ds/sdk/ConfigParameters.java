package com.nsoftware.ipworks3ds.sdk;

import android.text.TextUtils;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import nts.C0558;
import org.bouncycastle.crypto.tls.CipherSuite;

public class ConfigParameters {

    public final TreeSet<C0061> f7 = new TreeSet<>();

    public void addParam(String str, String str2, String str3) throws InvalidInputException {
        C0061 c0061 = new C0061(str, str2, str3);
        if (c0061.f20 == null) {
            throw new InvalidInputException(C0558.m5478(0, 20, 27));
        }
        this.f7.remove(c0061);
        this.f7.add(c0061);
    }

    public Map<String, String> getGroup(String str) {
        HashMap map = new HashMap();
        for (C0061 c0061 : this.f7) {
            if (c0061.m1167(str)) {
                map.put(c0061.f20, c0061.f19);
            }
        }
        return map;
    }

    public List<String> getParamNamesInGroup(String str) {
        ArrayList arrayList = new ArrayList();
        for (C0061 c0061 : this.f7) {
            if (c0061.m1167(str)) {
                arrayList.add(c0061.f20);
            }
        }
        return arrayList;
    }

    public synchronized String getParamValue(String str, String str2) throws InvalidInputException {
        C0061 c0061 = new C0061(str, str2, "");
        if (c0061.f20 == null) {
            throw new InvalidInputException(C0558.m5478(20, 20, 27));
        }
        C0061 c0061Ceiling = this.f7.ceiling(c0061);
        if (c0061Ceiling == null && str != null) {
            return getParamValue(null, str2);
        }
        if (c0061Ceiling != null && c0061Ceiling.compareTo(c0061) == 0) {
            return c0061Ceiling.f19;
        }
        return "";
    }

    public synchronized String removeParam(String str, String str2) throws InvalidInputException {
        C0061 c0061 = new C0061(str, str2, "");
        if (c0061.f20 == null) {
            throw new InvalidInputException(C0558.m5478(40, 20, 49));
        }
        C0061 c0061Ceiling = this.f7.ceiling(c0061);
        if (c0061Ceiling != null && c0061Ceiling.compareTo(c0061) == 0) {
            this.f7.remove(c0061Ceiling);
            return c0061Ceiling.f20;
        }
        return "";
    }

    public static final class Builder {

        public List<String> f8;

        public String f9;

        public List<String> f10;

        public String f11;

        public List<String> f12;

        public List<String> f13;

        public String f14;

        public final List<DirectoryServerInfo> f15;
        public static final String GROUP_DIRECTORY_SERVER_KEY = C0558.m5478(60, 6, 48);
        public static final String GROUP_DIRECTORY_SERVER_CA = C0558.m5478(66, 5, 43);
        public static final String GROUP_TRUSTED_APP_STORES = C0558.m5478(71, 16, 46);
        public static final String GROUP_DEVICE_PARAMETER_BLACK_LIST = C0558.m5478(87, 24, 39);
        public static final String GROUP_MALICIOUS_APPS = C0558.m5478(111, 13, 124);
        public static final String GROUP_CLIENT_CONFIG = C0558.m5478(124, 12, 8);
        public static final String APP_SIGNATURE = C0558.m5478(SyslogConstants.LOG_LOCAL1, 12, 33);
        public static final String APP_SHA256_HASH_VALUE = C0558.m5478(CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA, 18, 110);
        public static final String RUNTIME_LICENSE = C0558.m5478(166, 14, 61);

        public Builder(List<DirectoryServerInfo> list, String str) {
            this.f15 = list;
            this.f14 = str;
        }

        public static void m1165(ConfigParameters configParameters, String str, List<String> list) {
            if (list != null) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    m1164(configParameters, str, it.next(), null);
                }
            }
        }

        public Builder appSignature(String str) {
            this.f9 = str;
            return this;
        }

        public ConfigParameters build() {
            List<DirectoryServerInfo> list = this.f15;
            if (list == null || list.size() == 0) {
                throw new InvalidInputException(C0558.m5478(RotationOptions.ROTATE_180, 41, 3));
            }
            ConfigParameters configParameters = new ConfigParameters();
            for (DirectoryServerInfo directoryServerInfo : this.f15) {
                m1164(configParameters, GROUP_DIRECTORY_SERVER_KEY, directoryServerInfo.getRID(), directoryServerInfo.getPublicKey());
                m1164(configParameters, GROUP_DIRECTORY_SERVER_CA, directoryServerInfo.getRID(), directoryServerInfo.getCA());
            }
            m1165(configParameters, GROUP_DEVICE_PARAMETER_BLACK_LIST, this.f13);
            m1165(configParameters, GROUP_TRUSTED_APP_STORES, this.f10);
            m1165(configParameters, GROUP_MALICIOUS_APPS, this.f12);
            m1164(configParameters, null, APP_SIGNATURE, this.f9);
            m1164(configParameters, null, APP_SHA256_HASH_VALUE, this.f11);
            m1165(configParameters, GROUP_CLIENT_CONFIG, this.f8);
            m1164(configParameters, null, RUNTIME_LICENSE, this.f14);
            return configParameters;
        }

        public Builder clientConfig(List<String> list) {
            this.f8 = list;
            return this;
        }

        public Builder deviceParameterBlacklist(List<String> list) {
            this.f13 = list;
            return this;
        }

        public Builder maliciousApps(List<String> list) {
            this.f12 = list;
            return this;
        }

        public Builder trustedAppStores(List<String> list) {
            this.f10 = list;
            return this;
        }

        public static void m1164(ConfigParameters configParameters, String str, String str2, String str3) {
            if (str2 != null) {
                configParameters.addParam(str, str2, str3);
            }
        }
    }

    public static final class DirectoryServerInfo {

        public final String f16;

        public final String f17;

        public final String f18;

        public DirectoryServerInfo(String str, String str2, String[] strArr) {
            this.f18 = str;
            this.f17 = str2;
            this.f16 = TextUtils.join("\n", strArr);
        }

        public String getCA() {
            return this.f16;
        }

        public String getPublicKey() {
            return this.f17;
        }

        public String getRID() {
            return this.f18;
        }

        public DirectoryServerInfo(String str, String str2, String str3) {
            this.f18 = str;
            this.f17 = str2;
            this.f16 = str3;
        }
    }

    public static class C0061 implements Comparable<C0061> {

        public final String f19;

        public final String f20;

        public final String f21;

        public C0061(String str, String str2, String str3) {
            this.f21 = str;
            this.f20 = str2;
            this.f19 = str3;
        }

        @Override
        public int compareTo(C0061 c0061) {
            int iCompareTo;
            String str = this.f21;
            if (str != null) {
                String str2 = c0061.f21;
                if (str2 == null) {
                    return 1;
                }
                iCompareTo = str.compareTo(str2);
            } else {
                if (c0061.f21 != null) {
                    return -1;
                }
                iCompareTo = 0;
            }
            return iCompareTo == 0 ? this.f20.compareToIgnoreCase(c0061.f20) : iCompareTo;
        }

        public boolean m1167(String str) {
            String str2 = this.f21;
            if (str2 == null && str == null) {
                return true;
            }
            return str != null && str.equals(str2);
        }
    }
}
