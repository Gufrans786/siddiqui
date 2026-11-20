package com.mapbox.geojson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

public class PointAsCoordinatesTypeAdapter extends BaseCoordinatesTypeAdapter<Point> {
    @Override
    public void write(JsonWriter jsonWriter, Point point) throws IOException {
        writePoint(jsonWriter, point);
    }

    @Override
    public Point read2(JsonReader jsonReader) throws IOException {
        return readPoint(jsonReader);
    }
}
