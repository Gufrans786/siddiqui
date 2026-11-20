package com.google.firebase.firestore.model;

import com.google.firestore.v1.Value;

public final class MutableDocument implements Document {
    private DocumentState documentState;
    private DocumentType documentType;
    private final DocumentKey key;
    private SnapshotVersion readTime;
    private ObjectValue value;
    private SnapshotVersion version;

    private enum DocumentState {
        HAS_LOCAL_MUTATIONS,
        HAS_COMMITTED_MUTATIONS,
        SYNCED
    }

    private enum DocumentType {
        INVALID,
        FOUND_DOCUMENT,
        NO_DOCUMENT,
        UNKNOWN_DOCUMENT
    }

    private MutableDocument(DocumentKey documentKey) {
        this.key = documentKey;
        this.readTime = SnapshotVersion.NONE;
    }

    private MutableDocument(DocumentKey documentKey, DocumentType documentType, SnapshotVersion snapshotVersion, SnapshotVersion snapshotVersion2, ObjectValue objectValue, DocumentState documentState) {
        this.key = documentKey;
        this.version = snapshotVersion;
        this.readTime = snapshotVersion2;
        this.documentType = documentType;
        this.documentState = documentState;
        this.value = objectValue;
    }

    public static MutableDocument newInvalidDocument(DocumentKey documentKey) {
        return new MutableDocument(documentKey, DocumentType.INVALID, SnapshotVersion.NONE, SnapshotVersion.NONE, new ObjectValue(), DocumentState.SYNCED);
    }

    public static MutableDocument newFoundDocument(DocumentKey documentKey, SnapshotVersion snapshotVersion, ObjectValue objectValue) {
        return new MutableDocument(documentKey).convertToFoundDocument(snapshotVersion, objectValue);
    }

    public static MutableDocument newNoDocument(DocumentKey documentKey, SnapshotVersion snapshotVersion) {
        return new MutableDocument(documentKey).convertToNoDocument(snapshotVersion);
    }

    public static MutableDocument newUnknownDocument(DocumentKey documentKey, SnapshotVersion snapshotVersion) {
        return new MutableDocument(documentKey).convertToUnknownDocument(snapshotVersion);
    }

    public MutableDocument convertToFoundDocument(SnapshotVersion snapshotVersion, ObjectValue objectValue) {
        this.version = snapshotVersion;
        this.documentType = DocumentType.FOUND_DOCUMENT;
        this.value = objectValue;
        this.documentState = DocumentState.SYNCED;
        return this;
    }

    public MutableDocument convertToNoDocument(SnapshotVersion snapshotVersion) {
        this.version = snapshotVersion;
        this.documentType = DocumentType.NO_DOCUMENT;
        this.value = new ObjectValue();
        this.documentState = DocumentState.SYNCED;
        return this;
    }

    public MutableDocument convertToUnknownDocument(SnapshotVersion snapshotVersion) {
        this.version = snapshotVersion;
        this.documentType = DocumentType.UNKNOWN_DOCUMENT;
        this.value = new ObjectValue();
        this.documentState = DocumentState.HAS_COMMITTED_MUTATIONS;
        return this;
    }

    public MutableDocument setHasCommittedMutations() {
        this.documentState = DocumentState.HAS_COMMITTED_MUTATIONS;
        return this;
    }

    public MutableDocument setHasLocalMutations() {
        this.documentState = DocumentState.HAS_LOCAL_MUTATIONS;
        this.version = SnapshotVersion.NONE;
        return this;
    }

    public MutableDocument setReadTime(SnapshotVersion snapshotVersion) {
        this.readTime = snapshotVersion;
        return this;
    }

    @Override
    public DocumentKey getKey() {
        return this.key;
    }

    @Override
    public SnapshotVersion getVersion() {
        return this.version;
    }

    @Override
    public SnapshotVersion getReadTime() {
        return this.readTime;
    }

    @Override
    public boolean hasLocalMutations() {
        return this.documentState.equals(DocumentState.HAS_LOCAL_MUTATIONS);
    }

    @Override
    public boolean hasCommittedMutations() {
        return this.documentState.equals(DocumentState.HAS_COMMITTED_MUTATIONS);
    }

    @Override
    public boolean hasPendingWrites() {
        return hasLocalMutations() || hasCommittedMutations();
    }

    @Override
    public ObjectValue getData() {
        return this.value;
    }

    @Override
    public Value getField(FieldPath fieldPath) {
        return getData().get(fieldPath);
    }

    @Override
    public boolean isValidDocument() {
        return !this.documentType.equals(DocumentType.INVALID);
    }

    @Override
    public boolean isFoundDocument() {
        return this.documentType.equals(DocumentType.FOUND_DOCUMENT);
    }

    @Override
    public boolean isNoDocument() {
        return this.documentType.equals(DocumentType.NO_DOCUMENT);
    }

    @Override
    public boolean isUnknownDocument() {
        return this.documentType.equals(DocumentType.UNKNOWN_DOCUMENT);
    }

    @Override
    public MutableDocument mutableCopy() {
        return new MutableDocument(this.key, this.documentType, this.version, this.readTime, this.value.m865clone(), this.documentState);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MutableDocument mutableDocument = (MutableDocument) obj;
        if (this.key.equals(mutableDocument.key) && this.version.equals(mutableDocument.version) && this.documentType.equals(mutableDocument.documentType) && this.documentState.equals(mutableDocument.documentState)) {
            return this.value.equals(mutableDocument.value);
        }
        return false;
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public String toString() {
        return "Document{key=" + this.key + ", version=" + this.version + ", readTime=" + this.readTime + ", type=" + this.documentType + ", documentState=" + this.documentState + ", value=" + this.value + '}';
    }
}
