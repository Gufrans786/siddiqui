package n.o.t.i.f.e.e;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transistorsoft.locationmanager.config.TSNotification;
import java.util.ArrayList;
import java.util.List;

public final class t implements s {
    public final RoomDatabase a;
    public final EntityInsertionAdapter<u> b;
    public final EntityDeletionOrUpdateAdapter<u> c;
    public final SharedSQLiteStatement d;
    public final SharedSQLiteStatement e;

    public class a extends EntityInsertionAdapter<u> {
        public a(t tVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, u uVar) {
            u uVar2 = uVar;
            String str = uVar2.a;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
            byte[] bArr = uVar2.b;
            if (bArr == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindBlob(2, bArr);
            }
            byte[] bArr2 = uVar2.c;
            if (bArr2 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindBlob(3, bArr2);
            }
            Boolean bool = uVar2.d;
            Integer numValueOf = bool == null ? null : Integer.valueOf(bool.booleanValue() ? 1 : 0);
            if (numValueOf == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindLong(4, numValueOf.intValue());
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `work_data` (`id`,`notification`,`trigger`,`with_alarm_manager`) VALUES (?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter<u> {
        public b(t tVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, u uVar) {
            u uVar2 = uVar;
            String str = uVar2.a;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
            byte[] bArr = uVar2.b;
            if (bArr == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindBlob(2, bArr);
            }
            byte[] bArr2 = uVar2.c;
            if (bArr2 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindBlob(3, bArr2);
            }
            Boolean bool = uVar2.d;
            Integer numValueOf = bool == null ? null : Integer.valueOf(bool.booleanValue() ? 1 : 0);
            if (numValueOf == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindLong(4, numValueOf.intValue());
            }
            String str2 = uVar2.a;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str2);
            }
        }

        @Override
        public String createQuery() {
            return "UPDATE OR REPLACE `work_data` SET `id` = ?,`notification` = ?,`trigger` = ?,`with_alarm_manager` = ? WHERE `id` = ?";
        }
    }

    public class c extends SharedSQLiteStatement {
        public c(t tVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM work_data";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(t tVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM work_data WHERE id = ?";
        }
    }

    public t(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(this, roomDatabase);
        this.c = new b(this, roomDatabase);
        this.d = new c(this, roomDatabase);
        this.e = new d(this, roomDatabase);
    }

    @Override
    public void a(u uVar) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(uVar);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void b(u uVar) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.handle(uVar);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void a(String str) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str);
        }
        this.a.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
            this.e.release(supportSQLiteStatementAcquire);
        }
    }

    @Override
    public void b() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.d.acquire();
        this.a.beginTransaction();
        try {
            supportSQLiteStatementAcquire.executeUpdateDelete();
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
            this.d.release(supportSQLiteStatementAcquire);
        }
    }

    @Override
    public u b(String str) {
        boolean z = true;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * from work_data WHERE id = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        u uVar = null;
        Boolean boolValueOf = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TSNotification.NAME);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "with_alarm_manager");
            if (cursorQuery.moveToFirst()) {
                String string = cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow);
                byte[] blob = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getBlob(columnIndexOrThrow2);
                byte[] blob2 = cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getBlob(columnIndexOrThrow3);
                Integer numValueOf = cursorQuery.isNull(columnIndexOrThrow4) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow4));
                if (numValueOf != null) {
                    if (numValueOf.intValue() == 0) {
                        z = false;
                    }
                    boolValueOf = Boolean.valueOf(z);
                }
                uVar = new u(string, blob, blob2, boolValueOf);
            }
            return uVar;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List<u> a(Boolean bool) {
        Boolean boolValueOf;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM work_data WHERE with_alarm_manager = ?", 1);
        Integer numValueOf = bool == null ? null : Integer.valueOf(bool.booleanValue() ? 1 : 0);
        if (numValueOf == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindLong(1, numValueOf.intValue());
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TSNotification.NAME);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "with_alarm_manager");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow);
                byte[] blob = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getBlob(columnIndexOrThrow2);
                byte[] blob2 = cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getBlob(columnIndexOrThrow3);
                Integer numValueOf2 = cursorQuery.isNull(columnIndexOrThrow4) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow4));
                if (numValueOf2 == null) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(numValueOf2.intValue() != 0);
                }
                arrayList.add(new u(string, blob, blob2, boolValueOf));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List<u> a() {
        Boolean boolValueOf;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM work_data", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, TSNotification.NAME);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "trigger");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "with_alarm_manager");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow);
                byte[] blob = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getBlob(columnIndexOrThrow2);
                byte[] blob2 = cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getBlob(columnIndexOrThrow3);
                Integer numValueOf = cursorQuery.isNull(columnIndexOrThrow4) ? null : Integer.valueOf(cursorQuery.getInt(columnIndexOrThrow4));
                if (numValueOf == null) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                arrayList.add(new u(string, blob, blob2, boolValueOf));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public void a(List<String> list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("DELETE FROM work_data WHERE id in (");
        StringUtil.appendPlaceholders(sbNewStringBuilder, list.size());
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        int i = 1;
        for (String str : list) {
            if (str == null) {
                supportSQLiteStatementCompileStatement.bindNull(i);
            } else {
                supportSQLiteStatementCompileStatement.bindString(i, str);
            }
            i++;
        }
        this.a.beginTransaction();
        try {
            supportSQLiteStatementCompileStatement.executeUpdateDelete();
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }
}
