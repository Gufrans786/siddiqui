package com.microsoft.codepush.react;

import com.facebook.react.animated.InterpolationAnimatedNode;
import com.google.common.net.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import org.json.JSONObject;

public class CodePushUpdateManager {
    private String mDocumentsDirectory;

    public CodePushUpdateManager(String str) {
        this.mDocumentsDirectory = str;
    }

    private String getDownloadFilePath() {
        return CodePushUtils.appendPathComponent(getCodePushPath(), CodePushConstants.DOWNLOAD_FILE_NAME);
    }

    private String getUnzippedFolderPath() {
        return CodePushUtils.appendPathComponent(getCodePushPath(), CodePushConstants.UNZIPPED_FOLDER_NAME);
    }

    private String getDocumentsDirectory() {
        return this.mDocumentsDirectory;
    }

    private String getCodePushPath() {
        String strAppendPathComponent = CodePushUtils.appendPathComponent(getDocumentsDirectory(), "CodePush");
        return CodePush.isUsingTestConfiguration() ? CodePushUtils.appendPathComponent(strAppendPathComponent, "TestPackages") : strAppendPathComponent;
    }

    private String getStatusFilePath() {
        return CodePushUtils.appendPathComponent(getCodePushPath(), CodePushConstants.STATUS_FILE);
    }

    public JSONObject getCurrentPackageInfo() {
        String statusFilePath = getStatusFilePath();
        if (!FileUtils.fileAtPathExists(statusFilePath)) {
            return new JSONObject();
        }
        try {
            return CodePushUtils.getJsonObjectFromFile(statusFilePath);
        } catch (IOException e) {
            throw new CodePushUnknownException("Error getting current package info", e);
        }
    }

    public void updateCurrentPackageInfo(JSONObject jSONObject) throws Throwable {
        try {
            CodePushUtils.writeJsonToFile(jSONObject, getStatusFilePath());
        } catch (IOException e) {
            throw new CodePushUnknownException("Error updating current package info", e);
        }
    }

    public String getCurrentPackageFolderPath() {
        String strOptString = getCurrentPackageInfo().optString(CodePushConstants.CURRENT_PACKAGE_KEY, null);
        if (strOptString == null) {
            return null;
        }
        return getPackageFolderPath(strOptString);
    }

    public String getCurrentPackageBundlePath(String str) {
        JSONObject currentPackage;
        String currentPackageFolderPath = getCurrentPackageFolderPath();
        if (currentPackageFolderPath == null || (currentPackage = getCurrentPackage()) == null) {
            return null;
        }
        String strOptString = currentPackage.optString(CodePushConstants.RELATIVE_BUNDLE_PATH_KEY, null);
        if (strOptString == null) {
            return CodePushUtils.appendPathComponent(currentPackageFolderPath, str);
        }
        return CodePushUtils.appendPathComponent(currentPackageFolderPath, strOptString);
    }

    public String getPackageFolderPath(String str) {
        return CodePushUtils.appendPathComponent(getCodePushPath(), str);
    }

    public String getCurrentPackageHash() {
        return getCurrentPackageInfo().optString(CodePushConstants.CURRENT_PACKAGE_KEY, null);
    }

    public String getPreviousPackageHash() {
        return getCurrentPackageInfo().optString(CodePushConstants.PREVIOUS_PACKAGE_KEY, null);
    }

    public JSONObject getCurrentPackage() {
        String currentPackageHash = getCurrentPackageHash();
        if (currentPackageHash == null) {
            return null;
        }
        return getPackage(currentPackageHash);
    }

    public JSONObject getPreviousPackage() {
        String previousPackageHash = getPreviousPackageHash();
        if (previousPackageHash == null) {
            return null;
        }
        return getPackage(previousPackageHash);
    }

    public JSONObject getPackage(String str) {
        try {
            return CodePushUtils.getJsonObjectFromFile(CodePushUtils.appendPathComponent(getPackageFolderPath(str), CodePushConstants.PACKAGE_FILE_NAME));
        } catch (IOException unused) {
            return null;
        }
    }

    public void downloadPackage(JSONObject jSONObject, String str, DownloadProgressCallback downloadProgressCallback, String str2) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        FileOutputStream fileOutputStream;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        BufferedOutputStream bufferedOutputStream2;
        String str3;
        String str4;
        String str5 = "Error closing IO resources.";
        String strOptString = jSONObject.optString("packageHash", null);
        String packageFolderPath = getPackageFolderPath(strOptString);
        String strAppendPathComponent = CodePushUtils.appendPathComponent(packageFolderPath, CodePushConstants.PACKAGE_FILE_NAME);
        if (FileUtils.fileAtPathExists(packageFolderPath)) {
            FileUtils.deleteDirectoryAtPath(packageFolderPath);
        }
        String strOptString2 = jSONObject.optString(CodePushConstants.DOWNLOAD_URL_KEY, null);
        try {
            httpURLConnection = (HttpURLConnection) new URL(strOptString2).openConnection();
            try {
                httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, InterpolationAnimatedNode.EXTRAPOLATE_TYPE_IDENTITY);
                bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                try {
                    long contentLength = httpURLConnection.getContentLength();
                    File file = new File(getCodePushPath());
                    file.mkdirs();
                    File file2 = new File(file, CodePushConstants.DOWNLOAD_FILE_NAME);
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream2, 262144);
                        fileOutputStream = fileOutputStream2;
                        try {
                            byte[] bArr = new byte[262144];
                            httpURLConnection = httpURLConnection;
                            try {
                                byte[] bArr2 = new byte[4];
                                long j = 0;
                                while (true) {
                                    str3 = str5;
                                    strOptString2 = strOptString2;
                                    try {
                                        try {
                                            int i = bufferedInputStream.read(bArr, 0, 262144);
                                            if (i < 0) {
                                                break;
                                            }
                                            if (j < 4) {
                                                int i2 = 0;
                                                while (i2 < i) {
                                                    int i3 = ((int) j) + i2;
                                                    int i4 = i2;
                                                    if (i3 >= 4) {
                                                        break;
                                                    }
                                                    try {
                                                        bArr2[i3] = bArr[i4];
                                                        i2 = i4 + 1;
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        bufferedOutputStream = bufferedOutputStream2;
                                                        str5 = str3;
                                                    }
                                                }
                                            }
                                            j += (long) i;
                                            bufferedOutputStream2.write(bArr, 0, i);
                                            downloadProgressCallback.call(new DownloadProgress(contentLength, j));
                                            str5 = str3;
                                            strOptString2 = strOptString2;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            str5 = str3;
                                        }
                                    } catch (MalformedURLException e) {
                                        e = e;
                                        str5 = str3;
                                    }
                                    bufferedOutputStream = bufferedOutputStream2;
                                    if (bufferedOutputStream != null) {
                                        try {
                                            bufferedOutputStream.close();
                                        } catch (IOException e2) {
                                            throw new CodePushUnknownException(str5, e2);
                                        }
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    throw th;
                                }
                                if (contentLength != j) {
                                    str5 = str3;
                                    try {
                                        throw new CodePushUnknownException("Received " + j + " bytes, expected " + contentLength);
                                    } catch (MalformedURLException e3) {
                                        e = e3;
                                        httpURLConnection2 = httpURLConnection;
                                        try {
                                            throw new CodePushMalformedDataException(strOptString2, e);
                                        } catch (Throwable th3) {
                                            th = th3;
                                            httpURLConnection = httpURLConnection2;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                    }
                                } else {
                                    boolean z = ByteBuffer.wrap(bArr2).getInt() == 1347093252;
                                    try {
                                        bufferedOutputStream2.close();
                                        fileOutputStream.close();
                                        bufferedInputStream.close();
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        if (z) {
                                            String unzippedFolderPath = getUnzippedFolderPath();
                                            FileUtils.unzipFile(file2, unzippedFolderPath);
                                            FileUtils.deleteFileOrFolderSilently(file2);
                                            String strAppendPathComponent2 = CodePushUtils.appendPathComponent(unzippedFolderPath, CodePushConstants.DIFF_MANIFEST_FILE_NAME);
                                            boolean zFileAtPathExists = FileUtils.fileAtPathExists(strAppendPathComponent2);
                                            if (zFileAtPathExists) {
                                                str4 = packageFolderPath;
                                                CodePushUpdateUtils.copyNecessaryFilesFromCurrentPackage(strAppendPathComponent2, getCurrentPackageFolderPath(), str4);
                                                new File(strAppendPathComponent2).delete();
                                            } else {
                                                str4 = packageFolderPath;
                                            }
                                            FileUtils.copyDirectoryContents(unzippedFolderPath, str4);
                                            FileUtils.deleteFileAtPathSilently(unzippedFolderPath);
                                            String strFindJSBundleInUpdateContents = CodePushUpdateUtils.findJSBundleInUpdateContents(str4, str);
                                            if (strFindJSBundleInUpdateContents == null) {
                                                throw new CodePushInvalidUpdateException("Update is invalid - A JS bundle file named \"" + str + "\" could not be found within the downloaded contents. Please check that you are releasing your CodePush updates using the exact same JS bundle file name that was shipped with your app's binary.");
                                            }
                                            if (FileUtils.fileAtPathExists(strAppendPathComponent)) {
                                                new File(strAppendPathComponent).delete();
                                            }
                                            if (zFileAtPathExists) {
                                                CodePushUtils.log("Applying diff update.");
                                            } else {
                                                CodePushUtils.log("Applying full update.");
                                            }
                                            boolean z2 = str2 != null;
                                            boolean zFileAtPathExists2 = FileUtils.fileAtPathExists(CodePushUpdateUtils.getSignatureFilePath(str4));
                                            if (z2) {
                                                if (zFileAtPathExists2) {
                                                    CodePushUpdateUtils.verifyFolderHash(str4, strOptString);
                                                    CodePushUpdateUtils.verifyUpdateSignature(str4, strOptString, str2);
                                                } else {
                                                    throw new CodePushInvalidUpdateException("Error! Public key was provided but there is no JWT signature within app bundle to verify. Possible reasons, why that might happen: \n1. You've been released CodePush bundle update using version of CodePush CLI that is not support code signing.\n2. You've been released CodePush bundle update without providing --privateKeyPath option.");
                                                }
                                            } else if (zFileAtPathExists2) {
                                                CodePushUtils.log("Warning! JWT signature exists in codepush update but code integrity check couldn't be performed because there is no public key configured. Please ensure that public key is properly configured within your application.");
                                                CodePushUpdateUtils.verifyFolderHash(str4, strOptString);
                                            } else if (zFileAtPathExists) {
                                                CodePushUpdateUtils.verifyFolderHash(str4, strOptString);
                                            }
                                            CodePushUtils.setJSONValueForKey(jSONObject, CodePushConstants.RELATIVE_BUNDLE_PATH_KEY, strFindJSBundleInUpdateContents);
                                        } else {
                                            FileUtils.moveFile(file2, packageFolderPath, str);
                                        }
                                        CodePushUtils.writeJsonToFile(jSONObject, strAppendPathComponent);
                                        return;
                                    } catch (IOException e4) {
                                        throw new CodePushUnknownException(str3, e4);
                                    }
                                }
                            } catch (MalformedURLException e5) {
                                e = e5;
                                str5 = "Error closing IO resources.";
                                strOptString2 = strOptString2;
                            } catch (Throwable th5) {
                                th = th5;
                                str5 = "Error closing IO resources.";
                            }
                        } catch (MalformedURLException e6) {
                            e = e6;
                            str5 = "Error closing IO resources.";
                            strOptString2 = strOptString2;
                            httpURLConnection = httpURLConnection;
                        } catch (Throwable th6) {
                            th = th6;
                            str5 = "Error closing IO resources.";
                            httpURLConnection = httpURLConnection;
                        }
                    } catch (MalformedURLException e7) {
                        e = e7;
                        str5 = "Error closing IO resources.";
                        fileOutputStream = fileOutputStream2;
                        strOptString2 = strOptString2;
                        httpURLConnection2 = httpURLConnection;
                        bufferedOutputStream2 = null;
                    } catch (Throwable th7) {
                        th = th7;
                        str5 = "Error closing IO resources.";
                        fileOutputStream = fileOutputStream2;
                        httpURLConnection = httpURLConnection;
                        bufferedOutputStream = null;
                    }
                } catch (MalformedURLException e8) {
                    e = e8;
                    str5 = "Error closing IO resources.";
                    strOptString2 = strOptString2;
                    httpURLConnection2 = httpURLConnection;
                    bufferedOutputStream2 = null;
                    fileOutputStream = null;
                    throw new CodePushMalformedDataException(strOptString2, e);
                } catch (Throwable th8) {
                    th = th8;
                    bufferedOutputStream = null;
                    fileOutputStream = null;
                }
            } catch (MalformedURLException e9) {
                e = e9;
                httpURLConnection2 = httpURLConnection;
                bufferedInputStream = null;
                bufferedOutputStream2 = null;
                fileOutputStream = null;
                throw new CodePushMalformedDataException(strOptString2, e);
            } catch (Throwable th9) {
                th = th9;
                bufferedOutputStream = null;
                bufferedInputStream = null;
            }
        } catch (MalformedURLException e10) {
            e = e10;
            httpURLConnection2 = null;
        } catch (Throwable th10) {
            th = th10;
            str5 = "Error closing IO resources.";
            bufferedOutputStream = null;
            bufferedInputStream = null;
            fileOutputStream = null;
            httpURLConnection = null;
        }
        bufferedOutputStream = bufferedOutputStream2;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.close();
        }
        if (fileOutputStream != null) {
            fileOutputStream.close();
        }
        if (bufferedInputStream != null) {
            bufferedInputStream.close();
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        throw th;
    }

    public void installPackage(JSONObject jSONObject, boolean z) {
        String strOptString = jSONObject.optString("packageHash", null);
        JSONObject currentPackageInfo = getCurrentPackageInfo();
        String strOptString2 = currentPackageInfo.optString(CodePushConstants.CURRENT_PACKAGE_KEY, null);
        if (strOptString == null || !strOptString.equals(strOptString2)) {
            if (z) {
                String currentPackageFolderPath = getCurrentPackageFolderPath();
                if (currentPackageFolderPath != null) {
                    FileUtils.deleteDirectoryAtPath(currentPackageFolderPath);
                }
            } else {
                String previousPackageHash = getPreviousPackageHash();
                if (previousPackageHash != null && !previousPackageHash.equals(strOptString)) {
                    FileUtils.deleteDirectoryAtPath(getPackageFolderPath(previousPackageHash));
                }
                CodePushUtils.setJSONValueForKey(currentPackageInfo, CodePushConstants.PREVIOUS_PACKAGE_KEY, currentPackageInfo.optString(CodePushConstants.CURRENT_PACKAGE_KEY, null));
            }
            CodePushUtils.setJSONValueForKey(currentPackageInfo, CodePushConstants.CURRENT_PACKAGE_KEY, strOptString);
            updateCurrentPackageInfo(currentPackageInfo);
        }
    }

    public void rollbackPackage() throws Throwable {
        JSONObject currentPackageInfo = getCurrentPackageInfo();
        FileUtils.deleteDirectoryAtPath(getCurrentPackageFolderPath());
        CodePushUtils.setJSONValueForKey(currentPackageInfo, CodePushConstants.CURRENT_PACKAGE_KEY, currentPackageInfo.optString(CodePushConstants.PREVIOUS_PACKAGE_KEY, null));
        CodePushUtils.setJSONValueForKey(currentPackageInfo, CodePushConstants.PREVIOUS_PACKAGE_KEY, null);
        updateCurrentPackageInfo(currentPackageInfo);
    }

    public void downloadAndReplaceCurrentBundle(String str, String str2) throws IOException {
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        Object obj;
        BufferedOutputStream bufferedOutputStream;
        Object obj2;
        MalformedURLException e;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                    try {
                        File file = new File(getCurrentPackageBundlePath(str2));
                        file.delete();
                        str2 = new FileOutputStream(file);
                        try {
                            BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(str2, 262144);
                            try {
                                byte[] bArr = new byte[262144];
                                while (true) {
                                    int i = bufferedInputStream.read(bArr, 0, 262144);
                                    if (i >= 0) {
                                        bufferedOutputStream3.write(bArr, 0, i);
                                    } else {
                                        try {
                                            break;
                                        } catch (IOException e2) {
                                            throw new CodePushUnknownException("Error closing IO resources.", e2);
                                        }
                                    }
                                }
                                bufferedOutputStream3.close();
                                str2.close();
                                bufferedInputStream.close();
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                            } catch (MalformedURLException e3) {
                                e = e3;
                                throw new CodePushMalformedDataException(str, e);
                            }
                        } catch (MalformedURLException e4) {
                            e = e4;
                        } catch (Throwable th) {
                            th = th;
                            if (bufferedOutputStream2 != null) {
                                try {
                                    bufferedOutputStream2.close();
                                } catch (IOException e5) {
                                    throw new CodePushUnknownException("Error closing IO resources.", e5);
                                }
                            }
                            if (str2 != 0) {
                                str2.close();
                            }
                            if (bufferedInputStream != null) {
                                bufferedInputStream.close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            throw th;
                        }
                    } catch (MalformedURLException e6) {
                        e = e6;
                        obj2 = null;
                        e = e;
                        throw new CodePushMalformedDataException(str, e);
                    } catch (Throwable th2) {
                        th = th2;
                        str2 = 0;
                    }
                } catch (MalformedURLException e7) {
                    e = e7;
                    obj = null;
                    obj2 = obj;
                    e = e;
                    throw new CodePushMalformedDataException(str, e);
                } catch (Throwable th3) {
                    th = th3;
                    str2 = 0;
                    bufferedInputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream2 = bufferedOutputStream;
            }
        } catch (MalformedURLException e8) {
            e = e8;
            obj = null;
        } catch (Throwable th5) {
            th = th5;
            str2 = 0;
            httpURLConnection = null;
            bufferedInputStream = null;
        }
    }

    public void clearUpdates() {
        FileUtils.deleteDirectoryAtPath(getCodePushPath());
    }
}
