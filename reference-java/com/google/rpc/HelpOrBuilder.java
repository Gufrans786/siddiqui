package com.google.rpc;

import com.google.protobuf.MessageLiteOrBuilder;
import java.util.List;

public interface HelpOrBuilder extends MessageLiteOrBuilder {
    Help.Link getLinks(int i);

    int getLinksCount();

    List<Help.Link> getLinksList();
}
