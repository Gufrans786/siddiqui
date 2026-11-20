package sa.lg.android.locate;

import android.view.View;
import com.facebook.react.ReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.uimanager.ReactShadowNode;
import com.facebook.react.uimanager.ViewManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import sa.lg.android.locate.integrity.PlayIntegrityModule;
import sa.lg.android.locate.payment.hyperpay.HyperPayModule;
import sa.lg.android.locate.payment.payfort.PayfortModule;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0007\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u00060\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00052\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\r"}, d2 = {"Lsa/lg/android/locate/MaedaPackage;", "Lcom/facebook/react/ReactPackage;", "<init>", "()V", "createViewManagers", "", "Lcom/facebook/react/uimanager/ViewManager;", "Landroid/view/View;", "Lcom/facebook/react/uimanager/ReactShadowNode;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "createNativeModules", "Lcom/facebook/react/bridge/NativeModule;", "LGo-v4.1.0(68)-(231026_2115)_productionRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MaedaPackage implements ReactPackage {
    @Override
    public List<ViewManager<View, ReactShadowNode<?>>> createViewManagers(ReactApplicationContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return new ArrayList();
    }

    @Override
    public List<NativeModule> createNativeModules(ReactApplicationContext reactContext) {
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        return CollectionsKt.toMutableList((Collection) CollectionsKt.listOf((Object[]) new ReactContextBaseJavaModule[]{new HyperPayModule(reactContext), new PayfortModule(reactContext), new PlayIntegrityModule(reactContext)}));
    }
}
