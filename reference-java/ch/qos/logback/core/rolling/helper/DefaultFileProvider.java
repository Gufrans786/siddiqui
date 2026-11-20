package ch.qos.logback.core.rolling.helper;

import java.io.File;
import java.io.FilenameFilter;

public class DefaultFileProvider implements FileProvider {
    @Override
    public boolean deleteFile(File file) {
        return file.delete();
    }

    @Override
    public boolean exists(File file) {
        return file.exists();
    }

    @Override
    public boolean isDirectory(File file) {
        return file.isDirectory();
    }

    @Override
    public long length(File file) {
        return file.length();
    }

    @Override
    public String[] list(File file, FilenameFilter filenameFilter) {
        return file.list(filenameFilter);
    }

    @Override
    public File[] listFiles(File file, FilenameFilter filenameFilter) {
        return file.listFiles(filenameFilter);
    }
}
