package com.oppwa.mobile.connect.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.oppwa.mobile.connect.provider.Connect;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public class Logger {
    static final String a = "com.oppwa.mobile.connect.utils.Logger";
    protected static String c;
    private static Context d;
    private static String e;
    private static Connect.ProviderMode f;
    private static SoftReference<Pattern> g;
    private static File h;
    private static final Integer b = 4;
    private static Mode i = Mode.INFO;

    public enum Mode {
        NONE,
        INFO
    }

    private static String a(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            sb.append('\n');
            sb.append(stackTraceElement.toString());
        }
        return sb.toString();
    }

    protected static List<b> b(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(c(context.getApplicationContext(), str)));
            while (true) {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        sb.append("\n");
                        return a(sb.toString().split("\n"));
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    a(e);
                } catch (Exception e2) {
                    a(e2);
                }
            }
            bufferedReader.close();
        } catch (Exception e3) {
            a(e3);
        }
        return a(sb.toString().split("\n"));
    }

    protected static File c(Context context) {
        if (h == null) {
            h = b(context);
        }
        return h;
    }

    public static void checkOutdatedFiles(Context context, Connect.ProviderDomain providerDomain) {
        File fileC;
        File[] fileArrListFiles;
        if (i == Mode.NONE || (fileC = c(context)) == null || (fileArrListFiles = fileC.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            String strReplace = file.getName().replace(".txt", "");
            if (c(strReplace)) {
                if (d(strReplace)) {
                    a(context, strReplace);
                } else {
                    a(context, strReplace, providerDomain, null);
                }
            }
        }
    }

    private static boolean d(String str) {
        return System.currentTimeMillis() - b(str).longValue() > TimeUnit.SECONDS.toMillis(1800L);
    }

    public static void error(String str) {
        a(d, e, "ERROR", str, f);
        if (f == Connect.ProviderMode.TEST) {
            Log.e(a, "ERROR: " + str);
        }
    }

    public static void info(String str) {
        a(d, e, "INFO", str, f);
    }

    public static void init(Context context) {
        d = context;
    }

    public static void sendLogs() {
        String str = c;
        if (str != null) {
            a(d, str, Connect.ProviderDomain.EU, null);
        }
    }

    public static void setCurrentCheckoutId(String str) {
        e = str;
    }

    public static void setLoggerMode(Mode mode) {
        i = mode;
    }

    public static void setProviderMode(Connect.ProviderMode providerMode) {
        f = providerMode;
    }

    public static void warning(String str) throws Throwable {
        a(d, e, "WARNING", str, f);
        if (f == Connect.ProviderMode.TEST) {
            Log.w(a, "WARNING: " + str);
        }
    }

    public static void sendLogs(LogSender.CompleteListener completeListener) throws Throwable {
        String str = c;
        if (str != null) {
            a(d, str, Connect.ProviderDomain.EU, completeListener);
        }
    }

    private static File c(Context context, String str) {
        if (c(context) != null) {
            return new File(c(context).getPath() + "/" + str + ".txt");
        }
        return null;
    }

    public static void error(Throwable th) throws Throwable {
        a(d, e, "ERROR", th.toString() + a(th.getStackTrace()), f);
    }

    private static boolean c(String str) {
        return a().matcher(str).matches();
    }

    private static void a(Context context, String str, String str2, String str3, Connect.ProviderMode providerMode) throws Throwable {
        if (str == null || providerMode == null || i == Mode.NONE) {
            return;
        }
        if (c == null) {
            c = a(providerMode, Long.valueOf(System.currentTimeMillis()));
        }
        a(c(context, c), a(new b(str, str2, String.valueOf(System.currentTimeMillis()), str3)));
    }

    private static void a(File file, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file, true);
                    try {
                        fileOutputStream.write(str.getBytes());
                        fileOutputStream.close();
                    } catch (Exception e2) {
                        e = e2;
                        fileOutputStream2 = fileOutputStream;
                        a(e);
                        if (fileOutputStream2 != null) {
                            fileOutputStream2.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                a(e3);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    a(e4);
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = fileOutputStream2;
        }
    }

    private static File b(Context context) {
        File file = new File(context.getFilesDir().getPath() + "/logs");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    private static void b(Context context, List<b> list, String str, Connect.ProviderDomain providerDomain, LogSender.CompleteListener completeListener) throws Throwable {
        a(context, str);
        Connect.ProviderMode providerModeA = a(str);
        long jLongValue = b(str).longValue();
        for (Map.Entry<String, List<b>> entry : a(list).entrySet()) {
            String strA = a(providerModeA, Long.valueOf(jLongValue));
            List<b> value = entry.getValue();
            Iterator<b> it = value.iterator();
            while (it.hasNext()) {
                a(c(context, strA), a(it.next()));
            }
            a(context, value, strA, providerDomain, completeListener);
            jLongValue++;
        }
    }

    private static Long b(String str) {
        return Long.valueOf(Long.parseLong(str.substring(b.intValue())));
    }

    private static String a(b bVar) {
        return bVar.a() + "\n" + bVar.b() + "\n" + bVar.d() + "\n" + bVar.c() + "\n*****\n";
    }

    private static void a(Context context, String str, Connect.ProviderDomain providerDomain, LogSender.CompleteListener completeListener) throws Throwable {
        List<b> listB = b(context, str);
        if (listB.isEmpty()) {
            return;
        }
        String strA = listB.get(0).a();
        Iterator<b> it = listB.iterator();
        while (it.hasNext()) {
            if (!strA.equals(it.next().a())) {
                b(context, listB, str, providerDomain, completeListener);
                return;
            }
        }
        a(context, listB, str, providerDomain, completeListener);
    }

    private static void a(Context context, List<b> list, String str, Connect.ProviderDomain providerDomain, LogSender.CompleteListener completeListener) {
        if (!a(context) || list.isEmpty()) {
            return;
        }
        if (str.equals(c)) {
            c = null;
        }
        Connect.ProviderMode providerModeA = a(str);
        File fileC = c(context, str);
        if (fileC != null) {
            LogSender logSender = new LogSender();
            logSender.a(completeListener);
            logSender.a(context, list, providerModeA, providerDomain, fileC);
        }
    }

    private static List<b> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        String str = "";
        String str2 = "";
        String str3 = str2;
        int i2 = 0;
        for (String str4 : strArr) {
            if (str4.equals("*****")) {
                arrayList.add(new b(str, str2, str3, sb.toString()));
                sb = new StringBuilder();
                i2 = 0;
            } else {
                if (i2 == 0) {
                    str = str4;
                } else if (i2 == 1) {
                    str2 = str4;
                } else if (i2 != 2) {
                    if (sb.length() > 0) {
                        sb.append("\n");
                    }
                    sb.append(str4);
                } else {
                    str3 = str4;
                }
                i2++;
            }
        }
        return arrayList;
    }

    private static boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    private static void a(Exception exc) {
        Log.e(a, "Error: ", exc);
    }

    private static Pattern a() {
        SoftReference<Pattern> softReference = g;
        if (softReference == null || softReference.get() == null) {
            g = new SoftReference<>(Pattern.compile("[a-zA-Z]{4}[0-9]{10,}$"));
        }
        return g.get();
    }

    private static String a(Connect.ProviderMode providerMode) {
        if (providerMode == Connect.ProviderMode.LIVE) {
            return "logL";
        }
        return "logT";
    }

    private static Connect.ProviderMode a(String str) {
        if (str.substring(0, Math.min(str.length(), b.intValue())).equals("logL")) {
            return Connect.ProviderMode.LIVE;
        }
        return Connect.ProviderMode.TEST;
    }

    private static String a(Connect.ProviderMode providerMode, Long l) {
        return a(providerMode) + l;
    }

    private static void a(Context context, String str) {
        File fileC = c(context, str);
        if (fileC == null || fileC.delete()) {
            return;
        }
        Log.e(a, "Cannot delete the log file: " + fileC);
    }

    private static HashMap<String, List<b>> a(List<b> list) {
        HashMap<String, List<b>> map = new HashMap<>();
        for (b bVar : list) {
            String strA = bVar.a();
            if (map.containsKey(strA)) {
                List<b> list2 = map.get(strA);
                if (list2 != null) {
                    list2.add(bVar);
                }
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(bVar);
                map.put(strA, arrayList);
            }
        }
        return map;
    }
}
