package nts;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import ch.qos.logback.core.net.SyslogConstants;
import com.nsoftware.ipworks3ds.sdk.Warning;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class C0542 {

    public final List<Warning> f3132;

    public static final String f3131 = C0558.m5457(0, 4, 14);

    public static final String f3129 = C0558.m5457(4, 4, 67);

    public static final String f3130 = C0558.m5457(8, 4, 23);

    public static final String f3127 = C0558.m5457(12, 4, 84);

    public static final String f3128 = C0558.m5457(16, 4, 83);

    public C0542(Context context, C0400 c0400) throws Throwable {
        int i;
        int i2;
        Signature[] signatureArr;
        Signature[] apkContentsSigners;
        Process process;
        Process processExec;
        char cCharAt;
        String str = c0400.f2086;
        List<String> list = c0400.f2080;
        List<String> list2 = c0400.f2083;
        ArrayList arrayList = new ArrayList();
        if (!C0404.m4638() && !C0404.m4641()) {
            i2 = 0;
            i = 8;
            int i3 = 4;
            List listAsList = Arrays.asList(new File(C0558.m5455(1641, 8, 112)), new File(C0558.m5455(1649, 14, 89)), new File(C0558.m5455(1663, 15, 119)), new File(C0558.m5455(1678, 19, 73)), new File(C0558.m5455(1697, 18, 117)), new File(C0558.m5455(1715, 18, 60)), new File(C0558.m5455(1733, 23, 110)), new File(C0558.m5455(1756, 25, 40)), new File(C0558.m5455(1781, 34, 89)), new File(C0558.m5455(1815, 21, 107)), new File(C0558.m5455(1836, 14, 3)), new File(C0558.m5455(1850, 10, 11)));
            Iterator it = listAsList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    List<ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(128);
                    List listAsList2 = Arrays.asList(C0558.m5455(1860, 22, 17), C0558.m5455(1882, 20, SyslogConstants.LOG_CLOCK), C0558.m5455(1902, 33, 67), C0558.m5455(1935, 33, 100), C0558.m5455(1968, 20, 40), C0558.m5455(1988, 20, 52), C0558.m5455(2008, 37, 15));
                    for (ApplicationInfo applicationInfo : installedApplications) {
                        if (listAsList2.contains(applicationInfo.packageName)) {
                            C0404.m4640(C0663.m5891("06, ").append(listAsList2.indexOf(applicationInfo.packageName)).toString());
                        }
                    }
                    break;
                }
                File file = (File) it.next();
                if (file.exists()) {
                    try {
                        processExec = Runtime.getRuntime().exec(C0558.m5455(1547, 6, 2) + file.getPath());
                        try {
                            String line = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine();
                            if (line != null && line.length() >= i3 && ((cCharAt = line.charAt(3)) == 'x' || cCharAt == 's')) {
                                processExec.destroy();
                                C0404.m4640(C0663.m5891("05, ").append(listAsList.indexOf(file)).toString());
                            }
                        } catch (Exception unused) {
                            if (processExec != null) {
                            }
                            i3 = 4;
                        } catch (Throwable th) {
                            th = th;
                            process = processExec;
                            if (process != null) {
                                process.destroy();
                            }
                            throw th;
                        }
                    } catch (Exception unused2) {
                        processExec = null;
                    } catch (Throwable th2) {
                        th = th2;
                        process = null;
                    }
                    processExec.destroy();
                }
                i3 = 4;
            }
            C0404.f2103 = C0404.m4644(context, list, c0400.f2076);
            if (C0404.m4642(context) && C0404.f2103 && !C0404.m4643(context, list2) && str != null && str.length() != 0) {
                String lowerCase = str.replace(":", "").toLowerCase(Locale.US);
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    arrayList.add(new C0249());
                    break;
                }
                try {
                    if (Build.VERSION.SDK_INT >= 28) {
                        SigningInfo signingInfo = packageManager.getPackageInfo(context.getPackageName(), 134217728).signingInfo;
                        apkContentsSigners = signingInfo.hasMultipleSigners() ? signingInfo.getApkContentsSigners() : signingInfo.getSigningCertificateHistory();
                    } else {
                        apkContentsSigners = packageManager.getPackageInfo(context.getPackageName(), 64).signatures;
                    }
                    signatureArr = apkContentsSigners;
                } catch (PackageManager.NameNotFoundException unused3) {
                    signatureArr = null;
                }
                if (signatureArr == null) {
                    arrayList.add(new C0249());
                    break;
                }
                int length = signatureArr.length;
                int i4 = i2;
                while (true) {
                    if (i4 >= length) {
                        C0404.m4640("03");
                        arrayList.add(new C0249());
                        break;
                    }
                    try {
                        byte[] bArrDigest = MessageDigest.getInstance(C0558.m5455(1553, 7, 63)).digest(signatureArr[i4].toByteArray());
                        try {
                            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
                            int length2 = bArrDigest.length;
                            for (int i5 = i2; i5 < length2; i5++) {
                                try {
                                    sb.append(String.format(C0558.m5449(414, 4, 52), Byte.valueOf(bArrDigest[i5])));
                                } catch (NoSuchAlgorithmException unused4) {
                                }
                            }
                            if (lowerCase.equals(sb.toString())) {
                                break;
                            } else {
                                i4++;
                            }
                        } catch (NoSuchAlgorithmException unused5) {
                        }
                    } catch (NoSuchAlgorithmException unused6) {
                    }
                }
            } else {
                arrayList.add(new C0249());
                break;
            }
            if (Build.FINGERPRINT.startsWith(C0558.m5455(1250, 7, 124)) || Build.FINGERPRINT.startsWith(C0558.m5455(1257, 7, 47)) || ((Build.BRAND.startsWith(C0558.m5455(1264, 7, 31)) && Build.DEVICE.startsWith(C0558.m5455(1271, 7, 98))) || Build.MODEL.contains(C0558.m5455(1278, i, 71)) || Build.MODEL.contains(C0558.m5455(1286, 10, 81)) || Build.MODEL.contains(C0558.m5455(1296, 25, 84)) || Build.MANUFACTURER.contains(C0558.m5455(1321, 10, 42)) || C0558.m5455(1331, 10, 41).equals(Build.PRODUCT))) {
                arrayList.add(new C0113());
            }
            if (C0404.m4642(context)) {
                arrayList.add(new C0425());
            }
            this.f3132 = arrayList;
        }
        i = 8;
        i2 = 0;
        arrayList.add(new C0588());
        C0404.f2103 = C0404.m4644(context, list, c0400.f2076);
        if (C0404.m4642(context)) {
            arrayList.add(new C0249());
            break;
        } else {
            arrayList.add(new C0249());
            break;
        }
        if (Build.FINGERPRINT.startsWith(C0558.m5455(1250, 7, 124))) {
            arrayList.add(new C0113());
        } else {
            arrayList.add(new C0113());
        }
        if (C0404.m4642(context)) {
            arrayList.add(new C0425());
        }
        this.f3132 = arrayList;
    }

    public static C0542 m5424(Context context, C0400 c0400) {
        return new C0542(context.getApplicationContext(), c0400);
    }
}
