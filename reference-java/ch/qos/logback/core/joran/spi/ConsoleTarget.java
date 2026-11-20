package ch.qos.logback.core.joran.spi;

import java.io.IOException;
import java.io.OutputStream;

@Deprecated
public enum ConsoleTarget {
    SystemOut("System.out", new OutputStream() {
        @Override
        public void flush() throws IOException {
            System.out.flush();
        }

        @Override
        public void write(int i) throws IOException {
            System.out.write(i);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            System.out.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i, int i2) throws IOException {
            System.out.write(bArr, i, i2);
        }
    }),
    SystemErr("System.err", new OutputStream() {
        @Override
        public void flush() throws IOException {
            System.err.flush();
        }

        @Override
        public void write(int i) throws IOException {
            System.err.write(i);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            System.err.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i, int i2) throws IOException {
            System.err.write(bArr, i, i2);
        }
    });

    private final String name;
    private final OutputStream stream;

    ConsoleTarget(String str, OutputStream outputStream) {
        this.name = str;
        this.stream = outputStream;
    }

    public static ConsoleTarget findByName(String str) {
        for (ConsoleTarget consoleTarget : values()) {
            if (consoleTarget.name.equalsIgnoreCase(str)) {
                return consoleTarget;
            }
        }
        return null;
    }

    public String getName() {
        return this.name;
    }

    public OutputStream getStream() {
        return this.stream;
    }

    @Override
    public String toString() {
        return this.name;
    }
}
