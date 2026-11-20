package androidx.datastore.preferences.protobuf;

@CheckReturnValue
interface MessageInfoFactory {
    boolean isSupported(Class<?> clazz);

    MessageInfo messageInfoFor(Class<?> clazz);
}
