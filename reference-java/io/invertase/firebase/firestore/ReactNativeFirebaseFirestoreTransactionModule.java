package io.invertase.firebase.firestore;

import android.os.AsyncTask;
import android.util.SparseArray;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.firestore.SetOptions;
import com.google.firebase.firestore.Transaction;
import io.invertase.firebase.common.RCTConvertFirebase;
import io.invertase.firebase.common.ReactNativeFirebaseEventEmitter;
import io.invertase.firebase.common.ReactNativeFirebaseModule;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;

public class ReactNativeFirebaseFirestoreTransactionModule extends ReactNativeFirebaseModule {
    private static final String SERVICE_NAME = "FirestoreTransaction";
    private SparseArray<ReactNativeFirebaseFirestoreTransactionHandler> transactionHandlers;

    ReactNativeFirebaseFirestoreTransactionModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext, SERVICE_NAME);
        this.transactionHandlers = new SparseArray<>();
    }

    @Override
    public void invalidate() {
        int size = this.transactionHandlers.size();
        for (int i = 0; i < size; i++) {
            ReactNativeFirebaseFirestoreTransactionHandler reactNativeFirebaseFirestoreTransactionHandler = this.transactionHandlers.get(this.transactionHandlers.keyAt(i));
            if (reactNativeFirebaseFirestoreTransactionHandler != null) {
                reactNativeFirebaseFirestoreTransactionHandler.abort();
            }
        }
        this.transactionHandlers.clear();
        super.invalidate();
    }

    @ReactMethod
    public void transactionGetDocument(final String str, final String str2, int i, String str3, final Promise promise) {
        final ReactNativeFirebaseFirestoreTransactionHandler reactNativeFirebaseFirestoreTransactionHandler = this.transactionHandlers.get(i);
        if (reactNativeFirebaseFirestoreTransactionHandler == null) {
            rejectPromiseWithCodeAndMessage(promise, "internal-error", "An internal error occurred whilst attempting to find a native transaction by id.");
        } else {
            final DocumentReference documentForFirestore = UniversalFirebaseFirestoreCommon.getDocumentForFirestore(UniversalFirebaseFirestoreCommon.getFirestoreForApp(str, str2), str3);
            Tasks.call(getTransactionalExecutor(), new Callable() {
                @Override
                public final Object call() {
                    return ReactNativeFirebaseFirestoreSerialize.snapshotToWritableMap(str, str2, reactNativeFirebaseFirestoreTransactionHandler.getDocument(documentForFirestore));
                }
            }).addOnCompleteListener(new OnCompleteListener() {
                @Override
                public final void onComplete(Task task) {
                    ReactNativeFirebaseFirestoreTransactionModule.lambda$transactionGetDocument$1(promise, task);
                }
            });
        }
    }

    static void lambda$transactionGetDocument$1(Promise promise, Task task) {
        if (task.isSuccessful()) {
            promise.resolve(task.getResult());
        } else {
            rejectPromiseWithExceptionMap(promise, task.getException());
        }
    }

    @ReactMethod
    public void transactionDispose(String str, String str2, int i) {
        ReactNativeFirebaseFirestoreTransactionHandler reactNativeFirebaseFirestoreTransactionHandler = this.transactionHandlers.get(i);
        if (reactNativeFirebaseFirestoreTransactionHandler != null) {
            reactNativeFirebaseFirestoreTransactionHandler.abort();
            this.transactionHandlers.delete(i);
        }
    }

    @ReactMethod
    public void transactionApplyBuffer(String str, String str2, int i, ReadableArray readableArray) {
        ReactNativeFirebaseFirestoreTransactionHandler reactNativeFirebaseFirestoreTransactionHandler = this.transactionHandlers.get(i);
        if (reactNativeFirebaseFirestoreTransactionHandler != null) {
            reactNativeFirebaseFirestoreTransactionHandler.signalBufferReceived(readableArray);
        }
    }

    @ReactMethod
    public void transactionBegin(String str, final String str2, int i) {
        final ReactNativeFirebaseFirestoreTransactionHandler reactNativeFirebaseFirestoreTransactionHandler = new ReactNativeFirebaseFirestoreTransactionHandler(str, i);
        this.transactionHandlers.put(i, reactNativeFirebaseFirestoreTransactionHandler);
        final FirebaseFirestore firestoreForApp = UniversalFirebaseFirestoreCommon.getFirestoreForApp(str, str2);
        final ReactNativeFirebaseEventEmitter sharedInstance = ReactNativeFirebaseEventEmitter.getSharedInstance();
        firestoreForApp.runTransaction(new Transaction.Function() {
            @Override
            public final Object apply(Transaction transaction) {
                return ReactNativeFirebaseFirestoreTransactionModule.lambda$transactionBegin$3(reactNativeFirebaseFirestoreTransactionHandler, sharedInstance, str2, firestoreForApp, transaction);
            }
        }).addOnCompleteListener(new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                ReactNativeFirebaseFirestoreTransactionModule.lambda$transactionBegin$4(reactNativeFirebaseFirestoreTransactionHandler, sharedInstance, str2, task);
            }
        });
    }

    static Void lambda$transactionBegin$3(final ReactNativeFirebaseFirestoreTransactionHandler reactNativeFirebaseFirestoreTransactionHandler, final ReactNativeFirebaseEventEmitter reactNativeFirebaseEventEmitter, final String str, FirebaseFirestore firebaseFirestore, Transaction transaction) throws FirebaseFirestoreException {
        reactNativeFirebaseFirestoreTransactionHandler.resetState(transaction);
        AsyncTask.execute(new Runnable() {
            @Override
            public final void run() {
                ReactNativeFirebaseFirestoreTransactionModule.lambda$transactionBegin$2(reactNativeFirebaseEventEmitter, reactNativeFirebaseFirestoreTransactionHandler, str);
            }
        });
        reactNativeFirebaseFirestoreTransactionHandler.await();
        if (reactNativeFirebaseFirestoreTransactionHandler.aborted) {
            throw new FirebaseFirestoreException("abort", FirebaseFirestoreException.Code.ABORTED);
        }
        if (reactNativeFirebaseFirestoreTransactionHandler.timeout) {
            throw new FirebaseFirestoreException("timeout", FirebaseFirestoreException.Code.DEADLINE_EXCEEDED);
        }
        ReadableArray commandBuffer = reactNativeFirebaseFirestoreTransactionHandler.getCommandBuffer();
        if (commandBuffer == null) {
            return null;
        }
        int size = commandBuffer.size();
        for (int i = 0; i < size; i++) {
            ReadableMap map = commandBuffer.getMap(i);
            String string = ((ReadableMap) Objects.requireNonNull(map)).getString("path");
            String string2 = map.getString(SVGParser.XML_STYLESHEET_ATTR_TYPE);
            DocumentReference documentForFirestore = UniversalFirebaseFirestoreCommon.getDocumentForFirestore(firebaseFirestore, string);
            String str2 = (String) Objects.requireNonNull(string2);
            str2.hashCode();
            switch (str2) {
                case "UPDATE":
                    transaction.update(documentForFirestore, ReactNativeFirebaseFirestoreSerialize.parseReadableMap(firebaseFirestore, map.getMap("data")));
                    break;
                case "SET":
                    Map<String, Object> readableMap = ReactNativeFirebaseFirestoreSerialize.parseReadableMap(firebaseFirestore, map.getMap("data"));
                    ReadableMap map2 = map.getMap("options");
                    if (((ReadableMap) Objects.requireNonNull(map2)).hasKey("merge") && map2.getBoolean("merge")) {
                        transaction.set(documentForFirestore, readableMap, SetOptions.merge());
                        break;
                    } else {
                        if (map2.hasKey("mergeFields")) {
                            ArrayList arrayList = new ArrayList();
                            Iterator<Object> it = RCTConvertFirebase.toArrayList(map2.getArray("mergeFields")).iterator();
                            while (it.hasNext()) {
                                arrayList.add((String) it.next());
                            }
                            transaction.set(documentForFirestore, readableMap, SetOptions.mergeFields(arrayList));
                        } else {
                            transaction.set(documentForFirestore, readableMap);
                        }
                        break;
                    }
                    break;
                case "DELETE":
                    transaction.delete(documentForFirestore);
                    break;
            }
        }
        return null;
    }

    static void lambda$transactionBegin$2(ReactNativeFirebaseEventEmitter reactNativeFirebaseEventEmitter, ReactNativeFirebaseFirestoreTransactionHandler reactNativeFirebaseFirestoreTransactionHandler, String str) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, "update");
        reactNativeFirebaseEventEmitter.sendEvent(new ReactNativeFirebaseFirestoreEvent("firestore_transaction_event", writableMapCreateMap, reactNativeFirebaseFirestoreTransactionHandler.getAppName(), str, reactNativeFirebaseFirestoreTransactionHandler.getTransactionId()));
    }

    static void lambda$transactionBegin$4(ReactNativeFirebaseFirestoreTransactionHandler reactNativeFirebaseFirestoreTransactionHandler, ReactNativeFirebaseEventEmitter reactNativeFirebaseEventEmitter, String str, Task task) {
        if (reactNativeFirebaseFirestoreTransactionHandler.aborted) {
            return;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        if (task.isSuccessful()) {
            writableMapCreateMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, "complete");
            reactNativeFirebaseEventEmitter.sendEvent(new ReactNativeFirebaseFirestoreEvent("firestore_transaction_event", writableMapCreateMap, reactNativeFirebaseFirestoreTransactionHandler.getAppName(), str, reactNativeFirebaseFirestoreTransactionHandler.getTransactionId()));
            return;
        }
        writableMapCreateMap.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, "error");
        Exception exception = task.getException();
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        UniversalFirebaseFirestoreException universalFirebaseFirestoreException = new UniversalFirebaseFirestoreException((FirebaseFirestoreException) exception, exception.getCause());
        writableMapCreateMap2.putString("code", universalFirebaseFirestoreException.getCode());
        writableMapCreateMap2.putString("message", universalFirebaseFirestoreException.getMessage());
        writableMapCreateMap.putMap("error", writableMapCreateMap2);
        reactNativeFirebaseEventEmitter.sendEvent(new ReactNativeFirebaseFirestoreEvent("firestore_transaction_event", writableMapCreateMap, reactNativeFirebaseFirestoreTransactionHandler.getAppName(), str, reactNativeFirebaseFirestoreTransactionHandler.getTransactionId()));
    }
}
