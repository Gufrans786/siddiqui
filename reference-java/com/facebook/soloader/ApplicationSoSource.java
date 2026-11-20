package com.facebook.soloader;

import android.content.Context;
import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;

public class ApplicationSoSource extends SoSource implements RecoverableSoSource {
    private final int flags;
    private DirectorySoSource soSource;

    public ApplicationSoSource(Context context, int i) {
        this.flags = i;
        this.soSource = new DirectorySoSource(getNativeLibDirFromContext(context), i);
    }

    private static File getNativeLibDirFromContext(Context context) {
        return new File(context.getApplicationInfo().nativeLibraryDir);
    }

    @Override
    public int loadLibrary(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return this.soSource.loadLibrary(str, i, threadPolicy);
    }

    @Override
    @Nullable
    public File getSoFileByName(String str) throws IOException {
        return this.soSource.getSoFileByName(str);
    }

    @Override
    @Nullable
    public String getLibraryPath(String str) throws IOException {
        return this.soSource.getLibraryPath(str);
    }

    @Override
    @Nullable
    public String[] getLibraryDependencies(String str) throws IOException {
        return this.soSource.getLibraryDependencies(str);
    }

    @Override
    @Nullable
    public File unpackLibrary(String str) throws IOException {
        return this.soSource.unpackLibrary(str);
    }

    @Override
    protected void prepare(int i) throws IOException {
        this.soSource.prepare(i);
    }

    @Override
    public void addToLdLibraryPath(Collection<String> collection) {
        this.soSource.addToLdLibraryPath(collection);
    }

    @Override
    public String getName() {
        return "ApplicationSoSource";
    }

    @Override
    public String toString() {
        return getName() + "[" + this.soSource.toString() + "]";
    }

    @Override
    public SoSource recover(Context context) {
        this.soSource = new DirectorySoSource(getNativeLibDirFromContext(context), this.flags | 1);
        return this;
    }
}
