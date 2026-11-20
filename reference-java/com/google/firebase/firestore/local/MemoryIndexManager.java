package com.google.firebase.firestore.local;

import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.firestore.core.Target;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.FieldIndex;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.util.Assert;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

class MemoryIndexManager implements IndexManager {
    private final MemoryCollectionParentIndex collectionParentsIndex = new MemoryCollectionParentIndex();

    @Override
    public void addFieldIndex(FieldIndex fieldIndex) {
    }

    @Override
    public void createTargetIndexes(Target target) {
    }

    @Override
    public void deleteAllFieldIndexes() {
    }

    @Override
    public void deleteFieldIndex(FieldIndex fieldIndex) {
    }

    @Override
    public List<DocumentKey> getDocumentsMatchingTarget(Target target) {
        return null;
    }

    @Override
    public String getNextCollectionGroupToUpdate() {
        return null;
    }

    @Override
    public void start() {
    }

    @Override
    public void updateCollectionGroup(String str, FieldIndex.IndexOffset indexOffset) {
    }

    @Override
    public void updateIndexEntries(ImmutableSortedMap<DocumentKey, Document> immutableSortedMap) {
    }

    @Override
    public void addToCollectionParentIndex(ResourcePath resourcePath) {
        this.collectionParentsIndex.add(resourcePath);
    }

    @Override
    public List<ResourcePath> getCollectionParents(String str) {
        return this.collectionParentsIndex.getEntries(str);
    }

    @Override
    public Collection<FieldIndex> getFieldIndexes(String str) {
        return Collections.emptyList();
    }

    @Override
    public Collection<FieldIndex> getFieldIndexes() {
        return Collections.emptyList();
    }

    @Override
    public FieldIndex.IndexOffset getMinOffset(Target target) {
        return FieldIndex.IndexOffset.NONE;
    }

    @Override
    public FieldIndex.IndexOffset getMinOffset(String str) {
        return FieldIndex.IndexOffset.NONE;
    }

    @Override
    public IndexManager.IndexType getIndexType(Target target) {
        return IndexManager.IndexType.NONE;
    }

    static class MemoryCollectionParentIndex {
        private final HashMap<String, HashSet<ResourcePath>> index = new HashMap<>();

        MemoryCollectionParentIndex() {
        }

        boolean add(ResourcePath resourcePath) {
            Assert.hardAssert(resourcePath.length() % 2 == 1, "Expected a collection path.", new Object[0]);
            String lastSegment = resourcePath.getLastSegment();
            ResourcePath resourcePathPopLast = resourcePath.popLast();
            HashSet<ResourcePath> hashSet = this.index.get(lastSegment);
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this.index.put(lastSegment, hashSet);
            }
            return hashSet.add(resourcePathPopLast);
        }

        List<ResourcePath> getEntries(String str) {
            HashSet<ResourcePath> hashSet = this.index.get(str);
            return hashSet != null ? new ArrayList(hashSet) : Collections.emptyList();
        }
    }
}
