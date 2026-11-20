package com.mapbox.bindgen;

import java.util.ArrayList;

class ObjectReferences {
    private Object mainReference;
    private ArrayList<Object> additionalReferences = null;
    private int referenceCount = 1;

    public ObjectReferences(Object obj) {
        this.mainReference = obj;
    }

    private void deleteMainReference() {
        if (this.mainReference != null) {
            this.referenceCount--;
            this.mainReference = null;
        }
    }

    private void deleteAdditionalReference(int i) {
        int i2 = i - 1;
        ArrayList<Object> arrayList = this.additionalReferences;
        if (arrayList == null || i2 >= arrayList.size()) {
            throw new IndexOutOfBoundsException("Attempted to delete an invalid reference index: " + i2);
        }
        if (this.additionalReferences.get(i2) != null) {
            this.referenceCount--;
            this.additionalReferences.set(i2, null);
        }
    }

    public void delete(int i) {
        if (i == 0) {
            deleteMainReference();
        } else if (i > 0) {
            deleteAdditionalReference(i);
        }
    }

    public Object get(int i) {
        if (i == 0) {
            return this.mainReference;
        }
        if (i < 0) {
            return null;
        }
        int i2 = i - 1;
        ArrayList<Object> arrayList = this.additionalReferences;
        if (arrayList == null || i2 >= arrayList.size()) {
            throw new IndexOutOfBoundsException("Attempted to access an invalid reference index: " + i2);
        }
        return this.additionalReferences.get(i2);
    }

    public int addAdditional(Object obj) {
        this.referenceCount++;
        if (this.additionalReferences == null) {
            this.additionalReferences = new ArrayList<>(3);
        }
        this.additionalReferences.add(obj);
        return this.additionalReferences.size();
    }

    public int getReferenceCount() {
        return this.referenceCount;
    }
}
