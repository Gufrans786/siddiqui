package com.google.api;

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

public final class Usage extends GeneratedMessageLite<Usage, Builder> implements UsageOrBuilder {
    private static final Usage DEFAULT_INSTANCE;
    private static volatile Parser<Usage> PARSER = null;
    public static final int PRODUCER_NOTIFICATION_CHANNEL_FIELD_NUMBER = 7;
    public static final int REQUIREMENTS_FIELD_NUMBER = 1;
    public static final int RULES_FIELD_NUMBER = 6;
    private Internal.ProtobufList<String> requirements_ = GeneratedMessageLite.emptyProtobufList();
    private Internal.ProtobufList<UsageRule> rules_ = emptyProtobufList();
    private String producerNotificationChannel_ = "";

    private Usage() {
    }

    @Override
    public List<String> getRequirementsList() {
        return this.requirements_;
    }

    @Override
    public int getRequirementsCount() {
        return this.requirements_.size();
    }

    @Override
    public String getRequirements(int i) {
        return this.requirements_.get(i);
    }

    @Override
    public ByteString getRequirementsBytes(int i) {
        return ByteString.copyFromUtf8(this.requirements_.get(i));
    }

    private void ensureRequirementsIsMutable() {
        Internal.ProtobufList<String> protobufList = this.requirements_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.requirements_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    public void setRequirements(int i, String str) {
        str.getClass();
        ensureRequirementsIsMutable();
        this.requirements_.set(i, str);
    }

    public void addRequirements(String str) {
        str.getClass();
        ensureRequirementsIsMutable();
        this.requirements_.add(str);
    }

    public void addAllRequirements(Iterable<String> iterable) {
        ensureRequirementsIsMutable();
        AbstractMessageLite.addAll((Iterable) iterable, (List) this.requirements_);
    }

    public void clearRequirements() {
        this.requirements_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void addRequirementsBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        ensureRequirementsIsMutable();
        this.requirements_.add(byteString.toStringUtf8());
    }

    @Override
    public List<UsageRule> getRulesList() {
        return this.rules_;
    }

    public List<? extends UsageRuleOrBuilder> getRulesOrBuilderList() {
        return this.rules_;
    }

    @Override
    public int getRulesCount() {
        return this.rules_.size();
    }

    @Override
    public UsageRule getRules(int i) {
        return this.rules_.get(i);
    }

    public UsageRuleOrBuilder getRulesOrBuilder(int i) {
        return this.rules_.get(i);
    }

    private void ensureRulesIsMutable() {
        Internal.ProtobufList<UsageRule> protobufList = this.rules_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.rules_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    public void setRules(int i, UsageRule usageRule) {
        usageRule.getClass();
        ensureRulesIsMutable();
        this.rules_.set(i, usageRule);
    }

    public void addRules(UsageRule usageRule) {
        usageRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(usageRule);
    }

    public void addRules(int i, UsageRule usageRule) {
        usageRule.getClass();
        ensureRulesIsMutable();
        this.rules_.add(i, usageRule);
    }

    public void addAllRules(Iterable<? extends UsageRule> iterable) {
        ensureRulesIsMutable();
        AbstractMessageLite.addAll((Iterable) iterable, (List) this.rules_);
    }

    public void clearRules() {
        this.rules_ = emptyProtobufList();
    }

    public void removeRules(int i) {
        ensureRulesIsMutable();
        this.rules_.remove(i);
    }

    @Override
    public String getProducerNotificationChannel() {
        return this.producerNotificationChannel_;
    }

    @Override
    public ByteString getProducerNotificationChannelBytes() {
        return ByteString.copyFromUtf8(this.producerNotificationChannel_);
    }

    public void setProducerNotificationChannel(String str) {
        str.getClass();
        this.producerNotificationChannel_ = str;
    }

    public void clearProducerNotificationChannel() {
        this.producerNotificationChannel_ = getDefaultInstance().getProducerNotificationChannel();
    }

    public void setProducerNotificationChannelBytes(ByteString byteString) {
        checkByteStringIsUtf8(byteString);
        this.producerNotificationChannel_ = byteString.toStringUtf8();
    }

    public static Usage parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Usage parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Usage parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Usage parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Usage parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Usage parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Usage parseFrom(InputStream inputStream) throws IOException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Usage parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Usage parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Usage) parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Usage parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Usage) parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Usage parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Usage parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Usage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(Usage usage) {
        return DEFAULT_INSTANCE.createBuilder(usage);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Usage, Builder> implements UsageOrBuilder {
        Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        private Builder() {
            super(Usage.DEFAULT_INSTANCE);
        }

        @Override
        public List<String> getRequirementsList() {
            return Collections.unmodifiableList(((Usage) this.instance).getRequirementsList());
        }

        @Override
        public int getRequirementsCount() {
            return ((Usage) this.instance).getRequirementsCount();
        }

        @Override
        public String getRequirements(int i) {
            return ((Usage) this.instance).getRequirements(i);
        }

        @Override
        public ByteString getRequirementsBytes(int i) {
            return ((Usage) this.instance).getRequirementsBytes(i);
        }

        public Builder setRequirements(int i, String str) {
            copyOnWrite();
            ((Usage) this.instance).setRequirements(i, str);
            return this;
        }

        public Builder addRequirements(String str) {
            copyOnWrite();
            ((Usage) this.instance).addRequirements(str);
            return this;
        }

        public Builder addAllRequirements(Iterable<String> iterable) {
            copyOnWrite();
            ((Usage) this.instance).addAllRequirements(iterable);
            return this;
        }

        public Builder clearRequirements() {
            copyOnWrite();
            ((Usage) this.instance).clearRequirements();
            return this;
        }

        public Builder addRequirementsBytes(ByteString byteString) {
            copyOnWrite();
            ((Usage) this.instance).addRequirementsBytes(byteString);
            return this;
        }

        @Override
        public List<UsageRule> getRulesList() {
            return Collections.unmodifiableList(((Usage) this.instance).getRulesList());
        }

        @Override
        public int getRulesCount() {
            return ((Usage) this.instance).getRulesCount();
        }

        @Override
        public UsageRule getRules(int i) {
            return ((Usage) this.instance).getRules(i);
        }

        public Builder setRules(int i, UsageRule usageRule) {
            copyOnWrite();
            ((Usage) this.instance).setRules(i, usageRule);
            return this;
        }

        public Builder setRules(int i, UsageRule.Builder builder) {
            copyOnWrite();
            ((Usage) this.instance).setRules(i, builder.build());
            return this;
        }

        public Builder addRules(UsageRule usageRule) {
            copyOnWrite();
            ((Usage) this.instance).addRules(usageRule);
            return this;
        }

        public Builder addRules(int i, UsageRule usageRule) {
            copyOnWrite();
            ((Usage) this.instance).addRules(i, usageRule);
            return this;
        }

        public Builder addRules(UsageRule.Builder builder) {
            copyOnWrite();
            ((Usage) this.instance).addRules(builder.build());
            return this;
        }

        public Builder addRules(int i, UsageRule.Builder builder) {
            copyOnWrite();
            ((Usage) this.instance).addRules(i, builder.build());
            return this;
        }

        public Builder addAllRules(Iterable<? extends UsageRule> iterable) {
            copyOnWrite();
            ((Usage) this.instance).addAllRules(iterable);
            return this;
        }

        public Builder clearRules() {
            copyOnWrite();
            ((Usage) this.instance).clearRules();
            return this;
        }

        public Builder removeRules(int i) {
            copyOnWrite();
            ((Usage) this.instance).removeRules(i);
            return this;
        }

        @Override
        public String getProducerNotificationChannel() {
            return ((Usage) this.instance).getProducerNotificationChannel();
        }

        @Override
        public ByteString getProducerNotificationChannelBytes() {
            return ((Usage) this.instance).getProducerNotificationChannelBytes();
        }

        public Builder setProducerNotificationChannel(String str) {
            copyOnWrite();
            ((Usage) this.instance).setProducerNotificationChannel(str);
            return this;
        }

        public Builder clearProducerNotificationChannel() {
            copyOnWrite();
            ((Usage) this.instance).clearProducerNotificationChannel();
            return this;
        }

        public Builder setProducerNotificationChannelBytes(ByteString byteString) {
            copyOnWrite();
            ((Usage) this.instance).setProducerNotificationChannelBytes(byteString);
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
                return new Usage();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0007\u0003\u0000\u0002\u0000\u0001Ț\u0006\u001b\u0007Ȉ", new Object[]{"requirements_", "rules_", UsageRule.class, "producerNotificationChannel_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<Usage> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (Usage.class) {
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
        Usage usage = new Usage();
        DEFAULT_INSTANCE = usage;
        GeneratedMessageLite.registerDefaultInstance(Usage.class, usage);
    }

    public static Usage getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Usage> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
