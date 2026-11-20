package com.mapbox.common.experimental.wss_backend;

public class Data {
    private Type type;
    private Object value;

    public enum Type {
        BYTE_ARRAY,
        STRING
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public Data(byte[] bArr) {
        this.type = Type.BYTE_ARRAY;
        this.value = bArr;
    }

    public Data(String str) {
        this.type = Type.STRING;
        this.value = str;
    }

    public static Data valueOf(byte[] bArr) {
        return new Data(bArr);
    }

    public static Data valueOf(String str) {
        return new Data(str);
    }

    public boolean isByteArray() {
        return this.type == Type.BYTE_ARRAY;
    }

    public boolean isString() {
        return this.type == Type.STRING;
    }

    public byte[] getByteArray() {
        if (isByteArray()) {
            return (byte[]) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (byte[])");
    }

    public String getString() {
        if (isString()) {
            return (String) this.value;
        }
        throw new IllegalStateException("The content of the variant does not have type (String)");
    }

    public Type getTypeInfo() {
        return this.type;
    }
}
