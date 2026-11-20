package com.google.longrunning;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class ListOperationsRequest extends GeneratedMessageLite<ListOperationsRequest, Builder> implements ListOperationsRequestOrBuilder {
    private static final ListOperationsRequest DEFAULT_INSTANCE;
    public static final int FILTER_FIELD_NUMBER = 1;
    public static final int NAME_FIELD_NUMBER = 4;
    public static final int PAGE_SIZE_FIELD_NUMBER = 2;
    public static final int PAGE_TOKEN_FIELD_NUMBER = 3;
    private static volatile Parser<ListOperationsRequest> PARSER;
    private int pageSize_;
    private String name_ = "";
    private String filter_ = "";
    private String pageToken_ = "";

    private ListOperationsRequest() {
    }

    @Override
    public String getName() {
        return this.name_;
    }

    @Override
    public ByteString getNameBytes() {
        return ByteString.copyFromUtf8(this.name_);
    }

    public void setName(String str) {
        str.getClass();
        this.name_ = str;
    }

    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    public void setNameBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.name_ = byteString.toStringUtf8();
    }

    @Override
    public String getFilter() {
        return this.filter_;
    }

    @Override
    public ByteString getFilterBytes() {
        return ByteString.copyFromUtf8(this.filter_);
    }

    public void setFilter(String str) {
        str.getClass();
        this.filter_ = str;
    }

    public void clearFilter() {
        this.filter_ = getDefaultInstance().getFilter();
    }

    public void setFilterBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.filter_ = byteString.toStringUtf8();
    }

    @Override
    public int getPageSize() {
        return this.pageSize_;
    }

    public void setPageSize(int i) {
        this.pageSize_ = i;
    }

    public void clearPageSize() {
        this.pageSize_ = 0;
    }

    @Override
    public String getPageToken() {
        return this.pageToken_;
    }

    @Override
    public ByteString getPageTokenBytes() {
        return ByteString.copyFromUtf8(this.pageToken_);
    }

    public void setPageToken(String str) {
        str.getClass();
        this.pageToken_ = str;
    }

    public void clearPageToken() {
        this.pageToken_ = getDefaultInstance().getPageToken();
    }

    public void setPageTokenBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.pageToken_ = byteString.toStringUtf8();
    }

    public static ListOperationsRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static ListOperationsRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static ListOperationsRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static ListOperationsRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static ListOperationsRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ListOperationsRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static ListOperationsRequest parseFrom(InputStream inputStream) throws IOException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListOperationsRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ListOperationsRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListOperationsRequest) parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListOperationsRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (ListOperationsRequest) parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ListOperationsRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static ListOperationsRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (ListOperationsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(ListOperationsRequest listOperationsRequest) {
        return DEFAULT_INSTANCE.createBuilder(listOperationsRequest);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<ListOperationsRequest, Builder> implements ListOperationsRequestOrBuilder {
        Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        private Builder() {
            super(ListOperationsRequest.DEFAULT_INSTANCE);
        }

        @Override
        public String getName() {
            return ((ListOperationsRequest) this.instance).getName();
        }

        @Override
        public ByteString getNameBytes() {
            return ((ListOperationsRequest) this.instance).getNameBytes();
        }

        public Builder setName(String str) {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).setName(str);
            return this;
        }

        public Builder clearName() {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).clearName();
            return this;
        }

        public Builder setNameBytes(ByteString byteString) {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).setNameBytes(byteString);
            return this;
        }

        @Override
        public String getFilter() {
            return ((ListOperationsRequest) this.instance).getFilter();
        }

        @Override
        public ByteString getFilterBytes() {
            return ((ListOperationsRequest) this.instance).getFilterBytes();
        }

        public Builder setFilter(String str) {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).setFilter(str);
            return this;
        }

        public Builder clearFilter() {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).clearFilter();
            return this;
        }

        public Builder setFilterBytes(ByteString byteString) {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).setFilterBytes(byteString);
            return this;
        }

        @Override
        public int getPageSize() {
            return ((ListOperationsRequest) this.instance).getPageSize();
        }

        public Builder setPageSize(int i) {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).setPageSize(i);
            return this;
        }

        public Builder clearPageSize() {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).clearPageSize();
            return this;
        }

        @Override
        public String getPageToken() {
            return ((ListOperationsRequest) this.instance).getPageToken();
        }

        @Override
        public ByteString getPageTokenBytes() {
            return ((ListOperationsRequest) this.instance).getPageTokenBytes();
        }

        public Builder setPageToken(String str) {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).setPageToken(str);
            return this;
        }

        public Builder clearPageToken() {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).clearPageToken();
            return this;
        }

        public Builder setPageTokenBytes(ByteString byteString) {
            copyOnWrite();
            ((ListOperationsRequest) this.instance).setPageTokenBytes(byteString);
            return this;
        }
    }

    static class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        Parser defaultInstanceBasedParser;
        AnonymousClass1 anonymousClass1 = null;
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new ListOperationsRequest();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\u0004\u0003Ȉ\u0004Ȉ", new Object[]{"filter_", "pageSize_", "pageToken_", "name_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<ListOperationsRequest> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (ListOperationsRequest.class) {
                    defaultInstanceBasedParser = PARSER;
                    if (defaultInstanceBasedParser == null) {
                        defaultInstanceBasedParser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                        PARSER = defaultInstanceBasedParser;
                    }
                    break;
                }
                return defaultInstanceBasedParser;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    static {
        ListOperationsRequest listOperationsRequest = new ListOperationsRequest();
        DEFAULT_INSTANCE = listOperationsRequest;
        GeneratedMessageLite.registerDefaultInstance(ListOperationsRequest.class, listOperationsRequest);
    }

    public static ListOperationsRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<ListOperationsRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
