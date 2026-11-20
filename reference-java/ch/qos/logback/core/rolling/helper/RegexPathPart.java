package ch.qos.logback.core.rolling.helper;

import java.io.File;
import java.util.List;
import java.util.regex.Pattern;

class RegexPathPart extends PathPart {
    private Pattern pattern;

    RegexPathPart(String str) {
        super(str);
        this.pattern = Pattern.compile(str);
    }

    @Override
    List<File> listFiles(FileProvider fileProvider) {
        return listFiles(fileProvider, ".");
    }

    @Override
    boolean matches(File file) {
        return this.pattern.matcher(file.getName()).find();
    }
}
