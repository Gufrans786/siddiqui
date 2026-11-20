package com.google.type;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

public final class PostalAddress extends GeneratedMessageLite<PostalAddress, Builder> implements PostalAddressOrBuilder {
    public static final int ADDRESS_LINES_FIELD_NUMBER = 9;
    public static final int ADMINISTRATIVE_AREA_FIELD_NUMBER = 6;
    private static final PostalAddress DEFAULT_INSTANCE;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 3;
    public static final int LOCALITY_FIELD_NUMBER = 7;
    public static final int ORGANIZATION_FIELD_NUMBER = 11;
    private static volatile Parser<PostalAddress> PARSER = null;
    public static final int POSTAL_CODE_FIELD_NUMBER = 4;
    public static final int RECIPIENTS_FIELD_NUMBER = 10;
    public static final int REGION_CODE_FIELD_NUMBER = 2;
    public static final int REVISION_FIELD_NUMBER = 1;
    public static final int SORTING_CODE_FIELD_NUMBER = 5;
    public static final int SUBLOCALITY_FIELD_NUMBER = 8;
    private int revision_;
    private String regionCode_ = "";
    private String languageCode_ = "";
    private String postalCode_ = "";
    private String sortingCode_ = "";
    private String administrativeArea_ = "";
    private String locality_ = "";
    private String sublocality_ = "";
    private Internal.ProtobufList<String> addressLines_ = GeneratedMessageLite.emptyProtobufList();
    private Internal.ProtobufList<String> recipients_ = GeneratedMessageLite.emptyProtobufList();
    private String organization_ = "";

    private PostalAddress() {
    }

    @Override
    public int getRevision() {
        return this.revision_;
    }

    public void setRevision(int i) {
        this.revision_ = i;
    }

    public void clearRevision() {
        this.revision_ = 0;
    }

    @Override
    public String getRegionCode() {
        return this.regionCode_;
    }

    @Override
    public ByteString getRegionCodeBytes() {
        return ByteString.copyFromUtf8(this.regionCode_);
    }

    public void setRegionCode(String str) {
        str.getClass();
        this.regionCode_ = str;
    }

    public void clearRegionCode() {
        this.regionCode_ = getDefaultInstance().getRegionCode();
    }

    public void setRegionCodeBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.regionCode_ = byteString.toStringUtf8();
    }

    @Override
    public String getLanguageCode() {
        return this.languageCode_;
    }

    @Override
    public ByteString getLanguageCodeBytes() {
        return ByteString.copyFromUtf8(this.languageCode_);
    }

    public void setLanguageCode(String str) {
        str.getClass();
        this.languageCode_ = str;
    }

    public void clearLanguageCode() {
        this.languageCode_ = getDefaultInstance().getLanguageCode();
    }

    public void setLanguageCodeBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.languageCode_ = byteString.toStringUtf8();
    }

    @Override
    public String getPostalCode() {
        return this.postalCode_;
    }

    @Override
    public ByteString getPostalCodeBytes() {
        return ByteString.copyFromUtf8(this.postalCode_);
    }

    public void setPostalCode(String str) {
        str.getClass();
        this.postalCode_ = str;
    }

    public void clearPostalCode() {
        this.postalCode_ = getDefaultInstance().getPostalCode();
    }

    public void setPostalCodeBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.postalCode_ = byteString.toStringUtf8();
    }

    @Override
    public String getSortingCode() {
        return this.sortingCode_;
    }

    @Override
    public ByteString getSortingCodeBytes() {
        return ByteString.copyFromUtf8(this.sortingCode_);
    }

    public void setSortingCode(String str) {
        str.getClass();
        this.sortingCode_ = str;
    }

    public void clearSortingCode() {
        this.sortingCode_ = getDefaultInstance().getSortingCode();
    }

    public void setSortingCodeBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.sortingCode_ = byteString.toStringUtf8();
    }

    @Override
    public String getAdministrativeArea() {
        return this.administrativeArea_;
    }

    @Override
    public ByteString getAdministrativeAreaBytes() {
        return ByteString.copyFromUtf8(this.administrativeArea_);
    }

    public void setAdministrativeArea(String str) {
        str.getClass();
        this.administrativeArea_ = str;
    }

    public void clearAdministrativeArea() {
        this.administrativeArea_ = getDefaultInstance().getAdministrativeArea();
    }

    public void setAdministrativeAreaBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.administrativeArea_ = byteString.toStringUtf8();
    }

    @Override
    public String getLocality() {
        return this.locality_;
    }

    @Override
    public ByteString getLocalityBytes() {
        return ByteString.copyFromUtf8(this.locality_);
    }

    public void setLocality(String str) {
        str.getClass();
        this.locality_ = str;
    }

    public void clearLocality() {
        this.locality_ = getDefaultInstance().getLocality();
    }

    public void setLocalityBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.locality_ = byteString.toStringUtf8();
    }

    @Override
    public String getSublocality() {
        return this.sublocality_;
    }

    @Override
    public ByteString getSublocalityBytes() {
        return ByteString.copyFromUtf8(this.sublocality_);
    }

    public void setSublocality(String str) {
        str.getClass();
        this.sublocality_ = str;
    }

    public void clearSublocality() {
        this.sublocality_ = getDefaultInstance().getSublocality();
    }

    public void setSublocalityBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.sublocality_ = byteString.toStringUtf8();
    }

    @Override
    public List<String> getAddressLinesList() {
        return this.addressLines_;
    }

    @Override
    public int getAddressLinesCount() {
        return this.addressLines_.size();
    }

    @Override
    public String getAddressLines(int i) {
        return this.addressLines_.get(i);
    }

    @Override
    public ByteString getAddressLinesBytes(int i) {
        return ByteString.copyFromUtf8(this.addressLines_.get(i));
    }

    private void ensureAddressLinesIsMutable() {
        Internal.ProtobufList<String> protobufList = this.addressLines_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.addressLines_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    public void setAddressLines(int i, String str) {
        str.getClass();
        ensureAddressLinesIsMutable();
        this.addressLines_.set(i, str);
    }

    public void addAddressLines(String str) {
        str.getClass();
        ensureAddressLinesIsMutable();
        this.addressLines_.add(str);
    }

    public void addAllAddressLines(Iterable<String> iterable) {
        ensureAddressLinesIsMutable();
        AbstractMessageLite.addAll((Iterable) iterable, (List) this.addressLines_);
    }

    public void clearAddressLines() {
        this.addressLines_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void addAddressLinesBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        ensureAddressLinesIsMutable();
        this.addressLines_.add(byteString.toStringUtf8());
    }

    @Override
    public List<String> getRecipientsList() {
        return this.recipients_;
    }

    @Override
    public int getRecipientsCount() {
        return this.recipients_.size();
    }

    @Override
    public String getRecipients(int i) {
        return this.recipients_.get(i);
    }

    @Override
    public ByteString getRecipientsBytes(int i) {
        return ByteString.copyFromUtf8(this.recipients_.get(i));
    }

    private void ensureRecipientsIsMutable() {
        Internal.ProtobufList<String> protobufList = this.recipients_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.recipients_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    public void setRecipients(int i, String str) {
        str.getClass();
        ensureRecipientsIsMutable();
        this.recipients_.set(i, str);
    }

    public void addRecipients(String str) {
        str.getClass();
        ensureRecipientsIsMutable();
        this.recipients_.add(str);
    }

    public void addAllRecipients(Iterable<String> iterable) {
        ensureRecipientsIsMutable();
        AbstractMessageLite.addAll((Iterable) iterable, (List) this.recipients_);
    }

    public void clearRecipients() {
        this.recipients_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void addRecipientsBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        ensureRecipientsIsMutable();
        this.recipients_.add(byteString.toStringUtf8());
    }

    @Override
    public String getOrganization() {
        return this.organization_;
    }

    @Override
    public ByteString getOrganizationBytes() {
        return ByteString.copyFromUtf8(this.organization_);
    }

    public void setOrganization(String str) {
        str.getClass();
        this.organization_ = str;
    }

    public void clearOrganization() {
        this.organization_ = getDefaultInstance().getOrganization();
    }

    public void setOrganizationBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.organization_ = byteString.toStringUtf8();
    }

    public static PostalAddress parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static PostalAddress parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static PostalAddress parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static PostalAddress parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static PostalAddress parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static PostalAddress parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static PostalAddress parseFrom(InputStream inputStream) throws IOException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static PostalAddress parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static PostalAddress parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (PostalAddress) parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static PostalAddress parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (PostalAddress) parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static PostalAddress parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static PostalAddress parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (PostalAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(PostalAddress postalAddress) {
        return DEFAULT_INSTANCE.createBuilder(postalAddress);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<PostalAddress, Builder> implements PostalAddressOrBuilder {
        Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        private Builder() {
            super(PostalAddress.DEFAULT_INSTANCE);
        }

        @Override
        public int getRevision() {
            return ((PostalAddress) this.instance).getRevision();
        }

        public Builder setRevision(int i) {
            copyOnWrite();
            ((PostalAddress) this.instance).setRevision(i);
            return this;
        }

        public Builder clearRevision() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearRevision();
            return this;
        }

        @Override
        public String getRegionCode() {
            return ((PostalAddress) this.instance).getRegionCode();
        }

        @Override
        public ByteString getRegionCodeBytes() {
            return ((PostalAddress) this.instance).getRegionCodeBytes();
        }

        public Builder setRegionCode(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setRegionCode(str);
            return this;
        }

        public Builder clearRegionCode() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearRegionCode();
            return this;
        }

        public Builder setRegionCodeBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).setRegionCodeBytes(byteString);
            return this;
        }

        @Override
        public String getLanguageCode() {
            return ((PostalAddress) this.instance).getLanguageCode();
        }

        @Override
        public ByteString getLanguageCodeBytes() {
            return ((PostalAddress) this.instance).getLanguageCodeBytes();
        }

        public Builder setLanguageCode(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setLanguageCode(str);
            return this;
        }

        public Builder clearLanguageCode() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearLanguageCode();
            return this;
        }

        public Builder setLanguageCodeBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).setLanguageCodeBytes(byteString);
            return this;
        }

        @Override
        public String getPostalCode() {
            return ((PostalAddress) this.instance).getPostalCode();
        }

        @Override
        public ByteString getPostalCodeBytes() {
            return ((PostalAddress) this.instance).getPostalCodeBytes();
        }

        public Builder setPostalCode(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setPostalCode(str);
            return this;
        }

        public Builder clearPostalCode() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearPostalCode();
            return this;
        }

        public Builder setPostalCodeBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).setPostalCodeBytes(byteString);
            return this;
        }

        @Override
        public String getSortingCode() {
            return ((PostalAddress) this.instance).getSortingCode();
        }

        @Override
        public ByteString getSortingCodeBytes() {
            return ((PostalAddress) this.instance).getSortingCodeBytes();
        }

        public Builder setSortingCode(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setSortingCode(str);
            return this;
        }

        public Builder clearSortingCode() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearSortingCode();
            return this;
        }

        public Builder setSortingCodeBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).setSortingCodeBytes(byteString);
            return this;
        }

        @Override
        public String getAdministrativeArea() {
            return ((PostalAddress) this.instance).getAdministrativeArea();
        }

        @Override
        public ByteString getAdministrativeAreaBytes() {
            return ((PostalAddress) this.instance).getAdministrativeAreaBytes();
        }

        public Builder setAdministrativeArea(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setAdministrativeArea(str);
            return this;
        }

        public Builder clearAdministrativeArea() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearAdministrativeArea();
            return this;
        }

        public Builder setAdministrativeAreaBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).setAdministrativeAreaBytes(byteString);
            return this;
        }

        @Override
        public String getLocality() {
            return ((PostalAddress) this.instance).getLocality();
        }

        @Override
        public ByteString getLocalityBytes() {
            return ((PostalAddress) this.instance).getLocalityBytes();
        }

        public Builder setLocality(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setLocality(str);
            return this;
        }

        public Builder clearLocality() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearLocality();
            return this;
        }

        public Builder setLocalityBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).setLocalityBytes(byteString);
            return this;
        }

        @Override
        public String getSublocality() {
            return ((PostalAddress) this.instance).getSublocality();
        }

        @Override
        public ByteString getSublocalityBytes() {
            return ((PostalAddress) this.instance).getSublocalityBytes();
        }

        public Builder setSublocality(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setSublocality(str);
            return this;
        }

        public Builder clearSublocality() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearSublocality();
            return this;
        }

        public Builder setSublocalityBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).setSublocalityBytes(byteString);
            return this;
        }

        @Override
        public List<String> getAddressLinesList() {
            return Collections.unmodifiableList(((PostalAddress) this.instance).getAddressLinesList());
        }

        @Override
        public int getAddressLinesCount() {
            return ((PostalAddress) this.instance).getAddressLinesCount();
        }

        @Override
        public String getAddressLines(int i) {
            return ((PostalAddress) this.instance).getAddressLines(i);
        }

        @Override
        public ByteString getAddressLinesBytes(int i) {
            return ((PostalAddress) this.instance).getAddressLinesBytes(i);
        }

        public Builder setAddressLines(int i, String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setAddressLines(i, str);
            return this;
        }

        public Builder addAddressLines(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).addAddressLines(str);
            return this;
        }

        public Builder addAllAddressLines(Iterable<String> iterable) {
            copyOnWrite();
            ((PostalAddress) this.instance).addAllAddressLines(iterable);
            return this;
        }

        public Builder clearAddressLines() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearAddressLines();
            return this;
        }

        public Builder addAddressLinesBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).addAddressLinesBytes(byteString);
            return this;
        }

        @Override
        public List<String> getRecipientsList() {
            return Collections.unmodifiableList(((PostalAddress) this.instance).getRecipientsList());
        }

        @Override
        public int getRecipientsCount() {
            return ((PostalAddress) this.instance).getRecipientsCount();
        }

        @Override
        public String getRecipients(int i) {
            return ((PostalAddress) this.instance).getRecipients(i);
        }

        @Override
        public ByteString getRecipientsBytes(int i) {
            return ((PostalAddress) this.instance).getRecipientsBytes(i);
        }

        public Builder setRecipients(int i, String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setRecipients(i, str);
            return this;
        }

        public Builder addRecipients(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).addRecipients(str);
            return this;
        }

        public Builder addAllRecipients(Iterable<String> iterable) {
            copyOnWrite();
            ((PostalAddress) this.instance).addAllRecipients(iterable);
            return this;
        }

        public Builder clearRecipients() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearRecipients();
            return this;
        }

        public Builder addRecipientsBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).addRecipientsBytes(byteString);
            return this;
        }

        @Override
        public String getOrganization() {
            return ((PostalAddress) this.instance).getOrganization();
        }

        @Override
        public ByteString getOrganizationBytes() {
            return ((PostalAddress) this.instance).getOrganizationBytes();
        }

        public Builder setOrganization(String str) {
            copyOnWrite();
            ((PostalAddress) this.instance).setOrganization(str);
            return this;
        }

        public Builder clearOrganization() {
            copyOnWrite();
            ((PostalAddress) this.instance).clearOrganization();
            return this;
        }

        public Builder setOrganizationBytes(ByteString byteString) {
            copyOnWrite();
            ((PostalAddress) this.instance).setOrganizationBytes(byteString);
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
                return new PostalAddress();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return newMessageInfo(DEFAULT_INSTANCE, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0002\u0000\u0001\u0004\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006Ȉ\u0007Ȉ\bȈ\tȚ\nȚ\u000bȈ", new Object[]{"revision_", "regionCode_", "languageCode_", "postalCode_", "sortingCode_", "administrativeArea_", "locality_", "sublocality_", "addressLines_", "recipients_", "organization_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<PostalAddress> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (PostalAddress.class) {
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
        PostalAddress postalAddress = new PostalAddress();
        DEFAULT_INSTANCE = postalAddress;
        GeneratedMessageLite.registerDefaultInstance(PostalAddress.class, postalAddress);
    }

    public static PostalAddress getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<PostalAddress> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
