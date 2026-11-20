package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;

public final class QuotaLimit extends GeneratedMessageLite<QuotaLimit, Builder> implements QuotaLimitOrBuilder {
    private static final QuotaLimit DEFAULT_INSTANCE;
    public static final int DEFAULT_LIMIT_FIELD_NUMBER = 3;
    public static final int DESCRIPTION_FIELD_NUMBER = 2;
    public static final int DISPLAY_NAME_FIELD_NUMBER = 12;
    public static final int DURATION_FIELD_NUMBER = 5;
    public static final int FREE_TIER_FIELD_NUMBER = 7;
    public static final int MAX_LIMIT_FIELD_NUMBER = 4;
    public static final int METRIC_FIELD_NUMBER = 8;
    public static final int NAME_FIELD_NUMBER = 6;
    private static volatile Parser<QuotaLimit> PARSER = null;
    public static final int UNIT_FIELD_NUMBER = 9;
    public static final int VALUES_FIELD_NUMBER = 10;
    private long defaultLimit_;
    private long freeTier_;
    private long maxLimit_;
    private MapFieldLite<String, Long> values_ = MapFieldLite.emptyMapField();
    private String name_ = "";
    private String description_ = "";
    private String duration_ = "";
    private String metric_ = "";
    private String unit_ = "";
    private String displayName_ = "";

    private QuotaLimit() {
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
    public String getDescription() {
        return this.description_;
    }

    @Override
    public ByteString getDescriptionBytes() {
        return ByteString.copyFromUtf8(this.description_);
    }

    public void setDescription(String str) {
        str.getClass();
        this.description_ = str;
    }

    public void clearDescription() {
        this.description_ = getDefaultInstance().getDescription();
    }

    public void setDescriptionBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.description_ = byteString.toStringUtf8();
    }

    @Override
    public long getDefaultLimit() {
        return this.defaultLimit_;
    }

    public void setDefaultLimit(long j) {
        this.defaultLimit_ = j;
    }

    public void clearDefaultLimit() {
        this.defaultLimit_ = 0L;
    }

    @Override
    public long getMaxLimit() {
        return this.maxLimit_;
    }

    public void setMaxLimit(long j) {
        this.maxLimit_ = j;
    }

    public void clearMaxLimit() {
        this.maxLimit_ = 0L;
    }

    @Override
    public long getFreeTier() {
        return this.freeTier_;
    }

    public void setFreeTier(long j) {
        this.freeTier_ = j;
    }

    public void clearFreeTier() {
        this.freeTier_ = 0L;
    }

    @Override
    public String getDuration() {
        return this.duration_;
    }

    @Override
    public ByteString getDurationBytes() {
        return ByteString.copyFromUtf8(this.duration_);
    }

    public void setDuration(String str) {
        str.getClass();
        this.duration_ = str;
    }

    public void clearDuration() {
        this.duration_ = getDefaultInstance().getDuration();
    }

    public void setDurationBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.duration_ = byteString.toStringUtf8();
    }

    @Override
    public String getMetric() {
        return this.metric_;
    }

    @Override
    public ByteString getMetricBytes() {
        return ByteString.copyFromUtf8(this.metric_);
    }

    public void setMetric(String str) {
        str.getClass();
        this.metric_ = str;
    }

    public void clearMetric() {
        this.metric_ = getDefaultInstance().getMetric();
    }

    public void setMetricBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.metric_ = byteString.toStringUtf8();
    }

    @Override
    public String getUnit() {
        return this.unit_;
    }

    @Override
    public ByteString getUnitBytes() {
        return ByteString.copyFromUtf8(this.unit_);
    }

    public void setUnit(String str) {
        str.getClass();
        this.unit_ = str;
    }

    public void clearUnit() {
        this.unit_ = getDefaultInstance().getUnit();
    }

    public void setUnitBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.unit_ = byteString.toStringUtf8();
    }

    private static final class ValuesDefaultEntryHolder {
        static final MapEntryLite<String, Long> defaultEntry = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.INT64, 0L);

        private ValuesDefaultEntryHolder() {
        }
    }

    private MapFieldLite<String, Long> internalGetValues() {
        return this.values_;
    }

    private MapFieldLite<String, Long> internalGetMutableValues() {
        if (!this.values_.isMutable()) {
            this.values_ = this.values_.mutableCopy();
        }
        return this.values_;
    }

    @Override
    public int getValuesCount() {
        return internalGetValues().size();
    }

    @Override
    public boolean containsValues(String str) {
        str.getClass();
        return internalGetValues().containsKey(str);
    }

    @Override
    @Deprecated
    public Map<String, Long> getValues() {
        return getValuesMap();
    }

    @Override
    public Map<String, Long> getValuesMap() {
        return Collections.unmodifiableMap(internalGetValues());
    }

    @Override
    public long getValuesOrDefault(String str, long j) {
        str.getClass();
        MapFieldLite<String, Long> mapFieldLiteInternalGetValues = internalGetValues();
        return mapFieldLiteInternalGetValues.containsKey(str) ? mapFieldLiteInternalGetValues.get(str).longValue() : j;
    }

    @Override
    public long getValuesOrThrow(String str) {
        str.getClass();
        MapFieldLite<String, Long> mapFieldLiteInternalGetValues = internalGetValues();
        if (!mapFieldLiteInternalGetValues.containsKey(str)) {
            throw new IllegalArgumentException();
        }
        return mapFieldLiteInternalGetValues.get(str).longValue();
    }

    public Map<String, Long> getMutableValuesMap() {
        return internalGetMutableValues();
    }

    @Override
    public String getDisplayName() {
        return this.displayName_;
    }

    @Override
    public ByteString getDisplayNameBytes() {
        return ByteString.copyFromUtf8(this.displayName_);
    }

    public void setDisplayName(String str) {
        str.getClass();
        this.displayName_ = str;
    }

    public void clearDisplayName() {
        this.displayName_ = getDefaultInstance().getDisplayName();
    }

    public void setDisplayNameBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.displayName_ = byteString.toStringUtf8();
    }

    public static QuotaLimit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static QuotaLimit parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static QuotaLimit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static QuotaLimit parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static QuotaLimit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static QuotaLimit parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static QuotaLimit parseFrom(InputStream inputStream) throws IOException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static QuotaLimit parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static QuotaLimit parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (QuotaLimit) parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static QuotaLimit parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (QuotaLimit) parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static QuotaLimit parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static QuotaLimit parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (QuotaLimit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(QuotaLimit quotaLimit) {
        return DEFAULT_INSTANCE.createBuilder(quotaLimit);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<QuotaLimit, Builder> implements QuotaLimitOrBuilder {
        Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        private Builder() {
            super(QuotaLimit.DEFAULT_INSTANCE);
        }

        @Override
        public String getName() {
            return ((QuotaLimit) this.instance).getName();
        }

        @Override
        public ByteString getNameBytes() {
            return ((QuotaLimit) this.instance).getNameBytes();
        }

        public Builder setName(String str) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setName(str);
            return this;
        }

        public Builder clearName() {
            copyOnWrite();
            ((QuotaLimit) this.instance).clearName();
            return this;
        }

        public Builder setNameBytes(ByteString byteString) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setNameBytes(byteString);
            return this;
        }

        @Override
        public String getDescription() {
            return ((QuotaLimit) this.instance).getDescription();
        }

        @Override
        public ByteString getDescriptionBytes() {
            return ((QuotaLimit) this.instance).getDescriptionBytes();
        }

        public Builder setDescription(String str) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setDescription(str);
            return this;
        }

        public Builder clearDescription() {
            copyOnWrite();
            ((QuotaLimit) this.instance).clearDescription();
            return this;
        }

        public Builder setDescriptionBytes(ByteString byteString) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setDescriptionBytes(byteString);
            return this;
        }

        @Override
        public long getDefaultLimit() {
            return ((QuotaLimit) this.instance).getDefaultLimit();
        }

        public Builder setDefaultLimit(long j) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setDefaultLimit(j);
            return this;
        }

        public Builder clearDefaultLimit() {
            copyOnWrite();
            ((QuotaLimit) this.instance).clearDefaultLimit();
            return this;
        }

        @Override
        public long getMaxLimit() {
            return ((QuotaLimit) this.instance).getMaxLimit();
        }

        public Builder setMaxLimit(long j) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setMaxLimit(j);
            return this;
        }

        public Builder clearMaxLimit() {
            copyOnWrite();
            ((QuotaLimit) this.instance).clearMaxLimit();
            return this;
        }

        @Override
        public long getFreeTier() {
            return ((QuotaLimit) this.instance).getFreeTier();
        }

        public Builder setFreeTier(long j) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setFreeTier(j);
            return this;
        }

        public Builder clearFreeTier() {
            copyOnWrite();
            ((QuotaLimit) this.instance).clearFreeTier();
            return this;
        }

        @Override
        public String getDuration() {
            return ((QuotaLimit) this.instance).getDuration();
        }

        @Override
        public ByteString getDurationBytes() {
            return ((QuotaLimit) this.instance).getDurationBytes();
        }

        public Builder setDuration(String str) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setDuration(str);
            return this;
        }

        public Builder clearDuration() {
            copyOnWrite();
            ((QuotaLimit) this.instance).clearDuration();
            return this;
        }

        public Builder setDurationBytes(ByteString byteString) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setDurationBytes(byteString);
            return this;
        }

        @Override
        public String getMetric() {
            return ((QuotaLimit) this.instance).getMetric();
        }

        @Override
        public ByteString getMetricBytes() {
            return ((QuotaLimit) this.instance).getMetricBytes();
        }

        public Builder setMetric(String str) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setMetric(str);
            return this;
        }

        public Builder clearMetric() {
            copyOnWrite();
            ((QuotaLimit) this.instance).clearMetric();
            return this;
        }

        public Builder setMetricBytes(ByteString byteString) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setMetricBytes(byteString);
            return this;
        }

        @Override
        public String getUnit() {
            return ((QuotaLimit) this.instance).getUnit();
        }

        @Override
        public ByteString getUnitBytes() {
            return ((QuotaLimit) this.instance).getUnitBytes();
        }

        public Builder setUnit(String str) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setUnit(str);
            return this;
        }

        public Builder clearUnit() {
            copyOnWrite();
            ((QuotaLimit) this.instance).clearUnit();
            return this;
        }

        public Builder setUnitBytes(ByteString byteString) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setUnitBytes(byteString);
            return this;
        }

        @Override
        public int getValuesCount() {
            return ((QuotaLimit) this.instance).getValuesMap().size();
        }

        @Override
        public boolean containsValues(String str) {
            str.getClass();
            return ((QuotaLimit) this.instance).getValuesMap().containsKey(str);
        }

        public Builder clearValues() {
            copyOnWrite();
            ((QuotaLimit) this.instance).getMutableValuesMap().clear();
            return this;
        }

        public Builder removeValues(String str) {
            str.getClass();
            copyOnWrite();
            ((QuotaLimit) this.instance).getMutableValuesMap().remove(str);
            return this;
        }

        @Override
        @Deprecated
        public Map<String, Long> getValues() {
            return getValuesMap();
        }

        @Override
        public Map<String, Long> getValuesMap() {
            return Collections.unmodifiableMap(((QuotaLimit) this.instance).getValuesMap());
        }

        @Override
        public long getValuesOrDefault(String str, long j) {
            str.getClass();
            Map<String, Long> valuesMap = ((QuotaLimit) this.instance).getValuesMap();
            return valuesMap.containsKey(str) ? valuesMap.get(str).longValue() : j;
        }

        @Override
        public long getValuesOrThrow(String str) {
            str.getClass();
            Map<String, Long> valuesMap = ((QuotaLimit) this.instance).getValuesMap();
            if (!valuesMap.containsKey(str)) {
                throw new IllegalArgumentException();
            }
            return valuesMap.get(str).longValue();
        }

        public Builder putValues(String str, long j) {
            str.getClass();
            copyOnWrite();
            ((QuotaLimit) this.instance).getMutableValuesMap().put(str, Long.valueOf(j));
            return this;
        }

        public Builder putAllValues(Map<String, Long> map) {
            copyOnWrite();
            ((QuotaLimit) this.instance).getMutableValuesMap().putAll(map);
            return this;
        }

        @Override
        public String getDisplayName() {
            return ((QuotaLimit) this.instance).getDisplayName();
        }

        @Override
        public ByteString getDisplayNameBytes() {
            return ((QuotaLimit) this.instance).getDisplayNameBytes();
        }

        public Builder setDisplayName(String str) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setDisplayName(str);
            return this;
        }

        public Builder clearDisplayName() {
            copyOnWrite();
            ((QuotaLimit) this.instance).clearDisplayName();
            return this;
        }

        public Builder setDisplayNameBytes(ByteString byteString) {
            copyOnWrite();
            ((QuotaLimit) this.instance).setDisplayNameBytes(byteString);
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
                return new QuotaLimit();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0002\f\n\u0001\u0000\u0000\u0002Ȉ\u0003\u0002\u0004\u0002\u0005Ȉ\u0006Ȉ\u0007\u0002\bȈ\tȈ\n2\fȈ", new Object[]{"description_", "defaultLimit_", "maxLimit_", "duration_", "name_", "freeTier_", "metric_", "unit_", "values_", ValuesDefaultEntryHolder.defaultEntry, "displayName_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<QuotaLimit> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (QuotaLimit.class) {
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
        QuotaLimit quotaLimit = new QuotaLimit();
        DEFAULT_INSTANCE = quotaLimit;
        GeneratedMessageLite.registerDefaultInstance(QuotaLimit.class, quotaLimit);
    }

    public static QuotaLimit getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<QuotaLimit> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
