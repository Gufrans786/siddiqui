package com.oppwa.mobile.connect.utils;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils {
    private static final Pattern a = Pattern.compile("\\d{2,}");

    private static boolean a(char c) {
        if (Character.isDigit(c)) {
            return c < '0' || c > '9';
        }
        return false;
    }

    public static boolean compareStringBuilders(StringBuilder sb, StringBuilder sb2) {
        if (sb.length() != sb2.length()) {
            return false;
        }
        for (int i = 0; i < sb.length(); i++) {
            if (sb.charAt(i) != sb2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    public static byte[] getBytes(CharSequence charSequence) {
        ByteBuffer byteBufferEncode = StandardCharsets.UTF_8.encode(CharBuffer.wrap(charSequence));
        byte[] bArrCopyOfRange = Arrays.copyOfRange(byteBufferEncode.array(), byteBufferEncode.position(), byteBufferEncode.limit());
        Arrays.fill(byteBufferEncode.array(), (byte) 0);
        return bArrCopyOfRange;
    }

    public static String inputStreamToString(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return sb.toString();
                }
                sb.append(line);
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public static void removeSubstring(StringBuilder sb, String str) {
        replaceAll(sb, str, "");
    }

    public static void replaceAll(StringBuilder sb, String str, String str2) {
        int iIndexOf = sb.indexOf(str);
        while (iIndexOf != -1) {
            sb.replace(iIndexOf, str.length() + iIndexOf, str2);
            iIndexOf = sb.indexOf(str, iIndexOf + str2.length());
        }
    }

    public static String replaceNonstandardDigits(String str) {
        if (!stringHasNonstandardDigits(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        replaceNonstandardDigits(sb);
        return sb.toString();
    }

    public static boolean stringHasNonstandardDigits(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return false;
        }
        for (int i = 0; i < charSequence.length(); i++) {
            if (a(charSequence.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static String unmaskNumbers(String str) {
        Matcher matcher = a.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group(0);
            if (strGroup != null) {
                str = str.replaceFirst(strGroup, a(strGroup));
            }
        }
        return str;
    }

    public static void wipeString(StringBuilder sb) {
        for (int i = 0; i < sb.length(); i++) {
            sb.setCharAt(i, (char) 0);
        }
    }

    private static String a(String str) {
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < charArray.length; i++) {
            if (i > 0) {
                sb.append("_");
            }
            sb.append(charArray[i]);
        }
        return sb.toString();
    }

    public static void replaceNonstandardDigits(StringBuilder sb) {
        int numericValue;
        if (TextUtils.isEmpty(sb)) {
            return;
        }
        for (int i = 0; i < sb.length(); i++) {
            char cCharAt = sb.charAt(i);
            if (a(cCharAt) && (numericValue = Character.getNumericValue(cCharAt)) >= 0) {
                sb.setCharAt(i, (char) (numericValue + 48));
            }
        }
    }
}
