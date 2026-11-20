package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.DevelopmentPlatformProvider;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.Arrays;
import java.util.List;

public class CrashlyticsNdkRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-cls-ndk";

    @Override
    public List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(CrashlyticsNativeComponent.class).name(LIBRARY_NAME).add(Dependency.required((Class<?>) Context.class)).factory(new ComponentFactory() {
            @Override
            public final Object create(ComponentContainer componentContainer) {
                return this.f$0.buildCrashlyticsNdk(componentContainer);
            }
        }).eagerInDefaultApp().build(), LibraryVersionComponent.create(LIBRARY_NAME, "20.0.3"));
    }

    public CrashlyticsNativeComponent buildCrashlyticsNdk(ComponentContainer componentContainer) {
        Context context = (Context) componentContainer.get(Context.class);
        return FirebaseCrashlyticsNdk.create(context, !DevelopmentPlatformProvider.isUnity(context));
    }
}
