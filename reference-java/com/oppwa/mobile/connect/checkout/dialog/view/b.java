package com.oppwa.mobile.connect.checkout.dialog.view;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;

class b {
    private static final HashMap<String, Typeface> a = new HashMap<>();

    private static Typeface a(Context context, String str) {
        if (str == null) {
            return null;
        }
        try {
            Typeface typefaceCreateFromAsset = Typeface.createFromAsset(context.getAssets(), String.format("fonts/%s.ttf", str));
            a.put(str, typefaceCreateFromAsset);
            return typefaceCreateFromAsset;
        } catch (Exception unused) {
            return null;
        }
    }

    static Typeface b(Context context, String str) {
        HashMap<String, Typeface> map = a;
        return map.containsKey(str) ? map.get(str) : a(context, str);
    }
}
