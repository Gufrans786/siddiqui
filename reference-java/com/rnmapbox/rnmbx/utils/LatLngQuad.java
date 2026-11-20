package com.rnmapbox.rnmbx.utils;

import java.util.ArrayList;
import java.util.List;

public class LatLngQuad {
    private final LatLng bottomLeft;
    private final LatLng bottomRight;
    private final LatLng topLeft;
    private final LatLng topRight;

    public LatLngQuad(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4) {
        this.topLeft = latLng;
        this.topRight = latLng2;
        this.bottomRight = latLng3;
        this.bottomLeft = latLng4;
    }

    public List<List<Double>> getCoordinates() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.topLeft.getArray());
        arrayList.add(this.topRight.getArray());
        arrayList.add(this.bottomRight.getArray());
        arrayList.add(this.bottomLeft.getArray());
        return arrayList;
    }
}
