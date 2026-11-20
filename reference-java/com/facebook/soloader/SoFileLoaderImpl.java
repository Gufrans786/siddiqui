package com.facebook.soloader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.Nullable;

public class SoFileLoaderImpl implements SoFileLoader {
    private static final String TAG = "SoFileLoaderImpl";

    @Nullable
    private final Runtime mRuntime = null;

    @Nullable
    private final Method mNativeLoadRuntimeMethod = null;

    @Nullable
    private final String mLocalLdLibraryPath = null;

    @Nullable
    private final String mLocalLdLibraryPathNoZips = null;

    @Override
    public void loadBytes(String str, ElfByteChannel elfByteChannel, int i) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void load(java.lang.String r8, int r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.SoFileLoaderImpl.load(java.lang.String, int):void");
    }

    private String getLibHash(String str) {
        try {
            File file = new File(str);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i > 0) {
                        messageDigest.update(bArr, 0, i);
                    } else {
                        String str2 = String.format("%32x", new BigInteger(1, messageDigest.digest()));
                        fileInputStream.close();
                        return str2;
                    }
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | SecurityException | NoSuchAlgorithmException e) {
            return e.toString();
        }
    }
}
