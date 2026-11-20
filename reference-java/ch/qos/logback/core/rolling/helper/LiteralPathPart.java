package ch.qos.logback.core.rolling.helper;

import java.io.File;
import java.util.List;

class LiteralPathPart extends PathPart {
    LiteralPathPart(String str) {
        super(str);
    }

    @Override
    List<File> listFiles(FileProvider fileProvider) {
        return listFiles(fileProvider, this.part);
    }

    @Override
    boolean matches(File file) {
        return file.getName().equals(this.part);
    }
}
