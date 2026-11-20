package com.google.protobuf;

import java.util.List;

public interface ListValueOrBuilder extends MessageLiteOrBuilder {
    Value getValues(int index);

    int getValuesCount();

    List<Value> getValuesList();
}
