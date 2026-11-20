package com.nimbusds.jose.shaded.gson;

import com.nimbusds.jose.shaded.gson.stream.JsonReader;
import java.io.IOException;

public interface ToNumberStrategy {
    Number readNumber(JsonReader jsonReader) throws IOException;
}
