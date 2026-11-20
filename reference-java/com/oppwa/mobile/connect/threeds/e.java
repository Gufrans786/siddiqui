package com.oppwa.mobile.connect.threeds;

import android.content.Context;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.HashMap;

class e {
    private static final String a = "com.oppwa.mobile.connect.threeds.e";
    private static final HashMap<String, String> b = new a();

    class a extends HashMap<String, String> {
        a() {
            put("01", "[Tampered] not installed from trusted store");
            put("02", "[Tampered] internal error to get store");
            put("03", "[Tampered] invalid appSignature");
            put("04", "[Tampered] has suspicious app installed");
            put("05", "[Root] has suspicious files");
            put("06", "[Root] has suspicious apk");
            put("07", "[Root] has root permission");
            put("08", "[Root] has root tag");
            put("09", "[Root] is being hooked");
            put("10", "[Debug] Debugger attached");
        }
    }

    static void a(Context context, String str) throws Throwable {
        try {
            File fileB = b(context);
            a(fileB.getParentFile());
            a(fileB, str);
        } catch (Exception e) {
            a(e);
        }
    }

    private static File b(Context context) {
        return new File(context.getFilesDir().getPath() + "/logs/threeds.txt");
    }

    static void a(Context context) {
        try {
            b(context).delete();
        } catch (Exception e) {
            a(e);
        }
    }

    static String a(String str) {
        String str2 = b.get(str);
        return str2 != null ? str2 : "unknown description";
    }

    private static void a(File file) {
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    private static void a(File file, String str) throws Throwable {
        PrintWriter printWriter;
        try {
            printWriter = new PrintWriter(new BufferedWriter(new FileWriter(file, true)));
            try {
                printWriter.println(System.currentTimeMillis());
                printWriter.println(str);
                printWriter.close();
            } catch (Throwable th) {
                th = th;
                if (printWriter != null) {
                    printWriter.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            printWriter = null;
        }
    }

    private static void a(Exception exc) {
        Log.e(a, "Error: ", exc);
    }
}
