package androidx.datastore.core.okio;

import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.Storage;
import androidx.datastore.core.StorageConnection;
import androidx.exifinterface.media.ExifInterface;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import okio.Path;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u0015*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0015BE\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u001a\b\u0002\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\b\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\f¢\u0006\u0002\u0010\rJ\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0016R\u001b\u0010\u000e\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Landroidx/datastore/core/okio/OkioStorage;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/Storage;", "fileSystem", "Lokio/FileSystem;", "serializer", "Landroidx/datastore/core/okio/OkioSerializer;", "coordinatorProducer", "Lkotlin/Function2;", "Lokio/Path;", "Landroidx/datastore/core/InterProcessCoordinator;", "producePath", "Lkotlin/Function0;", "(Lokio/FileSystem;Landroidx/datastore/core/okio/OkioSerializer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V", "canonicalPath", "getCanonicalPath", "()Lokio/Path;", "canonicalPath$delegate", "Lkotlin/Lazy;", "createConnection", "Landroidx/datastore/core/StorageConnection;", "Companion", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OkioStorage<T> implements Storage<T> {

    public static final Companion INSTANCE = new Companion(null);
    private static final Set<String> activeFiles = new LinkedHashSet();
    private static final Synchronizer activeFilesLock = new Synchronizer();

    private final Lazy canonicalPath;
    private final Function2<Path, FileSystem, InterProcessCoordinator> coordinatorProducer;
    private final FileSystem fileSystem;
    private final Function0<Path> producePath;
    private final OkioSerializer<T> serializer;

    public OkioStorage(FileSystem fileSystem, OkioSerializer<T> serializer, Function2<? super Path, ? super FileSystem, ? extends InterProcessCoordinator> coordinatorProducer, Function0<Path> producePath) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(coordinatorProducer, "coordinatorProducer");
        Intrinsics.checkNotNullParameter(producePath, "producePath");
        this.fileSystem = fileSystem;
        this.serializer = serializer;
        this.coordinatorProducer = coordinatorProducer;
        this.producePath = producePath;
        this.canonicalPath = LazyKt.lazy(new Function0<Path>(this) {
            final OkioStorage<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public final Path invoke() {
                Path path = (Path) ((OkioStorage) this.this$0).producePath.invoke();
                boolean zIsAbsolute = path.isAbsolute();
                OkioStorage<T> okioStorage = this.this$0;
                if (!zIsAbsolute) {
                    throw new IllegalStateException(("OkioStorage requires absolute paths, but did not get an absolute path from producePath = " + ((OkioStorage) okioStorage).producePath + ", instead got " + path).toString());
                }
                return path.normalized();
            }
        });
    }

    public OkioStorage(FileSystem fileSystem, OkioSerializer okioSerializer, AnonymousClass1 anonymousClass1, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(fileSystem, okioSerializer, (i & 4) != 0 ? new Function2<Path, FileSystem, InterProcessCoordinator>() {
            @Override
            public final InterProcessCoordinator invoke(Path path, FileSystem fileSystem2) {
                Intrinsics.checkNotNullParameter(path, "path");
                Intrinsics.checkNotNullParameter(fileSystem2, "<anonymous parameter 1>");
                return OkioStorageKt.createSingleProcessCoordinator(path);
            }
        } : anonymousClass1, function0);
    }

    public final Path getCanonicalPath() {
        return (Path) this.canonicalPath.getValue();
    }

    @Override
    public StorageConnection<T> createConnection() {
        String string = getCanonicalPath().toString();
        synchronized (activeFilesLock) {
            Set<String> set = activeFiles;
            if (set.contains(string)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + string + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            set.add(string);
        }
        return new OkioStorageConnection(this.fileSystem, getCanonicalPath(), this.serializer, this.coordinatorProducer.invoke(getCanonicalPath(), this.fileSystem), new Function0<Unit>(this) {
            final OkioStorage<T> this$0;

            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            public final void invoke2() {
                Synchronizer activeFilesLock2 = OkioStorage.INSTANCE.getActiveFilesLock();
                OkioStorage<T> okioStorage = this.this$0;
                synchronized (activeFilesLock2) {
                    OkioStorage.INSTANCE.getActiveFiles$datastore_core_okio().remove(okioStorage.getCanonicalPath().toString());
                    Unit unit = Unit.INSTANCE;
                }
            }
        });
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/datastore/core/okio/OkioStorage$Companion;", "", "()V", "activeFiles", "", "", "getActiveFiles$datastore_core_okio", "()Ljava/util/Set;", "activeFilesLock", "Landroidx/datastore/core/okio/Synchronizer;", "getActiveFilesLock", "()Landroidx/datastore/core/okio/Synchronizer;", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Set<String> getActiveFiles$datastore_core_okio() {
            return OkioStorage.activeFiles;
        }

        public final Synchronizer getActiveFilesLock() {
            return OkioStorage.activeFilesLock;
        }
    }
}
