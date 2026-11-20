package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface ReadStream {
    boolean isExhausted();

    boolean isReadable();

    Expected<String, Long> read(Buffer buffer);

    long readBytes();
}
