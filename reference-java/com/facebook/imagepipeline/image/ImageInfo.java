package com.facebook.imagepipeline.image;

public interface ImageInfo extends HasImageMetadata {
    int getHeight();

    QualityInfo getQualityInfo();

    default int getSizeInBytes() {
        return 0;
    }

    int getWidth();
}
