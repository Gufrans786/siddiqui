package com.google.firebase.crashlytics.ndk;

import com.google.firebase.crashlytics.internal.NativeSessionFileProvider;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;

class SessionFilesProvider implements NativeSessionFileProvider {
    private final SessionFiles sessionFiles;

    SessionFilesProvider(SessionFiles sessionFiles) {
        this.sessionFiles = sessionFiles;
    }

    @Override
    public File getMinidumpFile() {
        return this.sessionFiles.nativeCore.minidump;
    }

    @Override
    public CrashlyticsReport.ApplicationExitInfo getApplicationExitInto() {
        if (this.sessionFiles.nativeCore != null) {
            return this.sessionFiles.nativeCore.applicationExitInfo;
        }
        return null;
    }

    @Override
    public File getBinaryImagesFile() {
        return this.sessionFiles.binaryImages;
    }

    @Override
    public File getMetadataFile() {
        return this.sessionFiles.metadata;
    }

    @Override
    public File getSessionFile() {
        return this.sessionFiles.session;
    }

    @Override
    public File getAppFile() {
        return this.sessionFiles.f3720app;
    }

    @Override
    public File getDeviceFile() {
        return this.sessionFiles.device;
    }

    @Override
    public File getOsFile() {
        return this.sessionFiles.os;
    }
}
