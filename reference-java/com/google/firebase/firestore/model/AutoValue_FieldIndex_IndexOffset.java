package com.google.firebase.firestore.model;

final class AutoValue_FieldIndex_IndexOffset extends FieldIndex.IndexOffset {
    private final DocumentKey documentKey;
    private final int largestBatchId;
    private final SnapshotVersion readTime;

    AutoValue_FieldIndex_IndexOffset(SnapshotVersion snapshotVersion, DocumentKey documentKey, int i) {
        if (snapshotVersion == null) {
            throw new NullPointerException("Null readTime");
        }
        this.readTime = snapshotVersion;
        if (documentKey == null) {
            throw new NullPointerException("Null documentKey");
        }
        this.documentKey = documentKey;
        this.largestBatchId = i;
    }

    @Override
    public SnapshotVersion getReadTime() {
        return this.readTime;
    }

    @Override
    public DocumentKey getDocumentKey() {
        return this.documentKey;
    }

    @Override
    public int getLargestBatchId() {
        return this.largestBatchId;
    }

    public String toString() {
        return "IndexOffset{readTime=" + this.readTime + ", documentKey=" + this.documentKey + ", largestBatchId=" + this.largestBatchId + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FieldIndex.IndexOffset) {
            FieldIndex.IndexOffset indexOffset = (FieldIndex.IndexOffset) obj;
            if (this.readTime.equals(indexOffset.getReadTime()) && this.documentKey.equals(indexOffset.getDocumentKey()) && this.largestBatchId == indexOffset.getLargestBatchId()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.readTime.hashCode() ^ 1000003) * 1000003) ^ this.documentKey.hashCode()) * 1000003) ^ this.largestBatchId;
    }
}
