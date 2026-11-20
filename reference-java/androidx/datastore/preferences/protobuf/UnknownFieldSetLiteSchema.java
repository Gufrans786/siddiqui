package androidx.datastore.preferences.protobuf;

import java.io.IOException;

@CheckReturnValue
class UnknownFieldSetLiteSchema extends UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> {
    @Override
    boolean shouldDiscardUnknownFields(Reader reader) {
        return false;
    }

    UnknownFieldSetLiteSchema() {
    }

    @Override
    public UnknownFieldSetLite newBuilder() {
        return UnknownFieldSetLite.newInstance();
    }

    @Override
    public void addVarint(UnknownFieldSetLite fields, int number, long value) {
        fields.storeField(WireFormat.makeTag(number, 0), Long.valueOf(value));
    }

    @Override
    public void addFixed32(UnknownFieldSetLite fields, int number, int value) {
        fields.storeField(WireFormat.makeTag(number, 5), Integer.valueOf(value));
    }

    @Override
    public void addFixed64(UnknownFieldSetLite fields, int number, long value) {
        fields.storeField(WireFormat.makeTag(number, 1), Long.valueOf(value));
    }

    @Override
    public void addLengthDelimited(UnknownFieldSetLite fields, int number, ByteString value) {
        fields.storeField(WireFormat.makeTag(number, 2), value);
    }

    @Override
    public void addGroup(UnknownFieldSetLite fields, int number, UnknownFieldSetLite subFieldSet) {
        fields.storeField(WireFormat.makeTag(number, 3), subFieldSet);
    }

    @Override
    public UnknownFieldSetLite toImmutable(UnknownFieldSetLite fields) {
        fields.makeImmutable();
        return fields;
    }

    @Override
    public void setToMessage(Object message, UnknownFieldSetLite fields) {
        ((GeneratedMessageLite) message).unknownFields = fields;
    }

    @Override
    public UnknownFieldSetLite getFromMessage(Object message) {
        return ((GeneratedMessageLite) message).unknownFields;
    }

    @Override
    public UnknownFieldSetLite getBuilderFromMessage(Object message) {
        UnknownFieldSetLite fromMessage = getFromMessage(message);
        if (fromMessage != UnknownFieldSetLite.getDefaultInstance()) {
            return fromMessage;
        }
        UnknownFieldSetLite unknownFieldSetLiteNewInstance = UnknownFieldSetLite.newInstance();
        setToMessage(message, unknownFieldSetLiteNewInstance);
        return unknownFieldSetLiteNewInstance;
    }

    @Override
    public void setBuilderToMessage(Object message, UnknownFieldSetLite fields) {
        setToMessage(message, fields);
    }

    @Override
    void makeImmutable(Object message) {
        getFromMessage(message).makeImmutable();
    }

    @Override
    public void writeTo(UnknownFieldSetLite fields, Writer writer) throws IOException {
        fields.writeTo(writer);
    }

    @Override
    public void writeAsMessageSetTo(UnknownFieldSetLite fields, Writer writer) throws IOException {
        fields.writeAsMessageSetTo(writer);
    }

    @Override
    public UnknownFieldSetLite merge(UnknownFieldSetLite target, UnknownFieldSetLite source) {
        if (UnknownFieldSetLite.getDefaultInstance().equals(source)) {
            return target;
        }
        if (UnknownFieldSetLite.getDefaultInstance().equals(target)) {
            return UnknownFieldSetLite.mutableCopyOf(target, source);
        }
        return target.mergeFrom(source);
    }

    @Override
    public int getSerializedSize(UnknownFieldSetLite unknowns) {
        return unknowns.getSerializedSize();
    }

    @Override
    public int getSerializedSizeAsMessageSet(UnknownFieldSetLite unknowns) {
        return unknowns.getSerializedSizeAsMessageSet();
    }
}
