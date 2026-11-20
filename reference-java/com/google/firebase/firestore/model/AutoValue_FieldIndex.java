package com.google.firebase.firestore.model;

import java.util.List;

final class AutoValue_FieldIndex extends FieldIndex {
    private final String collectionGroup;
    private final int indexId;
    private final FieldIndex.IndexState indexState;
    private final List<FieldIndex.Segment> segments;

    AutoValue_FieldIndex(int i, String str, List<FieldIndex.Segment> list, FieldIndex.IndexState indexState) {
        this.indexId = i;
        if (str == null) {
            throw new NullPointerException("Null collectionGroup");
        }
        this.collectionGroup = str;
        if (list == null) {
            throw new NullPointerException("Null segments");
        }
        this.segments = list;
        if (indexState == null) {
            throw new NullPointerException("Null indexState");
        }
        this.indexState = indexState;
    }

    @Override
    public int getIndexId() {
        return this.indexId;
    }

    @Override
    public String getCollectionGroup() {
        return this.collectionGroup;
    }

    @Override
    public List<FieldIndex.Segment> getSegments() {
        return this.segments;
    }

    @Override
    public FieldIndex.IndexState getIndexState() {
        return this.indexState;
    }

    public String toString() {
        return "FieldIndex{indexId=" + this.indexId + ", collectionGroup=" + this.collectionGroup + ", segments=" + this.segments + ", indexState=" + this.indexState + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FieldIndex) {
            FieldIndex fieldIndex = (FieldIndex) obj;
            if (this.indexId == fieldIndex.getIndexId() && this.collectionGroup.equals(fieldIndex.getCollectionGroup()) && this.segments.equals(fieldIndex.getSegments()) && this.indexState.equals(fieldIndex.getIndexState())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.indexId ^ 1000003) * 1000003) ^ this.collectionGroup.hashCode()) * 1000003) ^ this.segments.hashCode()) * 1000003) ^ this.indexState.hashCode();
    }
}
