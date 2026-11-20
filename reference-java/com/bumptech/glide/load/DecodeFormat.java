package com.bumptech.glide.load;

public final class DecodeFormat {
    PREFER_ARGB_8888,
    PREFER_RGB_565;

    public static final DecodeFormat DEFAULT = new DecodeFormat();

    private DecodeFormat() {
        super(str, i);
    }

    public static DecodeFormat valueOf(String str) {
        return (DecodeFormat) Enum.valueOf(DecodeFormat.class, str);
    }

    public static DecodeFormat[] values() {
        return (DecodeFormat[]) $VALUES.clone();
    }

    static {
    }
}
