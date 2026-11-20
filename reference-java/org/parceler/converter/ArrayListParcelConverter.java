package org.parceler.converter;

import java.util.ArrayList;

public abstract class ArrayListParcelConverter<T> extends CollectionParcelConverter<T, ArrayList<T>> {
    @Override
    public ArrayList<T> createCollection() {
        return new ArrayList<>();
    }
}
