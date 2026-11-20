package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
class MultiReader extends Reader {

    @CheckForNull
    private Reader current;
    private final Iterator<? extends CharSource> it;

    MultiReader(Iterator<? extends CharSource> readers) throws IOException {
        this.it = readers;
        advance();
    }

    private void advance() throws IOException {
        close();
        if (this.it.hasNext()) {
            this.current = this.it.next().openStream();
        }
    }

    @Override
    public int read(char[] cbuf, int off, int len) throws IOException {
        Preconditions.checkNotNull(cbuf);
        Reader reader = this.current;
        if (reader == null) {
            return -1;
        }
        int i = reader.read(cbuf, off, len);
        if (i != -1) {
            return i;
        }
        advance();
        return read(cbuf, off, len);
    }

    @Override
    public long skip(long n2) throws IOException {
        Preconditions.checkArgument(n2 >= 0, "n is negative");
        if (n2 > 0) {
            while (true) {
                Reader reader = this.current;
                if (reader == null) {
                    break;
                }
                long jSkip = reader.skip(n2);
                if (jSkip > 0) {
                    return jSkip;
                }
                advance();
            }
        }
        return 0L;
    }

    @Override
    public boolean ready() throws IOException {
        Reader reader = this.current;
        return reader != null && reader.ready();
    }

    @Override
    public void close() throws IOException {
        Reader reader = this.current;
        if (reader != null) {
            try {
                reader.close();
            } finally {
                this.current = null;
            }
        }
    }
}
