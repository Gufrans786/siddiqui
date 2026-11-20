package sa.lg.android.locate.autobid;

import java.util.ArrayList;
import java.util.List;

public final class LzString {
    private LzString() {
    }

    public static String decompress(byte[] bytes) {
        if (bytes == null || bytes.length < 2) {
            return null;
        }
        int[] input = new int[bytes.length / 2];
        for (int i = 0; i < input.length; i++) {
            input[i] = ((bytes[i * 2] & 255) << 8) | (bytes[i * 2 + 1] & 255);
        }
        return decompress(input, 32768);
    }

    private static String decompress(int[] input, int resetValue) {
        List<String> dictionary = new ArrayList<>();
        for (int i = 0; i < 3; i++) {
            dictionary.add(String.valueOf((char) i));
        }
        Data data = new Data(input, resetValue, 1);
        int initial = readBits(data, 2, resetValue);
        String entry;
        if (initial == 0) {
            entry = String.valueOf((char) readBits(data, 8, resetValue));
        } else if (initial == 1) {
            entry = String.valueOf((char) readBits(data, 16, resetValue));
        } else if (initial == 2) {
            return "";
        } else {
            return null;
        }
        dictionary.add(entry);
        String previous = entry;
        StringBuilder result = new StringBuilder(entry);
        int enlargeIn = 4;
        int dictionarySize = 4;
        int numBits = 3;
        while (data.index <= input.length) {
            int code = readBits(data, numBits, resetValue);
            int currentSize = dictionarySize;
            if (code == 0) {
                dictionary.add(String.valueOf((char) readBits(data, 8, resetValue)));
                dictionarySize++;
                code = dictionarySize - 1;
                enlargeIn--;
            } else if (code == 1) {
                dictionary.add(String.valueOf((char) readBits(data, 16, resetValue)));
                dictionarySize++;
                code = dictionarySize - 1;
                enlargeIn--;
            } else if (code == 2) {
                return result.toString();
            }
            if (enlargeIn == 0) {
                enlargeIn = 1 << numBits;
                numBits++;
            }
            if (code < dictionary.size()) {
                entry = dictionary.get(code);
            } else if (code == currentSize) {
                entry = previous + previous.charAt(0);
            } else {
                return null;
            }
            result.append(entry);
            dictionary.add(previous + entry.charAt(0));
            dictionarySize++;
            previous = entry;
            enlargeIn--;
            if (enlargeIn == 0) {
                enlargeIn = 1 << numBits;
                numBits++;
            }
        }
        return result.toString();
    }

    private static int readBits(Data data, int count, int resetValue) {
        int result = 0;
        for (int i = 0; i < count; i++) {
            int bit = data.value & data.position;
            data.position >>= 1;
            if (data.position == 0) {
                data.position = resetValue;
                if (data.index >= data.input.length) {
                    return result;
                }
                data.value = data.input[data.index++];
            }
            result |= (bit > 0 ? 1 : 0) << i;
        }
        return result;
    }

    private static final class Data {
        final int[] input;
        int value;
        int position;
        int index;

        Data(int[] input, int position, int index) {
            this.input = input;
            this.value = input[0];
            this.position = position;
            this.index = index;
        }
    }
}
