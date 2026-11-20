package com.payfort.fortpaymentsdk.utils;

import com.google.gson.Gson;
import com.oppwa.mobile.connect.threeds.ChallengeCallback;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import java.util.HashMap;
import java.util.Map;

public class MapUtils {
    public static String getLanguage(Map<String, Object> map) {
        if (map != null && map.get(Constants.FORT_PARAMS.LANGUAGE) != null) {
            String strValueOf = String.valueOf(map.get(Constants.FORT_PARAMS.LANGUAGE));
            strValueOf.hashCode();
            if (strValueOf.equals(Constants.LANGUAGES.ARABIC) || strValueOf.equals(Constants.LANGUAGES.ENGLISH)) {
                return strValueOf;
            }
        }
        return Constants.LANGUAGES.ENGLISH;
    }

    public static String getPaymentOptionValue(Map<String, Object> map) {
        if (map == null || map.get(Constants.FORT_PARAMS.PAYMENT_OPTION) == null) {
            return null;
        }
        String strValueOf = String.valueOf(map.get(Constants.FORT_PARAMS.PAYMENT_OPTION));
        strValueOf.hashCode();
        switch (strValueOf) {
            case "JAYWAN":
            case "MASTERCARD":
            case "AMEX":
            case "MADA":
            case "VISA":
            case "MEEZA":
                return strValueOf;
            default:
                return null;
        }
    }

    public static boolean displayRememberMe(Map<String, Object> map) {
        Object obj = map.get(Constants.FORT_PARAMS.REMEMBER_ME);
        return obj == null || obj.toString().trim().equals("YES");
    }

    public static SdkResponse collectResponse(Gson gson, String str, Map<String, Object> map) {
        if (isEmpty(str)) {
            return getTechnicalProblemResponse(null, map);
        }
        return (SdkResponse) gson.fromJson(str, SdkResponse.class);
    }

    public static SdkResponse getTechnicalProblemResponse(String str, Map<String, Object> map) {
        SdkResponse sdkResponse = new SdkResponse();
        sdkResponse.setSuccess(false);
        HashMap map2 = new HashMap(map);
        map2.put("status", Constants.FORT_STATUS.INVALID_REQUEST);
        map2.put(Constants.FORT_PARAMS.RESPONSE_CODE, "00006");
        if (isEmpty(str)) {
            str = Constants.FORT_MSGS.TECHNICAL_PROBLEM;
        }
        map2.put(Constants.FORT_PARAMS.RESPONSE_MSG, str);
        sdkResponse.setResponseMap(map2);
        return sdkResponse;
    }

    public static SdkResponse getFailedToInitConnectionResponse(String str, Map<String, Object> map) {
        SdkResponse sdkResponse = new SdkResponse();
        sdkResponse.setSuccess(false);
        HashMap map2 = new HashMap(map);
        map2.put("status", Constants.FORT_STATUS.INVALID_REQUEST);
        map2.put(Constants.FORT_PARAMS.RESPONSE_CODE, "00071");
        map2.put(Constants.FORT_PARAMS.RESPONSE_MSG, str);
        sdkResponse.setResponseMap(map2);
        return sdkResponse;
    }

    public static Map<String, Object> getCanceledByUserResponse(String str, Map<String, Object> map) {
        HashMap map2 = new HashMap(map);
        map2.put("status", Constants.FORT_STATUS.INVALID_REQUEST);
        map2.put(Constants.FORT_PARAMS.RESPONSE_CODE, "00072");
        map2.put(Constants.FORT_PARAMS.RESPONSE_MSG, str);
        return map2;
    }

    public static boolean isEmpty(Object obj) {
        return obj == null || obj.toString().trim().isEmpty();
    }

    public static SdkResponse collectResponseFromHashMap(HashMap<String, Object> map) {
        SdkResponse sdkResponse = new SdkResponse();
        sdkResponse.setResponseMap(map);
        if (sdkResponse.getResponseMap() != null) {
            Object obj = map.get(Constants.FORT_PARAMS.RESPONSE_CODE);
            if (!isEmpty(obj) && obj.toString().length() >= 5 && obj.toString().substring(2).equals(ChallengeCallback.TIMEOUT_ERROR_CODE)) {
                sdkResponse.setSuccess(true);
            }
        }
        return sdkResponse;
    }
}
