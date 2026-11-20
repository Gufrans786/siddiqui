package com.nsoftware.ipworks3ds.sdk;

public interface ClientEventListener {
    void fireDataPacketIn(byte[] bArr);

    void fireDataPacketOut(byte[] bArr);

    void fireLog(int i, String str, String str2);

    void fireSSLServerAuthentication(byte[] bArr, String str, String str2, String str3, boolean[] zArr);

    void fireSSLStatus(String str);
}
