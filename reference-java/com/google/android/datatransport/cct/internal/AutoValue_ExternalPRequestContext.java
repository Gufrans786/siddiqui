package com.google.android.datatransport.cct.internal;

final class AutoValue_ExternalPRequestContext extends ExternalPRequestContext {
    private final Integer originAssociatedProductId;

    private AutoValue_ExternalPRequestContext(Integer num) {
        this.originAssociatedProductId = num;
    }

    @Override
    public Integer getOriginAssociatedProductId() {
        return this.originAssociatedProductId;
    }

    public String toString() {
        return "ExternalPRequestContext{originAssociatedProductId=" + this.originAssociatedProductId + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ExternalPRequestContext)) {
            return false;
        }
        Integer num = this.originAssociatedProductId;
        Integer originAssociatedProductId = ((ExternalPRequestContext) obj).getOriginAssociatedProductId();
        if (num == null) {
            return originAssociatedProductId == null;
        }
        return num.equals(originAssociatedProductId);
    }

    public int hashCode() {
        Integer num = this.originAssociatedProductId;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    static final class Builder extends ExternalPRequestContext.Builder {
        private Integer originAssociatedProductId;

        Builder() {
        }

        @Override
        public ExternalPRequestContext.Builder setOriginAssociatedProductId(Integer num) {
            this.originAssociatedProductId = num;
            return this;
        }

        @Override
        public ExternalPRequestContext build() {
            return new AutoValue_ExternalPRequestContext(this.originAssociatedProductId);
        }
    }
}
