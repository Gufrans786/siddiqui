package com.google.firebase.firestore.local;

import android.util.SparseArray;
import com.google.firebase.database.collection.ImmutableSortedSet;
import com.google.firebase.firestore.core.Target;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.util.Consumer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

final class MemoryTargetCache implements TargetCache {
    private int highestTargetId;
    private final MemoryPersistence persistence;
    private final Map<Target, TargetData> targets = new HashMap();
    private final ReferenceSet references = new ReferenceSet();
    private SnapshotVersion lastRemoteSnapshotVersion = SnapshotVersion.NONE;
    private long highestSequenceNumber = 0;

    MemoryTargetCache(MemoryPersistence memoryPersistence) {
        this.persistence = memoryPersistence;
    }

    @Override
    public int getHighestTargetId() {
        return this.highestTargetId;
    }

    @Override
    public long getTargetCount() {
        return this.targets.size();
    }

    @Override
    public void forEachTarget(Consumer<TargetData> consumer) {
        Iterator<TargetData> it = this.targets.values().iterator();
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    @Override
    public long getHighestListenSequenceNumber() {
        return this.highestSequenceNumber;
    }

    @Override
    public SnapshotVersion getLastRemoteSnapshotVersion() {
        return this.lastRemoteSnapshotVersion;
    }

    @Override
    public void setLastRemoteSnapshotVersion(SnapshotVersion snapshotVersion) {
        this.lastRemoteSnapshotVersion = snapshotVersion;
    }

    @Override
    public void addTargetData(TargetData targetData) {
        this.targets.put(targetData.getTarget(), targetData);
        int targetId = targetData.getTargetId();
        if (targetId > this.highestTargetId) {
            this.highestTargetId = targetId;
        }
        if (targetData.getSequenceNumber() > this.highestSequenceNumber) {
            this.highestSequenceNumber = targetData.getSequenceNumber();
        }
    }

    @Override
    public void updateTargetData(TargetData targetData) {
        addTargetData(targetData);
    }

    @Override
    public void removeTargetData(TargetData targetData) {
        this.targets.remove(targetData.getTarget());
        this.references.removeReferencesForId(targetData.getTargetId());
    }

    int removeQueries(long j, SparseArray<?> sparseArray) {
        Iterator<Map.Entry<Target, TargetData>> it = this.targets.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            Map.Entry<Target, TargetData> next = it.next();
            int targetId = next.getValue().getTargetId();
            if (next.getValue().getSequenceNumber() <= j && sparseArray.get(targetId) == null) {
                it.remove();
                removeMatchingKeysForTargetId(targetId);
                i++;
            }
        }
        return i;
    }

    @Override
    public TargetData getTargetData(Target target) {
        return this.targets.get(target);
    }

    @Override
    public void addMatchingKeys(ImmutableSortedSet<DocumentKey> immutableSortedSet, int i) {
        this.references.addReferences(immutableSortedSet, i);
        ReferenceDelegate referenceDelegate = this.persistence.getReferenceDelegate();
        Iterator<DocumentKey> it = immutableSortedSet.iterator();
        while (it.hasNext()) {
            referenceDelegate.addReference(it.next());
        }
    }

    @Override
    public void removeMatchingKeys(ImmutableSortedSet<DocumentKey> immutableSortedSet, int i) {
        this.references.removeReferences(immutableSortedSet, i);
        ReferenceDelegate referenceDelegate = this.persistence.getReferenceDelegate();
        Iterator<DocumentKey> it = immutableSortedSet.iterator();
        while (it.hasNext()) {
            referenceDelegate.removeReference(it.next());
        }
    }

    @Override
    public void removeMatchingKeysForTargetId(int i) {
        this.references.removeReferencesForId(i);
    }

    @Override
    public ImmutableSortedSet<DocumentKey> getMatchingKeysForTargetId(int i) {
        return this.references.referencesForId(i);
    }

    @Override
    public boolean containsKey(DocumentKey documentKey) {
        return this.references.containsKey(documentKey);
    }

    long getByteSize(LocalSerializer localSerializer) {
        Iterator<Map.Entry<Target, TargetData>> it = this.targets.entrySet().iterator();
        long serializedSize = 0;
        while (it.hasNext()) {
            serializedSize += (long) localSerializer.encodeTargetData(it.next().getValue()).getSerializedSize();
        }
        return serializedSize;
    }
}
