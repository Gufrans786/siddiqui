package com.google.firebase.firestore.core;

import android.content.Context;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.firestore.AggregateField;
import com.google.firebase.firestore.EventListener;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.firestore.LoadBundleTask;
import com.google.firebase.firestore.TransactionOptions;
import com.google.firebase.firestore.auth.CredentialsProvider;
import com.google.firebase.firestore.auth.User;
import com.google.firebase.firestore.bundle.BundleReader;
import com.google.firebase.firestore.bundle.BundleSerializer;
import com.google.firebase.firestore.bundle.NamedQuery;
import com.google.firebase.firestore.local.IndexBackfiller;
import com.google.firebase.firestore.local.LocalStore;
import com.google.firebase.firestore.local.Persistence;
import com.google.firebase.firestore.local.QueryResult;
import com.google.firebase.firestore.local.Scheduler;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.FieldIndex;
import com.google.firebase.firestore.model.mutation.Mutation;
import com.google.firebase.firestore.remote.GrpcMetadataProvider;
import com.google.firebase.firestore.remote.RemoteSerializer;
import com.google.firebase.firestore.remote.RemoteStore;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.AsyncQueue;
import com.google.firebase.firestore.util.Function;
import com.google.firebase.firestore.util.Listener;
import com.google.firebase.firestore.util.Logger;
import com.google.firestore.v1.Value;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;

public final class FirestoreClient {
    private static final String LOG_TAG = "FirestoreClient";
    private static final int MAX_CONCURRENT_LIMBO_RESOLUTIONS = 100;
    private final CredentialsProvider<String> appCheckProvider;
    private final AsyncQueue asyncQueue;
    private final CredentialsProvider<User> authProvider;
    private final BundleSerializer bundleSerializer;
    private final DatabaseInfo databaseInfo;
    private EventManager eventManager;
    private Scheduler gcScheduler;
    private Scheduler indexBackfillScheduler;
    private LocalStore localStore;
    private Persistence persistence;
    private RemoteStore remoteStore;
    private SyncEngine syncEngine;

    static void lambda$new$3(String str) {
    }

    public FirestoreClient(final Context context, DatabaseInfo databaseInfo, CredentialsProvider<User> credentialsProvider, CredentialsProvider<String> credentialsProvider2, final AsyncQueue asyncQueue, final GrpcMetadataProvider grpcMetadataProvider, final ComponentProvider componentProvider) {
        this.databaseInfo = databaseInfo;
        this.authProvider = credentialsProvider;
        this.appCheckProvider = credentialsProvider2;
        this.asyncQueue = asyncQueue;
        this.bundleSerializer = new BundleSerializer(new RemoteSerializer(databaseInfo.getDatabaseId()));
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m788lambda$new$0$comgooglefirebasefirestorecoreFirestoreClient(taskCompletionSource, context, componentProvider, grpcMetadataProvider);
            }
        });
        credentialsProvider.setChangeListener(new Listener() {
            @Override
            public final void onValue(Object obj) {
                this.f$0.m790lambda$new$2$comgooglefirebasefirestorecoreFirestoreClient(atomicBoolean, taskCompletionSource, asyncQueue, (User) obj);
            }
        });
        credentialsProvider2.setChangeListener(new Listener() {
            @Override
            public final void onValue(Object obj) {
                FirestoreClient.lambda$new$3((String) obj);
            }
        });
    }

    void m788lambda$new$0$comgooglefirebasefirestorecoreFirestoreClient(TaskCompletionSource taskCompletionSource, Context context, ComponentProvider componentProvider, GrpcMetadataProvider grpcMetadataProvider) {
        try {
            initialize(context, (User) Tasks.await(taskCompletionSource.getTask()), componentProvider, grpcMetadataProvider);
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }
    }

    void m790lambda$new$2$comgooglefirebasefirestorecoreFirestoreClient(AtomicBoolean atomicBoolean, TaskCompletionSource taskCompletionSource, AsyncQueue asyncQueue, final User user) {
        if (!atomicBoolean.compareAndSet(false, true)) {
            asyncQueue.enqueueAndForget(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.m789lambda$new$1$comgooglefirebasefirestorecoreFirestoreClient(user);
                }
            });
        } else {
            Assert.hardAssert(!taskCompletionSource.getTask().isComplete(), "Already fulfilled first user task", new Object[0]);
            taskCompletionSource.setResult(user);
        }
    }

    void m789lambda$new$1$comgooglefirebasefirestorecoreFirestoreClient(User user) {
        Assert.hardAssert(this.syncEngine != null, "SyncEngine not yet initialized", new Object[0]);
        Logger.debug(LOG_TAG, "Credential changed. Current user: %s", user.getUid());
        this.syncEngine.handleCredentialChange(user);
    }

    public Task<Void> disableNetwork() {
        verifyNotTerminated();
        return this.asyncQueue.enqueue(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m781x7ebb7879();
            }
        });
    }

    void m781x7ebb7879() {
        this.remoteStore.disableNetwork();
    }

    public Task<Void> enableNetwork() {
        verifyNotTerminated();
        return this.asyncQueue.enqueue(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m782x445cc74d();
            }
        });
    }

    void m782x445cc74d() {
        this.remoteStore.enableNetwork();
    }

    public Task<Void> terminate() {
        this.authProvider.removeChangeListener();
        this.appCheckProvider.removeChangeListener();
        return this.asyncQueue.enqueueAndInitiateShutdown(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m795xd01fe2b6();
            }
        });
    }

    void m795xd01fe2b6() {
        this.remoteStore.shutdown();
        this.persistence.shutdown();
        Scheduler scheduler = this.gcScheduler;
        if (scheduler != null) {
            scheduler.stop();
        }
        Scheduler scheduler2 = this.indexBackfillScheduler;
        if (scheduler2 != null) {
            scheduler2.stop();
        }
    }

    public boolean isTerminated() {
        return this.asyncQueue.isShuttingDown();
    }

    public QueryListener listen(Query query, EventManager.ListenOptions listenOptions, EventListener<ViewSnapshot> eventListener) {
        verifyNotTerminated();
        final QueryListener queryListener = new QueryListener(query, listenOptions, eventListener);
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m786xbcc44995(queryListener);
            }
        });
        return queryListener;
    }

    void m786xbcc44995(QueryListener queryListener) {
        this.eventManager.addQueryListener(queryListener);
    }

    void m794x3c424f7c(QueryListener queryListener) {
        this.eventManager.removeQueryListener(queryListener);
    }

    public void stopListening(final QueryListener queryListener) {
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m794x3c424f7c(queryListener);
            }
        });
    }

    public Task<Document> getDocumentFromLocalCache(final DocumentKey documentKey) {
        verifyNotTerminated();
        return this.asyncQueue.enqueue(new Callable() {
            @Override
            public final Object call() {
                return this.f$0.m783xcef7a7c2(documentKey);
            }
        }).continueWith(new Continuation() {
            @Override
            public final Object then(Task task) {
                return FirestoreClient.lambda$getDocumentFromLocalCache$10(task);
            }
        });
    }

    Document m783xcef7a7c2(DocumentKey documentKey) throws Exception {
        return this.localStore.readDocument(documentKey);
    }

    static Document lambda$getDocumentFromLocalCache$10(Task task) throws Exception {
        Document document = (Document) task.getResult();
        if (document.isFoundDocument()) {
            return document;
        }
        if (document.isNoDocument()) {
            return null;
        }
        throw new FirebaseFirestoreException("Failed to get document from cache. (However, this document may exist on the server. Run again without setting source to CACHE to attempt to retrieve the document from the server.)", FirebaseFirestoreException.Code.UNAVAILABLE);
    }

    public Task<ViewSnapshot> getDocumentsFromLocalCache(final Query query) {
        verifyNotTerminated();
        return this.asyncQueue.enqueue(new Callable() {
            @Override
            public final Object call() {
                return this.f$0.m784x6c1df5c8(query);
            }
        });
    }

    ViewSnapshot m784x6c1df5c8(Query query) throws Exception {
        QueryResult queryResultExecuteQuery = this.localStore.executeQuery(query, true);
        View view = new View(query, queryResultExecuteQuery.getRemoteKeys());
        return view.applyChanges(view.computeDocChanges(queryResultExecuteQuery.getDocuments())).getSnapshot();
    }

    public Task<Void> write(final List<Mutation> list) {
        verifyNotTerminated();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m798xabeef1a9(list, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    void m798xabeef1a9(List list, TaskCompletionSource taskCompletionSource) {
        this.syncEngine.writeMutations(list, taskCompletionSource);
    }

    public <TResult> Task<TResult> transaction(final TransactionOptions transactionOptions, final Function<Transaction, Task<TResult>> function) {
        verifyNotTerminated();
        return AsyncQueue.callTask(this.asyncQueue.getExecutor(), new Callable() {
            @Override
            public final Object call() {
                return this.f$0.m796xd83b2b87(transactionOptions, function);
            }
        });
    }

    Task m796xd83b2b87(TransactionOptions transactionOptions, Function function) throws Exception {
        return this.syncEngine.transaction(this.asyncQueue, transactionOptions, function);
    }

    public Task<Map<String, Value>> runAggregateQuery(final Query query, final List<AggregateField> list) {
        verifyNotTerminated();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m792x8ccaf6ba(query, list, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    void m792x8ccaf6ba(Query query, List list, final TaskCompletionSource taskCompletionSource) {
        this.syncEngine.runAggregateQuery(query, list).addOnSuccessListener(new OnSuccessListener() {
            @Override
            public final void onSuccess(Object obj) {
                taskCompletionSource.setResult((Map) obj);
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public final void onFailure(Exception exc) {
                taskCompletionSource.setException(exc);
            }
        });
    }

    public Task<Void> waitForPendingWrites() {
        verifyNotTerminated();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m797x5cd85a36(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    void m797x5cd85a36(TaskCompletionSource taskCompletionSource) {
        this.syncEngine.registerPendingWritesTask(taskCompletionSource);
    }

    private void initialize(Context context, User user, ComponentProvider componentProvider, GrpcMetadataProvider grpcMetadataProvider) {
        Logger.debug(LOG_TAG, "Initializing. user=%s", user.getUid());
        componentProvider.initialize(new ComponentProvider.Configuration(context, this.asyncQueue, this.databaseInfo, user, 100, this.authProvider, this.appCheckProvider, grpcMetadataProvider));
        this.persistence = componentProvider.getPersistence();
        this.gcScheduler = componentProvider.getGarbageCollectionScheduler();
        this.localStore = componentProvider.getLocalStore();
        this.remoteStore = componentProvider.getRemoteStore();
        this.syncEngine = componentProvider.getSyncEngine();
        this.eventManager = componentProvider.getEventManager();
        IndexBackfiller indexBackfiller = componentProvider.getIndexBackfiller();
        Scheduler scheduler = this.gcScheduler;
        if (scheduler != null) {
            scheduler.start();
        }
        if (indexBackfiller != null) {
            IndexBackfiller.Scheduler scheduler2 = indexBackfiller.getScheduler();
            this.indexBackfillScheduler = scheduler2;
            scheduler2.start();
        }
    }

    public void addSnapshotsInSyncListener(final EventListener<Void> eventListener) {
        verifyNotTerminated();
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m778x66bcffc0(eventListener);
            }
        });
    }

    void m778x66bcffc0(EventListener eventListener) {
        this.eventManager.addSnapshotsInSyncListener(eventListener);
    }

    public void loadBundle(InputStream inputStream, final LoadBundleTask loadBundleTask) {
        verifyNotTerminated();
        final BundleReader bundleReader = new BundleReader(this.bundleSerializer, inputStream);
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m787x9f576345(bundleReader, loadBundleTask);
            }
        });
    }

    void m787x9f576345(BundleReader bundleReader, LoadBundleTask loadBundleTask) {
        this.syncEngine.loadBundle(bundleReader, loadBundleTask);
    }

    public Task<Query> getNamedQuery(final String str) {
        verifyNotTerminated();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m785xfe455012(str, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    void m785xfe455012(String str, TaskCompletionSource taskCompletionSource) {
        NamedQuery namedQuery = this.localStore.getNamedQuery(str);
        if (namedQuery != null) {
            Target target = namedQuery.getBundledQuery().getTarget();
            taskCompletionSource.setResult(new Query(target.getPath(), target.getCollectionGroup(), target.getFilters(), target.getOrderBy(), target.getLimit(), namedQuery.getBundledQuery().getLimitType(), target.getStartAt(), target.getEndAt()));
        } else {
            taskCompletionSource.setResult(null);
        }
    }

    public Task<Void> configureFieldIndexes(final List<FieldIndex> list) {
        verifyNotTerminated();
        return this.asyncQueue.enqueue(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m779x7e96efd8(list);
            }
        });
    }

    void m779x7e96efd8(List list) {
        this.localStore.configureFieldIndexes(list);
    }

    public void setIndexAutoCreationEnabled(final boolean z) {
        verifyNotTerminated();
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m793x6ec3220e(z);
            }
        });
    }

    void m793x6ec3220e(boolean z) {
        this.localStore.setIndexAutoCreationEnabled(z);
    }

    public void deleteAllFieldIndexes() {
        verifyNotTerminated();
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m780x996f55a6();
            }
        });
    }

    void m780x996f55a6() {
        this.localStore.deleteAllFieldIndexes();
    }

    void m791x16f11d28(EventListener eventListener) {
        this.eventManager.removeSnapshotsInSyncListener(eventListener);
    }

    public void removeSnapshotsInSyncListener(final EventListener<Void> eventListener) {
        this.asyncQueue.enqueueAndForget(new Runnable() {
            @Override
            public final void run() {
                this.f$0.m791x16f11d28(eventListener);
            }
        });
    }

    private void verifyNotTerminated() {
        if (isTerminated()) {
            throw new IllegalStateException("The client has already been terminated");
        }
    }
}
