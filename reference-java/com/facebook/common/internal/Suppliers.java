package com.facebook.common.internal;

public class Suppliers {
    public static final Supplier<Boolean> BOOLEAN_TRUE = new Supplier<Boolean>() {
        @Override
        public Boolean get() {
            return true;
        }
    };
    public static final Supplier<Boolean> BOOLEAN_FALSE = new Supplier<Boolean>() {
        @Override
        public Boolean get() {
            return false;
        }
    };
    public static final Supplier<String> STRING_EMPTY = new Supplier<String>() {
        @Override
        public String get() {
            return "";
        }
    };

    public static <T> Supplier<T> of(final T t) {
        return new Supplier<T>() {
            @Override
            public T get() {
                return (T) t;
            }
        };
    }
}
