package nts;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Debug;
import android.os.Process;
import ch.qos.logback.core.net.SyslogConstants;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

public class C0404 {

    public static boolean f2103 = false;

    public static boolean m4638() {
        String[] strArr;
        int i;
        HashSet hashSet;
        BufferedReader bufferedReader;
        String str;
        try {
            throw new Exception("");
        } catch (Exception e) {
            StackTraceElement[] stackTrace = e.getStackTrace();
            String strM5455 = C0558.m5455(1373, 34, 67);
            List<String> listM4639 = m4639();
            int i2 = 0;
            try {
                try {
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        Iterator<String> it = listM4639.iterator();
                        while (it.hasNext()) {
                            if (stackTraceElement.getClassName().startsWith(it.next())) {
                                m4640("09");
                                return true;
                            }
                        }
                        if (strM5455.equals(stackTraceElement.getClassName()) && (i2 = i2 + 1) == 2) {
                            return true;
                        }
                    }
                    for (i = 0; i < 2; i++) {
                        try {
                            Class.forName(strArr[i]);
                            return true;
                        } catch (Exception unused) {
                        }
                    }
                    String strM5456 = C0558.m5455(1418, 5, 102);
                    String strM5457 = C0558.m5455(1423, 3, 94);
                    String strM5458 = C0558.m5455(1426, 4, 70);
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            String strM5459 = C0558.m5455(1430, 20, 58);
                            String strM54510 = C0558.m5455(1450, 16, 1);
                            Iterator it2 = hashSet.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    bufferedReader.close();
                                    return false;
                                }
                                str = (String) it2.next();
                                if (str.contains(strM5459)) {
                                    break;
                                }
                            } while (!str.contains(strM54510));
                        } else {
                            if (line.toLowerCase().contains(strM5456)) {
                                break;
                            }
                            if (line.endsWith(strM5457) || line.endsWith(strM5458)) {
                                hashSet.add(line.substring(line.lastIndexOf(" ") + 1));
                            }
                        }
                    }
                    bufferedReader.close();
                    return true;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
                bufferedReader = new BufferedReader(new FileReader(C0558.m5455(1407, 6, 22) + Process.myPid() + C0558.m5455(1413, 5, 60)));
            } catch (Exception unused2) {
                return false;
            }
            strArr = new String[]{C0558.m5455(1466, 36, 16), C0558.m5455(1502, 36, 96)};
            hashSet = new HashSet();
        }
    }

    public static List<String> m4639() {
        return Arrays.asList(C0558.m5455(1567, 22, SyslogConstants.LOG_CLOCK), C0558.m5455(1589, 32, 114), C0558.m5455(1621, 20, WebSocketProtocol.PAYLOAD_SHORT));
    }

    public static boolean m4642(Context context) {
        boolean z = m4638() || (context.getApplicationInfo().flags & 2) != 0 || Debug.isDebuggerConnected();
        if (z) {
            m4640("10");
        }
        return z;
    }

    public static void m4640(String str) {
        C0594 c0594 = C0273.f1383.f1394;
        if (c0594 != null) {
            c0594.m5589(2, str, "SW");
        }
    }

    public static boolean m4641() {
        String str = Build.TAGS;
        boolean z = str != null && str.contains(C0558.m5455(1538, 9, 39));
        if (z) {
            m4640("08");
        }
        return z;
    }

    public static boolean m4643(Context context, List<String> list) {
        ArrayList<String> arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.addAll(m4639());
        boolean z = true;
        int[] iArr = {0};
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            z = false;
            break;
        }
        Iterator<ApplicationInfo> it = packageManager.getInstalledApplications(128).iterator();
        loop0: while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            ApplicationInfo next = it.next();
            for (String str : arrayList) {
                if (next.packageName.equals(str)) {
                    iArr[0] = arrayList.indexOf(str);
                    break loop0;
                }
            }
        }
        if (z) {
            m4640(C0663.m5891("04, ").append(iArr[0]).toString());
        }
        return z;
    }

    public static boolean m4644(Context context, List<String> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        if (z) {
            arrayList.addAll(Collections.singletonList(C0558.m5455(2045, 19, 21)));
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            m4640("02");
            return false;
        }
        String installerPackageName = packageManager.getInstallerPackageName(context.getPackageName());
        if (installerPackageName != null && !installerPackageName.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equals(installerPackageName)) {
                    return true;
                }
            }
            m4640("01");
            return false;
        }
        m4640("02");
        return false;
    }
}
