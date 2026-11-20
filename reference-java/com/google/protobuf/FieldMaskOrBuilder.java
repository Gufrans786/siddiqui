package com.google.protobuf;

import java.util.List;

public interface FieldMaskOrBuilder extends MessageLiteOrBuilder {
    String getPaths(int index);

    ByteString getPathsBytes(int index);

    int getPathsCount();

    List<String> getPathsList();
}
