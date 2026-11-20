package com.payfort.fortpaymentsdk.security;

import com.google.common.io.BaseEncoding;
import com.payfort.fortpaymentsdk.exceptions.FortException;
import com.payfort.fortpaymentsdk.security.aes.AESCipherManager;
import com.payfort.fortpaymentsdk.security.rsa.RSAEncryptUtil;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPublicKey;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import javax.crypto.spec.SecretKeySpec;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

public class DataSecurityService {
    private static final String FORT_SECURITY_SEPARATOR = "___F0RT___";

    public static RSAPublicKey getPublicKey(List<Certificate> list) {
        X509Certificate x509Certificate;
        if (list != null) {
            Iterator<Certificate> it = list.iterator();
            x509Certificate = null;
            while (it.hasNext()) {
                x509Certificate = (X509Certificate) it.next();
                if (x509Certificate.getSubjectDN().getName().contains("payfort") || x509Certificate.getSubjectDN().getName().contains("PAYFORT")) {
                    break;
                }
            }
        } else {
            x509Certificate = null;
        }
        if (x509Certificate != null) {
            return (RSAPublicKey) x509Certificate.getPublicKey();
        }
        return null;
    }

    public static String encryptRequestData(String str, RSAPublicKey rSAPublicKey, SecretKeySpec secretKeySpec) throws FortException {
        try {
            return new AESCipherManager().encryptData(str, secretKeySpec) + FORT_SECURITY_SEPARATOR + BaseEncoding.base64().encode(RSAEncryptUtil.encrypt(secretKeySpec.getEncoded(), rSAPublicKey));
        } catch (Exception e) {
            throw new FortException("failed to encrypt data", e);
        }
    }

    public static void cleanMerhcantRequestMap(Map<String, Object> map) {
        for (String str : map.keySet()) {
            map.put(str, cleanXSS(map.get(str)));
        }
    }

    private static Object cleanXSS(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            for (String str : map.keySet()) {
                map.put(cleanXSS(str).toString(), cleanXSS(map.get(str)));
            }
            return obj;
        }
        if (obj instanceof List) {
            LinkedList linkedList = new LinkedList();
            List list = (List) obj;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                linkedList.add(cleanXSS(it.next()));
            }
            list.clear();
            list.addAll(linkedList);
            return obj;
        }
        return stringCleanXSS(obj);
    }

    private static String stringCleanXSS(Object obj) {
        String string = obj != null ? obj.toString() : null;
        if (string == null) {
            return null;
        }
        String strReplaceAll = string.replaceAll(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, "");
        if (strReplaceAll.isEmpty()) {
            return strReplaceAll;
        }
        for (Pattern pattern : FortSecurityConstant.xSSPatterns) {
            strReplaceAll = pattern.matcher(strReplaceAll).replaceAll("");
        }
        return strReplaceAll;
    }
}
