package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.oppwa.mobile.connect.utils.Logger;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

class l {
    private static final String a = "com.oppwa.mobile.connect.checkout.dialog.l";

    static int a(Context context, String str) {
        return context.getResources().getIdentifier(str.toLowerCase(), "drawable", context.getPackageName());
    }

    static String b(Context context, String str) {
        int iC = c(context, str);
        return iC != 0 ? context.getString(iC) : f0.a(str);
    }

    static int c(Context context, String str) {
        return context.getResources().getIdentifier(str.toLowerCase(), TypedValues.Custom.S_STRING, context.getPackageName());
    }

    static String a(Context context, int i) {
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
        if (inputStreamOpenRawResource == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    } catch (IOException e) {
                        Log.e(a, e.getMessage());
                    }
                } catch (Throwable th) {
                    try {
                        inputStreamOpenRawResource.close();
                    } catch (IOException e2) {
                        Log.e(a, e2.getMessage());
                    }
                    throw th;
                }
            } catch (IOException e3) {
                Logger.error(e3.getMessage());
                inputStreamOpenRawResource.close();
            }
        }
        inputStreamOpenRawResource.close();
        return sb.toString();
    }
}
