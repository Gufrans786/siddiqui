package com.github.penfeizhou.animation.gif.decode;

import com.github.penfeizhou.animation.gif.io.GifReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CommentExtension extends ExtensionBlock {
    private List<DataSubBlock> dataSubBlocks = new ArrayList();

    @Override
    public int size() {
        return 0;
    }

    @Override
    public void receive(GifReader gifReader) throws IOException {
        while (true) {
            DataSubBlock dataSubBlockRetrieve = DataSubBlock.retrieve(gifReader);
            if (dataSubBlockRetrieve.isTerminal()) {
                return;
            } else {
                this.dataSubBlocks.add(dataSubBlockRetrieve);
            }
        }
    }
}
