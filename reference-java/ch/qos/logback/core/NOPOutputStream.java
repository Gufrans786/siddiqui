package ch.qos.logback.core;

import java.io.IOException;
import java.io.OutputStream;

public class NOPOutputStream extends OutputStream {
    @Override
    public void write(int i) throws IOException {
    }
}
