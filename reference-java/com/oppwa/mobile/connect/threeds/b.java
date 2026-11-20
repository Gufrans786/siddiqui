package com.oppwa.mobile.connect.threeds;

import com.google.android.material.timepicker.TimeModel;
import com.nsoftware.ipworks3ds.sdk.ConfigParameters;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import com.oppwa.mobile.connect.threeds.constant.ChallengeUiType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

class b {
    private static final String[] a = {"UseSDKProcessingScreen"};

    static ConfigParameters a(OppThreeDSConfig oppThreeDSConfig, List<SchemeConfig> list) throws InvalidInputException {
        ConfigParameters.Builder builder = new ConfigParameters.Builder(a(list), "5453473256414E58524641464B4832383333000000000000000000000000000000000000000000004333474D424D33440000384B363133583034453956360000");
        a(builder, oppThreeDSConfig);
        ConfigParameters configParametersBuild = builder.build();
        a(configParametersBuild, oppThreeDSConfig);
        return configParametersBuild;
    }

    static List<ConfigParameters.DirectoryServerInfo> a(List<SchemeConfig> list) {
        ArrayList arrayList = new ArrayList();
        for (SchemeConfig schemeConfig : list) {
            arrayList.add(new ConfigParameters.DirectoryServerInfo(schemeConfig.getDsRefId(), schemeConfig.getDsEncryptCert(), schemeConfig.getDsCaRootCert()));
        }
        return arrayList;
    }

    static List<String> a(OppThreeDSConfig oppThreeDSConfig) {
        HashMap map = new HashMap(oppThreeDSConfig.a());
        int i = ChallengeUiType.toInt(oppThreeDSConfig.getChallengeUiTypes());
        map.put("DeviceRenderingInterface", a(a(oppThreeDSConfig.getChallengeUiTypes())));
        map.put("DeviceRenderingUIType", a(i));
        map.put("SDKMaxTimeout", String.valueOf(oppThreeDSConfig.getSdkMaxTimeout()));
        map.put("MaskSensitive", "true");
        map.put("LogLevel", String.valueOf(2));
        List listAsList = Arrays.asList(a);
        ArrayList arrayList = new ArrayList();
        for (String str : map.keySet()) {
            if (!listAsList.contains(str)) {
                arrayList.add(str + "=" + ((String) map.get(str)));
            }
        }
        return arrayList;
    }

    private static void a(ConfigParameters.Builder builder, OppThreeDSConfig oppThreeDSConfig) {
        builder.clientConfig(a(oppThreeDSConfig));
        if (oppThreeDSConfig.getDeviceParameterBlacklist() != null) {
            builder.deviceParameterBlacklist(Arrays.asList(oppThreeDSConfig.getDeviceParameterBlacklist()));
        }
        if (oppThreeDSConfig.getTrustedAppStores() != null) {
            builder.trustedAppStores(Arrays.asList(oppThreeDSConfig.getTrustedAppStores()));
        }
        if (oppThreeDSConfig.getMaliciousApps() != null) {
            builder.maliciousApps(Arrays.asList(oppThreeDSConfig.getMaliciousApps()));
        }
        builder.appSignature(oppThreeDSConfig.getAppSignature());
    }

    private static void a(ConfigParameters configParameters, OppThreeDSConfig oppThreeDSConfig) {
        for (String str : a) {
            String clientConfigParam = oppThreeDSConfig.getClientConfigParam(str);
            if (clientConfigParam != null) {
                configParameters.addParam(null, str, clientConfigParam);
            }
        }
    }

    private static int a(EnumSet<ChallengeUiType> enumSet) {
        Iterator it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = ((ChallengeUiType) it.next()) == ChallengeUiType.HTML ? i | 2 : i | 1;
        }
        return i;
    }

    private static String a(int i) {
        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
    }
}
