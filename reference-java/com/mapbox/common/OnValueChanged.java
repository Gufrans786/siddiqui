package com.mapbox.common;

import com.mapbox.bindgen.Value;

public interface OnValueChanged {
    void run(String str, Value value, Value value2);
}
