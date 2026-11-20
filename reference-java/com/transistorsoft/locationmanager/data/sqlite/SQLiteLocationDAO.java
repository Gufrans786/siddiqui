package com.transistorsoft.locationmanager.data.sqlite;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.adapter.callback.TSBeforeInsertBlock;
import com.transistorsoft.locationmanager.data.LocationDAO;
import com.transistorsoft.locationmanager.data.LocationModel;
import com.transistorsoft.locationmanager.location.TSLocation;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import sa.lg.android.locate.BuildConfig;

public class SQLiteLocationDAO implements LocationDAO {
    private static SQLiteLocationDAO c = null;
    private static final String d = "id";
    private static final String e = "timestamp";
    private static final String f = "uuid";
    private static final String g = "data";
    private static final String h = "locked";
    private static final String i = "encrypted";
    private Context a;
    private TSBeforeInsertBlock b;

    public SQLiteLocationDAO(Context context) {
        this.a = context;
        a();
    }

    private static synchronized SQLiteLocationDAO a(Context context) {
        if (c == null) {
            c = new SQLiteLocationDAO(context.getApplicationContext());
        }
        return c;
    }

    public static SQLiteLocationDAO getInstance(Context context) {
        if (c == null) {
            c = a(context);
        }
        return c;
    }

    @Override
    public List<LocationModel> all() {
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return arrayList;
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabaseA.query(false, "locations", null, null, null, null, null, "id " + TSConfig.getInstance(this.a).getLocationsOrderDirection(), null);
            while (cursorQuery.moveToNext()) {
                LocationModel locationModelA = a(cursorQuery);
                if (locationModelA != null) {
                    arrayList.add(locationModelA);
                }
            }
            cursorQuery.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    @Override
    public List<LocationModel> allWithLocking(Integer num) {
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return arrayList;
        }
        Cursor cursor = null;
        try {
            Cursor cursorQuery = sQLiteDatabaseA.query(false, "locations", null, "locked=0", null, null, null, "id " + TSConfig.getInstance(this.a).getLocationsOrderDirection(), num.intValue() > 0 ? num.toString() : null);
            try {
                ArrayList arrayList2 = new ArrayList();
                while (cursorQuery.moveToNext()) {
                    LocationModel locationModelA = a(cursorQuery);
                    arrayList2.add(Integer.valueOf(cursorQuery.getInt(0)));
                    if (locationModelA != null) {
                        arrayList.add(locationModelA);
                    }
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put(h, (Integer) 1);
                TSLog.logger.debug(TSLog.ok("Locked " + sQLiteDatabaseA.update("locations", contentValues, "id IN (" + TextUtils.join(",", arrayList2) + ")", null) + " records"));
                cursorQuery.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override
    public boolean clear() {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return false;
        }
        sQLiteDatabaseA.beginTransaction();
        sQLiteDatabaseA.delete("locations", null, null);
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
        return true;
    }

    @Override
    public void close() {
        TSLog.logger.info(TSLog.ok("Closed database"));
    }

    public int count(boolean z) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return -1;
        }
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabaseA.rawQuery(z ? "SELECT count(*) FROM locations WHERE locked=0" : "SELECT count(*) FROM locations", null);
            cursorRawQuery.moveToFirst();
            int i2 = cursorRawQuery.getInt(0);
            cursorRawQuery.close();
            return i2;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    @Override
    public boolean destroy(LocationModel locationModel) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return false;
        }
        sQLiteDatabaseA.beginTransaction();
        int iDelete = sQLiteDatabaseA.delete("locations", "id=?", new String[]{locationModel.id.toString()});
        if (iDelete == 1) {
            TSLog.logger.debug(TSLog.ok("DESTROY: " + locationModel.getUUID()));
        } else {
            TSLog.logger.error(TSLog.error("DESTROY FAILURE: " + locationModel.getUUID()));
        }
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
        return iDelete == 1;
    }

    @Override
    public void destroyAll(List<LocationModel> list) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<LocationModel> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().id);
        }
        sQLiteDatabaseA.beginTransaction();
        int iDelete = sQLiteDatabaseA.delete("locations", "id IN (" + TextUtils.join(",", arrayList) + ")", null);
        Integer numValueOf = Integer.valueOf(iDelete);
        if (iDelete == list.size()) {
            TSLog.logger.debug(TSLog.ok("DELETED: (" + numValueOf + ")"));
            Iterator<LocationModel> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().destroyed = true;
            }
        } else {
            TSLog.logger.error(TSLog.error("DELETE FAILURE (" + numValueOf + ")"));
        }
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
    }

    @Override
    public LocationModel first() {
        SQLiteDatabase sQLiteDatabaseA = a();
        Cursor cursor = null;
        if (sQLiteDatabaseA == null) {
            return null;
        }
        try {
            Cursor cursorQuery = sQLiteDatabaseA.query(false, "locations", null, "locked=0", null, null, null, "id " + TSConfig.getInstance(this.a).getLocationsOrderDirection(), BuildConfig.IOS_VERSION_CODE);
            try {
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return null;
                }
                LocationModel locationModelA = a(cursorQuery);
                int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("id"));
                ContentValues contentValues = new ContentValues();
                contentValues.put(h, (Integer) 1);
                TSLog.logger.debug(TSLog.ok("Locked " + sQLiteDatabaseA.update("locations", contentValues, "id=" + i2, null) + " records"));
                if (locationModelA != null) {
                    cursorQuery.close();
                    return locationModelA;
                }
                LocationModel locationModelFirst = first();
                cursorQuery.close();
                return locationModelFirst;
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override
    public boolean persist(TSLocation tSLocation) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return false;
        }
        try {
            ContentValues contentValuesA = a(tSLocation);
            if (contentValuesA == null) {
                return false;
            }
            sQLiteDatabaseA.beginTransaction();
            long jInsert = sQLiteDatabaseA.insert("locations", null, contentValuesA);
            TSLog.logger.info(TSLog.ok("INSERT: " + tSLocation.getUUID()));
            sQLiteDatabaseA.setTransactionSuccessful();
            sQLiteDatabaseA.endTransaction();
            if (jInsert <= -1) {
                TSLog.logger.error(TSLog.error("SQLiteLocationDAO persist failed: " + jInsert));
                return false;
            }
            int iIntValue = TSConfig.getInstance(this.a).getMaxRecordsToPersist().intValue();
            if (iIntValue < 0) {
                return true;
            }
            shrink(iIntValue);
            return true;
        } catch (Exception e2) {
            TSLog.logger.error(TSLog.error("Persistence failure: " + e2.getMessage()), (Throwable) e2);
            e2.printStackTrace();
            return false;
        }
    }

    @Override
    public void prune(int i2) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return;
        }
        sQLiteDatabaseA.beginTransaction();
        TSLog.logger.debug(TSLog.info("PRUNE -" + i2 + " days"));
        sQLiteDatabaseA.delete("locations", "datetime(timestamp) < datetime('now', '-" + i2 + " day')", null);
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
    }

    public void setBeforeInsertBlock(TSBeforeInsertBlock tSBeforeInsertBlock) {
        this.b = tSBeforeInsertBlock;
    }

    public void shrink(int i2) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return;
        }
        sQLiteDatabaseA.beginTransaction();
        TSLog.logger.debug(TSLog.info("SHRINK: " + i2));
        sQLiteDatabaseA.delete("locations", "id <= (SELECT id FROM (SELECT id FROM locations ORDER BY id DESC LIMIT 1 OFFSET " + i2 + ") foo)", null);
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
    }

    @Override
    public boolean unlock(LocationModel locationModel) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return false;
        }
        sQLiteDatabaseA.beginTransaction();
        ContentValues contentValues = new ContentValues();
        contentValues.put(h, (Integer) 0);
        int iUpdate = sQLiteDatabaseA.update("locations", contentValues, "id=?", new String[]{locationModel.id.toString()});
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
        TSLog.logger.debug(TSLog.ok("UNLOCKED: " + locationModel.getUUID()));
        return iUpdate == 1;
    }

    private SQLiteDatabase a() {
        try {
            return LocationOpenHelper.getInstance(this.a).getWritableDatabase();
        } catch (SQLiteCantOpenDatabaseException e2) {
            TSLog.logger.error(TSLog.error("Failed to open SQLite database"), (Throwable) e2);
            e2.printStackTrace();
            return null;
        }
    }

    private LocationModel a(Cursor cursor) {
        try {
            return new LocationModel(this, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("id"))), cursor.getString(cursor.getColumnIndexOrThrow(f)), cursor.getString(cursor.getColumnIndexOrThrow(e)), new String(cursor.getBlob(cursor.getColumnIndexOrThrow("data"))));
        } catch (Exception e2) {
            TSLog.logger.error(TSLog.error("Failed to hydrate Location record from database: " + e2.getMessage()), (Throwable) e2);
            return null;
        }
    }

    private ContentValues a(JSONObject jSONObject) {
        TSConfig.getInstance(this.a);
        ContentValues contentValues = new ContentValues();
        try {
            contentValues.put("data", jSONObject.toString().getBytes());
            contentValues.put(i, (Integer) 0);
            contentValues.put(e, jSONObject.getString(e));
            contentValues.put(h, (Integer) 0);
            return contentValues;
        } catch (JSONException e2) {
            TSLog.logger.error(TSLog.error(e2.getMessage()), (Throwable) e2);
            return contentValues;
        }
    }

    @Override
    public boolean unlock(List<LocationModel> list) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<LocationModel> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().id);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(h, (Integer) 0);
        sQLiteDatabaseA.beginTransaction();
        int iUpdate = sQLiteDatabaseA.update("locations", contentValues, "id IN (" + TextUtils.join(",", arrayList) + ")", null);
        boolean z = iUpdate == list.size();
        if (z) {
            TSLog.logger.debug(TSLog.ok("UNLOCKED (" + iUpdate + ")"));
        } else {
            TSLog.logger.error(TSLog.error("UNLOCK FAILURE (" + iUpdate + ")"));
        }
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
        return z;
    }

    public boolean destroy(String str) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return false;
        }
        sQLiteDatabaseA.beginTransaction();
        int iDelete = sQLiteDatabaseA.delete("locations", "uuid=?", new String[]{str});
        if (iDelete == 1) {
            TSLog.logger.debug(TSLog.ok("DESTROY: " + str));
        } else {
            TSLog.logger.error(TSLog.error("DESTROY FAILURE: " + str));
        }
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
        return iDelete == 1;
    }

    private ContentValues a(TSLocation tSLocation) throws Exception {
        String string;
        TSConfig.getInstance(this.a);
        TSBeforeInsertBlock tSBeforeInsertBlock = this.b;
        if (tSBeforeInsertBlock != null) {
            JSONObject jSONObjectOnBeforeInsert = tSBeforeInsertBlock.onBeforeInsert(tSLocation);
            if (jSONObjectOnBeforeInsert == null) {
                return null;
            }
            string = jSONObjectOnBeforeInsert.toString();
        } else {
            string = tSLocation.renderJson(this.a).toString();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("data", string.getBytes());
        contentValues.put(i, (Integer) 0);
        contentValues.put(f, tSLocation.getUUID());
        contentValues.put(e, tSLocation.getTimestamp());
        contentValues.put(h, (Integer) 0);
        return contentValues;
    }

    @Override
    public int count() {
        return count(false);
    }

    @Override
    public String persist(JSONObject jSONObject) {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return null;
        }
        String strValueOf = String.valueOf(UUID.randomUUID());
        if (!jSONObject.has(f)) {
            try {
                jSONObject.put(f, strValueOf);
            } catch (JSONException e2) {
                TSLog.logger.error(TSLog.error("Failed to set uuid on Location"), (Throwable) e2);
                return null;
            }
        } else {
            try {
                strValueOf = jSONObject.getString(f);
            } catch (JSONException e3) {
                TSLog.logger.error(TSLog.error("Failed to fetch uuid from Location"), (Throwable) e3);
                return null;
            }
        }
        ContentValues contentValuesA = a(jSONObject);
        sQLiteDatabaseA.beginTransaction();
        long jInsert = sQLiteDatabaseA.insert("locations", null, contentValuesA);
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
        if (jInsert > -1) {
            TSLog.logger.info(TSLog.ok("INSERT: " + strValueOf));
            int iIntValue = TSConfig.getInstance(this.a).getMaxRecordsToPersist().intValue();
            if (iIntValue >= 0) {
                shrink(iIntValue);
            }
            return strValueOf;
        }
        TSLog.logger.error(TSLog.error("SQLiteLocationDAO persist failed: " + jInsert));
        return null;
    }

    @Override
    public boolean unlock() {
        SQLiteDatabase sQLiteDatabaseA = a();
        if (sQLiteDatabaseA == null) {
            return false;
        }
        sQLiteDatabaseA.beginTransaction();
        ContentValues contentValues = new ContentValues();
        contentValues.put(h, (Integer) 0);
        int iUpdate = sQLiteDatabaseA.update("locations", contentValues, null, null);
        sQLiteDatabaseA.setTransactionSuccessful();
        sQLiteDatabaseA.endTransaction();
        return iUpdate == 1;
    }
}
