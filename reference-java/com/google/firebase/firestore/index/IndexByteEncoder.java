package com.google.firebase.firestore.index;

import com.google.firebase.firestore.model.FieldIndex;
import com.google.protobuf.ByteString;

public class IndexByteEncoder {
    private final OrderedCodeWriter orderedCode = new OrderedCodeWriter();
    private final AscendingIndexByteEncoder ascending = new AscendingIndexByteEncoder();
    private final DescendingIndexByteEncoder descending = new DescendingIndexByteEncoder();

    class AscendingIndexByteEncoder extends DirectionalIndexByteEncoder {
        AscendingIndexByteEncoder() {
        }

        @Override
        public void writeBytes(ByteString byteString) {
            IndexByteEncoder.this.orderedCode.writeBytesAscending(byteString);
        }

        @Override
        public void writeString(String str) {
            IndexByteEncoder.this.orderedCode.writeUtf8Ascending(str);
        }

        @Override
        public void writeLong(long j) {
            IndexByteEncoder.this.orderedCode.writeSignedLongAscending(j);
        }

        @Override
        public void writeDouble(double d) {
            IndexByteEncoder.this.orderedCode.writeDoubleAscending(d);
        }

        @Override
        public void writeInfinity() {
            IndexByteEncoder.this.orderedCode.writeInfinityAscending();
        }
    }

    class DescendingIndexByteEncoder extends DirectionalIndexByteEncoder {
        DescendingIndexByteEncoder() {
        }

        @Override
        public void writeBytes(ByteString byteString) {
            IndexByteEncoder.this.orderedCode.writeBytesDescending(byteString);
        }

        @Override
        public void writeString(String str) {
            IndexByteEncoder.this.orderedCode.writeUtf8Descending(str);
        }

        @Override
        public void writeLong(long j) {
            IndexByteEncoder.this.orderedCode.writeSignedLongDescending(j);
        }

        @Override
        public void writeDouble(double d) {
            IndexByteEncoder.this.orderedCode.writeDoubleDescending(d);
        }

        @Override
        public void writeInfinity() {
            IndexByteEncoder.this.orderedCode.writeInfinityDescending();
        }
    }

    public void seed(byte[] bArr) {
        this.orderedCode.seed(bArr);
    }

    public DirectionalIndexByteEncoder forKind(FieldIndex.Segment.Kind kind) {
        if (kind.equals(FieldIndex.Segment.Kind.DESCENDING)) {
            return this.descending;
        }
        return this.ascending;
    }

    public byte[] getEncodedBytes() {
        return this.orderedCode.encodedBytes();
    }

    public void reset() {
        this.orderedCode.reset();
    }
}
