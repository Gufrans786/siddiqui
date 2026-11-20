package app.notifee.core.database;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Executors;
import n.o.t.i.f.e.e.s;

public abstract class NotifeeCoreDatabase extends RoomDatabase {
    public static volatile NotifeeCoreDatabase a;
    public static final ListeningExecutorService b = MoreExecutors.listeningDecorator(Executors.newCachedThreadPool());
    public static final Migration c = new a(1, 2);

    public class a extends Migration {
        public a(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("ALTER TABLE work_data ADD COLUMN with_alarm_manager INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static NotifeeCoreDatabase a(Context context) {
        if (a == null) {
            synchronized (NotifeeCoreDatabase.class) {
                if (a == null) {
                    a = (NotifeeCoreDatabase) Room.databaseBuilder(context.getApplicationContext(), NotifeeCoreDatabase.class, "notifee_core_database").addMigrations(c).build();
                }
            }
        }
        return a;
    }

    public abstract s a();
}
