package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Function;
import com.google.protobuf.ByteString;

public class SQLiteGlobalsCache implements GlobalsCache {
    private static final String SESSION_TOKEN = "sessionToken";
    private final SQLitePersistence db;

    public SQLiteGlobalsCache(SQLitePersistence sQLitePersistence) {
        this.db = sQLitePersistence;
    }

    @Override
    public ByteString getSessionsToken() {
        byte[] bArr = get(SESSION_TOKEN);
        return bArr == null ? ByteString.EMPTY : ByteString.copyFrom(bArr);
    }

    @Override
    public void setSessionToken(ByteString byteString) {
        set(SESSION_TOKEN, byteString.toByteArray());
    }

    private byte[] get(String str) {
        return (byte[]) this.db.query("SELECT value FROM globals WHERE name = ?").binding(str).firstValue(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Cursor) obj).getBlob(0);
            }
        });
    }

    private void set(String str, byte[] bArr) {
        this.db.execute("INSERT OR REPLACE INTO globals (name, value) VALUES (?, ?)", str, bArr);
    }
}
