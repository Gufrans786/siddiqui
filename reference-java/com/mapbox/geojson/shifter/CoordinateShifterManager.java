package com.mapbox.geojson.shifter;

import com.mapbox.geojson.Point;
import java.util.Arrays;
import java.util.List;

public final class CoordinateShifterManager {
    private static final CoordinateShifter DEFAULT;
    private static volatile CoordinateShifter coordinateShifter;

    static {
        CoordinateShifter coordinateShifter2 = new CoordinateShifter() {
            @Override
            public List<Double> unshiftPoint(List<Double> list) {
                return list;
            }

            @Override
            public List<Double> shiftLonLat(double d, double d2) {
                return Arrays.asList(Double.valueOf(d), Double.valueOf(d2));
            }

            @Override
            public List<Double> shiftLonLatAlt(double d, double d2, double d3) {
                return Double.isNaN(d3) ? Arrays.asList(Double.valueOf(d), Double.valueOf(d2)) : Arrays.asList(Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3));
            }

            @Override
            public List<Double> unshiftPoint(Point point) {
                return point.coordinates();
            }
        };
        DEFAULT = coordinateShifter2;
        coordinateShifter = coordinateShifter2;
    }

    public static CoordinateShifter getCoordinateShifter() {
        return coordinateShifter;
    }

    public static void setCoordinateShifter(CoordinateShifter coordinateShifter2) {
        if (coordinateShifter2 == null) {
            coordinateShifter2 = DEFAULT;
        }
        coordinateShifter = coordinateShifter2;
    }

    public static boolean isUsingDefaultShifter() {
        return coordinateShifter == DEFAULT;
    }
}
