package com.google.firebase.crashlytics.internal.model;

import java.util.List;

final class AutoValue_CrashlyticsReport_FilesPayload extends CrashlyticsReport.FilesPayload {
    private final List<CrashlyticsReport.FilesPayload.File> files;
    private final String orgId;

    private AutoValue_CrashlyticsReport_FilesPayload(List<CrashlyticsReport.FilesPayload.File> list, String str) {
        this.files = list;
        this.orgId = str;
    }

    @Override
    public List<CrashlyticsReport.FilesPayload.File> getFiles() {
        return this.files;
    }

    @Override
    public String getOrgId() {
        return this.orgId;
    }

    public String toString() {
        return "FilesPayload{files=" + this.files + ", orgId=" + this.orgId + "}";
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.FilesPayload) {
            CrashlyticsReport.FilesPayload filesPayload = (CrashlyticsReport.FilesPayload) obj;
            if (this.files.equals(filesPayload.getFiles()) && ((str = this.orgId) != null ? str.equals(filesPayload.getOrgId()) : filesPayload.getOrgId() == null)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.files.hashCode() ^ 1000003) * 1000003;
        String str = this.orgId;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    @Override
    CrashlyticsReport.FilesPayload.Builder toBuilder() {
        return new Builder(this);
    }

    static final class Builder extends CrashlyticsReport.FilesPayload.Builder {
        private List<CrashlyticsReport.FilesPayload.File> files;
        private String orgId;

        Builder() {
        }

        private Builder(CrashlyticsReport.FilesPayload filesPayload) {
            this.files = filesPayload.getFiles();
            this.orgId = filesPayload.getOrgId();
        }

        @Override
        public CrashlyticsReport.FilesPayload.Builder setFiles(List<CrashlyticsReport.FilesPayload.File> list) {
            if (list == null) {
                throw new NullPointerException("Null files");
            }
            this.files = list;
            return this;
        }

        @Override
        public CrashlyticsReport.FilesPayload.Builder setOrgId(String str) {
            this.orgId = str;
            return this;
        }

        @Override
        public CrashlyticsReport.FilesPayload build() {
            if (this.files == null) {
                throw new IllegalStateException("Missing required properties: files");
            }
            return new AutoValue_CrashlyticsReport_FilesPayload(this.files, this.orgId);
        }
    }
}
