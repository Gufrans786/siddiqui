package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.oppwa.mobile.connect.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

class p {
    private static final String a = "com.oppwa.mobile.connect.checkout.dialog.p";

    static void a(Context context, String str, Bitmap bitmap) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(a(a(context), str));
                    try {
                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        fileOutputStream.close();
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream2 = fileOutputStream;
                        Logger.error(e.getMessage());
                        if (fileOutputStream2 != null) {
                            fileOutputStream2.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e2) {
                                Logger.error(e2.getMessage());
                            }
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
            }
        } catch (IOException e4) {
            Logger.error(e4.getMessage());
        }
    }

    static Bitmap b(Context context, String str) throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        File fileA = a(context);
        FileInputStream fileInputStream2 = null;
        if (fileA == null) {
            return null;
        }
        try {
            if (a(a(context, str))) {
                try {
                    fileInputStream = new FileInputStream(a(fileA, str));
                    try {
                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream);
                        fileInputStream.close();
                        return bitmapDecodeStream;
                    } catch (Exception e) {
                        e = e;
                        try {
                            Logger.error(e.getMessage());
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream2 = fileInputStream;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e2) {
                                    Logger.error(e2.getMessage());
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileInputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } else {
                File file = new File(a(fileA, str));
                if (file.exists() && !file.delete()) {
                    Log.d(a, "Cannot delete file");
                }
            }
        } catch (Exception e4) {
            Logger.error(e4.getMessage());
        }
        return null;
    }

    private static long a(Context context, String str) {
        File file = new File(a(context) + "/" + str + ".png");
        if (!file.exists()) {
            return 0L;
        }
        Log.d(a, "Check creation date " + str);
        return new Date(file.lastModified()).getTime();
    }

    private static boolean a(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        if (jCurrentTimeMillis >= 1209600000) {
            return false;
        }
        Log.d(a, "Prepare to delete " + jCurrentTimeMillis);
        return true;
    }

    private static File a(Context context) {
        return context.getFilesDir();
    }

    private static String a(File file, String str) {
        return file.getPath() + "/" + str + ".png";
    }
}
