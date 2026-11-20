package com.facebook.imagepipeline.image;

import java.util.Map;

public class ImageInfoImpl implements ImageInfo {
    private final Map<String, Object> extras;
    private final int height;
    private final QualityInfo qualityInfo;
    private final int sizeInBytes;
    private final int width;

    public ImageInfoImpl(int i, int i2, int i3, QualityInfo qualityInfo, Map<String, Object> map) {
        this.width = i;
        this.height = i2;
        this.sizeInBytes = i3;
        this.qualityInfo = qualityInfo;
        this.extras = map;
    }

    @Override
    public Map<String, Object> getExtras() {
        return this.extras;
    }

    @Override
    public int getWidth() {
        return this.width;
    }

    @Override
    public int getHeight() {
        return this.height;
    }

    @Override
    public int getSizeInBytes() {
        return this.sizeInBytes;
    }

    @Override
    public QualityInfo getQualityInfo() {
        return this.qualityInfo;
    }
}
