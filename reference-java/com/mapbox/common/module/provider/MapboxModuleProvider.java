package com.mapbox.common.module.provider;

import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.annotation.MapboxAnnotationConstants;
import com.mapbox.annotation.module.MapboxModuleType;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0004\u0006\r\u0010\u0013\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J3\u0010\u0015\u001a\u0002H\u0016\"\u0004\b\u0000\u0010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\t0\u001a¢\u0006\u0002\u0010\u001cJ\f\u0010\u001d\u001a\u00020\u0004*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014¨\u0006\u001f"}, d2 = {"Lcom/mapbox/common/module/provider/MapboxModuleProvider;", "", "()V", "TAG", "", "defaultMapboxModuleCreator", "com/mapbox/common/module/provider/MapboxModuleProvider$defaultMapboxModuleCreator$1", "Lcom/mapbox/common/module/provider/MapboxModuleProvider$defaultMapboxModuleCreator$1;", "instanceCreators", "", "Lcom/mapbox/common/module/provider/MapboxModuleProvider$ModuleInstanceProvider;", "[Lcom/mapbox/common/module/provider/MapboxModuleProvider$ModuleInstanceProvider;", "kotlinObjectReferenceProvider", "com/mapbox/common/module/provider/MapboxModuleProvider$kotlinObjectReferenceProvider$1", "Lcom/mapbox/common/module/provider/MapboxModuleProvider$kotlinObjectReferenceProvider$1;", "noArgConstructorCreator", "com/mapbox/common/module/provider/MapboxModuleProvider$noArgConstructorCreator$1", "Lcom/mapbox/common/module/provider/MapboxModuleProvider$noArgConstructorCreator$1;", "singletonReferenceProvider", "com/mapbox/common/module/provider/MapboxModuleProvider$singletonReferenceProvider$1", "Lcom/mapbox/common/module/provider/MapboxModuleProvider$singletonReferenceProvider$1;", "createModule", ExifInterface.GPS_DIRECTION_TRUE, SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/annotation/module/MapboxModuleType;", "paramsProvider", "Lkotlin/Function1;", "Lcom/mapbox/common/module/provider/ModuleProviderArgument;", "(Lcom/mapbox/annotation/module/MapboxModuleType;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "asGetterFun", "ModuleInstanceProvider", "common-android"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapboxModuleProvider {
    public static final MapboxModuleProvider INSTANCE = new MapboxModuleProvider();
    private static final String TAG = "MapboxModuleProvider";
    private static final MapboxModuleProvider$defaultMapboxModuleCreator$1 defaultMapboxModuleCreator;
    private static final ModuleInstanceProvider[] instanceCreators;
    private static final MapboxModuleProvider$kotlinObjectReferenceProvider$1 kotlinObjectReferenceProvider;
    private static final MapboxModuleProvider$noArgConstructorCreator$1 noArgConstructorCreator;
    private static final MapboxModuleProvider$singletonReferenceProvider$1 singletonReferenceProvider;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\bb\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u0004\u0018\u00010\u00012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\bH&¨\u0006\u000b"}, d2 = {"Lcom/mapbox/common/module/provider/MapboxModuleProvider$ModuleInstanceProvider;", "", "getInstance", MapboxAnnotationConstants.MODULE_CONFIGURATION_DISABLED_CLASS, "Ljava/lang/Class;", SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/annotation/module/MapboxModuleType;", "paramsProvider", "Lkotlin/Function1;", "", "Lcom/mapbox/common/module/provider/ModuleProviderArgument;", "common-android"}, k = 1, mv = {1, 7, 1}, xi = 48)
    interface ModuleInstanceProvider {
        Object getInstance(Class<?> implClass, MapboxModuleType type, Function1<? super MapboxModuleType, ModuleProviderArgument[]> paramsProvider);
    }

    private MapboxModuleProvider() {
    }

    public final <T> T createModule(MapboxModuleType type, Function1<? super MapboxModuleType, ModuleProviderArgument[]> paramsProvider) throws Exception {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(paramsProvider, "paramsProvider");
        try {
            StringBuilder sb = new StringBuilder("com.mapbox.module.");
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format(MapboxAnnotationConstants.MODULE_CONFIGURATION_CLASS_NAME_FORMAT, Arrays.copyOf(new Object[]{type.getSimplifiedName()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            Class<?> cls = Class.forName(sb.append(str).toString());
            Intrinsics.checkNotNullExpressionValue(cls, "forName(\n        \"$MODUL…dName\n        )}\"\n      )");
            T t = null;
            Object objInvoke = cls.getMethod(asGetterFun(MapboxAnnotationConstants.MODULE_CONFIGURATION_ENABLE_CONFIGURATION), new Class[0]).invoke(null, new Object[0]);
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) objInvoke).booleanValue()) {
                Field declaredField = cls.getDeclaredField(MapboxAnnotationConstants.MODULE_CONFIGURATION_PROVIDER_VARIABLE_NAME);
                Intrinsics.checkNotNullExpressionValue(declaredField, "configurationClass.getDe…N_PROVIDER_VARIABLE_NAME)");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(null);
                if (obj != null) {
                    Class<?> type2 = declaredField.getType();
                    Intrinsics.checkNotNullExpressionValue(type2, "providerField.type");
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                    String str2 = String.format(MapboxAnnotationConstants.MODULE_CONFIGURATION_PROVIDER_METHOD_FORMAT, Arrays.copyOf(new Object[]{type.getSimplifiedName()}, 1));
                    Intrinsics.checkNotNullExpressionValue(str2, "format(format, *args)");
                    Method declaredMethod = type2.getDeclaredMethod(str2, new Class[0]);
                    Intrinsics.checkNotNullExpressionValue(declaredMethod, "providerClass.getDeclare…            )\n          )");
                    T t2 = (T) declaredMethod.invoke(obj, new Object[0]);
                    Intrinsics.checkNotNullExpressionValue(t2, "providerMethod.invoke(provider)");
                    return t2;
                }
                throw new MapboxInvalidModuleException(type);
            }
            Object objInvoke2 = cls.getMethod(asGetterFun(MapboxAnnotationConstants.MODULE_CONFIGURATION_DISABLED_CLASS), new Class[0]).invoke(null, new Object[0]);
            Intrinsics.checkNotNull(objInvoke2, "null cannot be cast to non-null type java.lang.Class<T of com.mapbox.common.module.provider.MapboxModuleProvider.createModule>");
            Class<?> cls2 = (Class) objInvoke2;
            ArrayList arrayList = new ArrayList();
            for (ModuleInstanceProvider moduleInstanceProvider : instanceCreators) {
                try {
                    t = (T) moduleInstanceProvider.getInstance(cls2, type, paramsProvider);
                } catch (Exception e) {
                    if (e instanceof MapboxInvalidModuleException) {
                        throw e;
                    }
                    arrayList.add(e);
                }
                if (t != null) {
                    break;
                }
            }
            if (t == null) {
                Iterator<T> it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.e(TAG, "Module loading failed", (Throwable) it.next());
                }
            }
            if (t != null) {
                return t;
            }
            throw new MapboxInvalidModuleException(type);
        } catch (Exception e2) {
            if (e2 instanceof MapboxInvalidModuleException) {
                throw e2;
            }
            e2.printStackTrace();
            throw new MapboxInvalidModuleException(type);
        }
    }

    static {
        ?? r0 = new ModuleInstanceProvider() {
            @Override
            public Object getInstance(Class<?> implClass, MapboxModuleType type, Function1<? super MapboxModuleType, ModuleProviderArgument[]> paramsProvider) throws NoSuchMethodException {
                Intrinsics.checkNotNullParameter(implClass, "implClass");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(paramsProvider, "paramsProvider");
                Constructor<?> constructor = implClass.getConstructor(new Class[0]);
                Intrinsics.checkNotNullExpressionValue(constructor, "implClass.getConstructor()");
                return constructor.newInstance(new Object[0]);
            }
        };
        noArgConstructorCreator = r0;
        ?? r1 = new ModuleInstanceProvider() {
            @Override
            public Object getInstance(Class<?> implClass, MapboxModuleType type, Function1<? super MapboxModuleType, ModuleProviderArgument[]> paramsProvider) {
                Intrinsics.checkNotNullParameter(implClass, "implClass");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(paramsProvider, "paramsProvider");
                return implClass.getField("INSTANCE").get(null);
            }
        };
        kotlinObjectReferenceProvider = r1;
        ?? r2 = new ModuleInstanceProvider() {
            @Override
            public Object getInstance(Class<?> implClass, MapboxModuleType type, Function1<? super MapboxModuleType, ModuleProviderArgument[]> paramsProvider) {
                Intrinsics.checkNotNullParameter(implClass, "implClass");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(paramsProvider, "paramsProvider");
                return implClass.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
            }
        };
        singletonReferenceProvider = r2;
        ?? r3 = new ModuleInstanceProvider() {
            @Override
            public Object getInstance(Class<?> implClass, MapboxModuleType type, Function1<? super MapboxModuleType, ModuleProviderArgument[]> paramsProvider) throws NoSuchMethodException {
                Intrinsics.checkNotNullParameter(implClass, "implClass");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(paramsProvider, "paramsProvider");
                ModuleProviderArgument[] moduleProviderArgumentArrInvoke = paramsProvider.invoke(type);
                ArrayList arrayList = new ArrayList(moduleProviderArgumentArrInvoke.length);
                for (ModuleProviderArgument moduleProviderArgument : moduleProviderArgumentArrInvoke) {
                    arrayList.add(moduleProviderArgument.getExpectedArgumentClass());
                }
                Object[] array = arrayList.toArray(new Class[0]);
                Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                Class[] clsArr = (Class[]) array;
                Constructor<?> constructor = implClass.getConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
                Intrinsics.checkNotNullExpressionValue(constructor, "implClass.getConstructor…ntClass }.toTypedArray())");
                ArrayList arrayList2 = new ArrayList(moduleProviderArgumentArrInvoke.length);
                for (ModuleProviderArgument moduleProviderArgument2 : moduleProviderArgumentArrInvoke) {
                    arrayList2.add(moduleProviderArgument2.getArgumentInstance());
                }
                Object[] array2 = arrayList2.toArray(new Object[0]);
                Intrinsics.checkNotNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                return constructor.newInstance(Arrays.copyOf(array2, array2.length));
            }
        };
        defaultMapboxModuleCreator = r3;
        instanceCreators = new ModuleInstanceProvider[]{(ModuleInstanceProvider) r0, (ModuleInstanceProvider) r1, (ModuleInstanceProvider) r2, (ModuleInstanceProvider) r3};
    }

    private final String asGetterFun(String str) {
        StringBuilder sbAppend = new StringBuilder("get").append(Character.toUpperCase(str.charAt(0)));
        String strSubstring = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
        return sbAppend.append(strSubstring).toString();
    }
}
