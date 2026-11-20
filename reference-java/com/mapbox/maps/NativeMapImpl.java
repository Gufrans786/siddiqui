package com.mapbox.maps;

import android.os.Handler;
import android.os.Looper;
import com.facebook.react.uimanager.ViewProps;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.None;
import com.mapbox.bindgen.Value;
import com.mapbox.common.Cancelable;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import com.mapbox.geojson.Point;
import com.mapbox.maps.extension.style.light.LightUtils;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Ò\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J,\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 J$\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\"\u001a\u00020#2\b\u0010\u001f\u001a\u0004\u0018\u00010 J\"\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020'J,\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 JX\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010*\u001a\u00020\u001a2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\n2\f\u00100\u001a\b\u0012\u0004\u0012\u000202012\f\u00103\u001a\b\u0012\u0004\u0012\u000202012\b\u00104\u001a\u0004\u0018\u000105J$\u00106\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u00107\u001a\u00020#2\b\u0010\u001f\u001a\u0004\u0018\u00010 J\"\u00108\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u00109\u001a\u00020\u001a2\u0006\u0010:\u001a\u00020\u001aJ\"\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020#J\"\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010>\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020?JE\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020C2\b\u0010D\u001a\u0004\u0018\u00010E2\b\u0010F\u001a\u0004\u0018\u00010G2\b\u0010H\u001a\u0004\u0018\u00010G2\b\u0010I\u001a\u0004\u0018\u00010G2\b\u0010J\u001a\u0004\u0018\u00010K¢\u0006\u0002\u0010LJK\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020A0\u00192\f\u0010N\u001a\b\u0012\u0004\u0012\u00020P0O2\u0006\u0010Q\u001a\u00020A2\b\u0010D\u001a\u0004\u0018\u00010E2\b\u0010I\u001a\u0004\u0018\u00010G2\b\u0010J\u001a\u0004\u0018\u00010K¢\u0006\u0002\u0010RJ$\u0010M\u001a\u00020A2\f\u0010N\u001a\b\u0012\u0004\u0012\u00020P0O2\u0006\u0010Q\u001a\u00020A2\u0006\u0010S\u001a\u00020TJ7\u0010M\u001a\u00020A2\f\u0010N\u001a\b\u0012\u0004\u0012\u00020P0O2\b\u0010D\u001a\u0004\u0018\u00010E2\b\u0010F\u001a\u0004\u0018\u00010G2\b\u0010H\u001a\u0004\u0018\u00010G¢\u0006\u0002\u0010UJ\u0016\u0010V\u001a\u00020A2\u0006\u0010W\u001a\u00020K2\u0006\u0010X\u001a\u00020KJ1\u0010Y\u001a\u00020A2\u0006\u0010Z\u001a\u00020[2\b\u0010D\u001a\u0004\u0018\u00010E2\b\u0010F\u001a\u0004\u0018\u00010G2\b\u0010H\u001a\u0004\u0018\u00010G¢\u0006\u0002\u0010\\J\u000e\u0010]\u001a\u00020C2\u0006\u0010^\u001a\u00020AJ\u000e\u0010_\u001a\u00020C2\u0006\u0010^\u001a\u00020AJ\u000e\u0010`\u001a\u00020a2\u0006\u0010Q\u001a\u00020AJ\u000e\u0010b\u001a\u00020a2\u0006\u0010^\u001a\u00020AJ\u000e\u0010c\u001a\u00020P2\u0006\u0010d\u001a\u00020KJ\u000e\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020KJ\u001a\u0010h\u001a\b\u0012\u0004\u0012\u00020P012\f\u0010i\u001a\b\u0012\u0004\u0012\u00020K01J\u001a\u0010j\u001a\b\u0012\u0004\u0012\u00020f0O2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020K0OJ\u0006\u0010k\u001a\u00020\u0013J\u0006\u0010l\u001a\u00020\u0013J\u000e\u0010m\u001a\u00020\u00132\u0006\u0010n\u001a\u00020oJ\f\u0010p\u001a\b\u0012\u0004\u0012\u00020\u001a0OJ\u0006\u0010q\u001a\u00020rJ\u0006\u0010s\u001a\u00020tJ\u0006\u0010u\u001a\u00020vJ\f\u0010w\u001a\b\u0012\u0004\u0012\u00020x0OJ\u0015\u0010y\u001a\u0004\u0018\u00010G2\u0006\u0010z\u001a\u00020P¢\u0006\u0002\u0010{J!\u0010|\u001a\u00020\u00152\u0006\u0010}\u001a\u00020~2\u0007\u0010\u007f\u001a\u00030\u0080\u00012\b\u0010\u0081\u0001\u001a\u00030\u0082\u0001J+\u0010|\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u001a2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u007f\u001a\u00020\u001a2\b\u0010\u0081\u0001\u001a\u00030\u0082\u0001J\b\u0010\u0084\u0001\u001a\u00030\u0085\u0001J\b\u0010\u0086\u0001\u001a\u00030\u0087\u0001J\b\u0010\u0088\u0001\u001a\u00030\u0089\u0001J\u0007\u0010\u008a\u0001\u001a\u00020\nJ\u000e\u0010\u008b\u0001\u001a\t\u0012\u0005\u0012\u00030\u008c\u00010OJ\b\u0010\u008d\u0001\u001a\u00030\u008e\u0001J\u0011\u0010\u008f\u0001\u001a\u00030\u0090\u00012\u0007\u0010\u0091\u0001\u001a\u00020\u001aJ\u0007\u0010\u0092\u0001\u001a\u00020AJ\u0011\u0010\u0093\u0001\u001a\u0004\u0018\u00010.2\u0006\u0010*\u001a\u00020\u001aJ\u0007\u0010\u0094\u0001\u001a\u00020\u001aJ\u001b\u0010\u0095\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020#0\u00192\u0006\u0010\u001c\u001a\u00020\u001aJ\u0019\u0010\u0096\u0001\u001a\u00030\u0090\u00012\u0006\u0010\u001c\u001a\u00020\u001a2\u0007\u0010\u0091\u0001\u001a\u00020\u001aJ\u000e\u0010\u0097\u0001\u001a\t\u0012\u0005\u0012\u00030\u0098\u00010OJ\u001a\u0010\u0099\u0001\u001a\u00030\u0090\u00012\u0007\u0010\u009a\u0001\u001a\u00020\u001a2\u0007\u0010\u0091\u0001\u001a\u00020\u001aJ\u000e\u0010\u009b\u0001\u001a\t\u0012\u0005\u0012\u00030\u0098\u000101J\u0011\u0010\u009c\u0001\u001a\u00030\u0090\u00012\u0007\u0010\u0091\u0001\u001a\u00020\u001aJ\u001b\u0010\u009d\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020#0\u00192\u0006\u0010%\u001a\u00020\u001aJ\u0019\u0010\u009e\u0001\u001a\u00030\u0090\u00012\u0006\u0010%\u001a\u00020\u001a2\u0007\u0010\u0091\u0001\u001a\u00020\u001aJ\u000e\u0010\u009f\u0001\u001a\t\u0012\u0005\u0012\u00030\u0098\u00010OJ\u0011\u0010 \u0001\u001a\u00030\u0090\u00012\u0007\u0010\u0091\u0001\u001a\u00020\u001aJ\b\u0010¡\u0001\u001a\u00030¢\u0001J\u0007\u0010£\u0001\u001a\u00020\u001aJ\u000e\u0010¤\u0001\u001a\t\u0012\u0004\u0012\u00020\u001a0¥\u0001J\u001b\u0010¦\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020?0\u00192\u0006\u0010>\u001a\u00020\u001aJ\u000f\u0010§\u0001\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u001aJ\u000f\u0010¨\u0001\u001a\u00020\n2\u0006\u00109\u001a\u00020\u001aJ#\u0010©\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010B\u001a\u00020CJ%\u0010ª\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001a2\b\u0010«\u0001\u001a\u00030¬\u0001J\u0007\u0010\u00ad\u0001\u001a\u00020\nJ\u001b\u0010®\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\n0\u00192\u0006\u0010\u001c\u001a\u00020\u001aJ\u0007\u0010¯\u0001\u001a\u00020\nJ\u0007\u0010°\u0001\u001a\u00020\nJ%\u0010±\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u001c\u001a\u00020\u001a2\b\u0010\u001f\u001a\u0004\u0018\u00010 J\u000f\u0010²\u0001\u001a\u00020K2\u0006\u0010g\u001a\u00020PJ\u001c\u0010³\u0001\u001a\b\u0012\u0004\u0012\u00020K012\r\u0010´\u0001\u001a\b\u0012\u0004\u0012\u00020P01Ja\u0010µ\u0001\u001a\u00020\u00152\u0007\u0010¶\u0001\u001a\u00020\u001a2\b\u0010·\u0001\u001a\u00030¸\u00012\u0007\u0010¹\u0001\u001a\u00020\u001a2\u0007\u0010º\u0001\u001a\u00020\u001a2)\u0010»\u0001\u001a$\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020#\u0018\u00010¼\u0001j\u0011\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020#\u0018\u0001`½\u00012\b\u0010\u0081\u0001\u001a\u00030¾\u0001J#\u0010¿\u0001\u001a\u00020\u00152\u0007\u0010Z\u001a\u00030À\u00012\u0007\u0010&\u001a\u00030Á\u00012\b\u0010\u0081\u0001\u001a\u00030Â\u0001J*\u0010¿\u0001\u001a\u00020\u00152\u0007\u0010Z\u001a\u00030À\u00012\u000e\u0010Ã\u0001\u001a\t\u0012\u0005\u0012\u00030Ä\u00010O2\b\u0010\u0081\u0001\u001a\u00030Â\u0001J\"\u0010Å\u0001\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u001a2\u0007\u0010&\u001a\u00030Æ\u00012\b\u0010\u0081\u0001\u001a\u00030Ç\u0001J\u0007\u0010È\u0001\u001a\u00020\u0013J-\u0010É\u0001\u001a\u00020\u00152\u0006\u0010}\u001a\u00020~2\u0007\u0010\u007f\u001a\u00030\u0080\u00012\t\u0010Ê\u0001\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0081\u0001\u001a\u00030Ë\u0001J7\u0010É\u0001\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u001a2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u007f\u001a\u00020\u001a2\t\u0010Ê\u0001\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0081\u0001\u001a\u00030Ë\u0001J\u001b\u0010Ì\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010*\u001a\u00020\u001aJ\u001b\u0010Í\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u001c\u001a\u00020\u001aJ\u001b\u0010Î\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u00109\u001a\u00020\u001aJ\u001b\u0010Ï\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001aJ\u001b\u0010Ð\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010>\u001a\u00020\u001aJ\u0007\u0010Ñ\u0001\u001a\u00020\u0013J\u0019\u0010Ò\u0001\u001a\u00020\u00152\u0006\u0010}\u001a\u00020~2\b\u0010\u0081\u0001\u001a\u00030Ë\u0001J$\u0010Ò\u0001\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u001a2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0081\u0001\u001a\u00030Ë\u0001J\t\u0010Ó\u0001\u001a\u00020\u0013H\u0007J\u001d\u0010Ô\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\b\u0010Õ\u0001\u001a\u00030Ö\u0001J\u000f\u0010×\u0001\u001a\u00020\u00132\u0006\u0010^\u001a\u00020AJ\u0011\u0010×\u0001\u001a\u00020\u00132\b\u0010Ø\u0001\u001a\u00030\u0085\u0001J\u0013\u0010Ù\u0001\u001a\u00020\u00132\b\u0010Ú\u0001\u001a\u00030Û\u0001H\u0007J\u0010\u0010Ü\u0001\u001a\u00020\u00132\u0007\u0010Ý\u0001\u001a\u00020vJ\u0011\u0010Þ\u0001\u001a\u00020\u00132\b\u0010ß\u0001\u001a\u00030à\u0001J\u001f\u0010á\u0001\u001a\u00020\u00132\r\u0010â\u0001\u001a\b\u0012\u0004\u0012\u00020x0O2\u0007\u0010ã\u0001\u001a\u00020\nJ+\u0010ä\u0001\u001a\u00020\u00152\u0006\u0010}\u001a\u00020~2\u0007\u0010\u007f\u001a\u00030\u0080\u00012\u0007\u0010å\u0001\u001a\u00020#2\b\u0010\u0081\u0001\u001a\u00030Ë\u0001J5\u0010ä\u0001\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u001a2\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u007f\u001a\u00020\u001a2\u0007\u0010å\u0001\u001a\u00020#2\b\u0010\u0081\u0001\u001a\u00030Ë\u0001J\u0010\u0010æ\u0001\u001a\u00020\u00132\u0007\u0010ç\u0001\u001a\u00020\nJ\u0011\u0010è\u0001\u001a\u00020\u00132\b\u0010é\u0001\u001a\u00030ê\u0001J\u0011\u0010ë\u0001\u001a\u00020\u00132\b\u0010ì\u0001\u001a\u00030\u0089\u0001J\u0010\u0010í\u0001\u001a\u00020\u00132\u0007\u0010î\u0001\u001a\u00020\nJ\u0017\u0010ï\u0001\u001a\u00020\u00132\u000e\u0010ð\u0001\u001a\t\u0012\u0005\u0012\u00030\u008c\u00010OJ\u0011\u0010ñ\u0001\u001a\u00020\u00132\b\u0010ò\u0001\u001a\u00030\u008e\u0001J\u001b\u0010ó\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\"\u001a\u00020#J$\u0010ô\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0007\u0010\u0091\u0001\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020#J5\u0010õ\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001a2\b\u0010«\u0001\u001a\u00030¬\u00012\u000e\u0010ö\u0001\u001a\t\u0012\u0005\u0012\u00030¸\u000101J.\u0010÷\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001a2\u0007\u0010ø\u0001\u001a\u00020\u001a2\b\u0010ù\u0001\u001a\u00030ú\u0001J\u0010\u0010û\u0001\u001a\u00020\u00132\u0007\u0010ü\u0001\u001a\u00020\u001aJ#\u0010ý\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#J,\u0010þ\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\u001c\u001a\u00020\u001a2\u0007\u0010\u0091\u0001\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020#J-\u0010ÿ\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0007\u0010\u009a\u0001\u001a\u00020\u001a2\u0007\u0010\u0091\u0001\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020#J\u001c\u0010\u0080\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0007\u0010\u0081\u0002\u001a\u00020#J\u001b\u0010\u0082\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\"\u001a\u00020#J$\u0010\u0083\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0007\u0010\u0091\u0001\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020#J#\u0010\u0084\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#J,\u0010\u0085\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001a2\u0007\u0010\u0091\u0001\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020#J\u001b\u0010\u0086\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010\"\u001a\u00020#J$\u0010\u0087\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0007\u0010\u0091\u0001\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020#J\u0011\u0010\u0088\u0002\u001a\u00020\u00132\b\u0010\u0089\u0002\u001a\u00030¢\u0001J\u0010\u0010\u008a\u0002\u001a\u00020\u00132\u0007\u0010\u008b\u0002\u001a\u00020\u001aJ\u0013\u0010\u008c\u0002\u001a\u00020\u00132\n\u0010\u008d\u0002\u001a\u0005\u0018\u00010\u008e\u0002J\u0010\u0010\u008f\u0002\u001a\u00020\u00132\u0007\u0010\u0090\u0002\u001a\u00020\nJ'\u0010\u0091\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0010\u0010\u0092\u0002\u001a\u000b\u0012\u0004\u0012\u00020\u001a\u0018\u00010¥\u0001H\u0007J\u0013\u0010\u0093\u0002\u001a\u00020\u00132\n\u0010\u0094\u0002\u001a\u0005\u0018\u00010\u0095\u0002J\u0011\u0010\u0096\u0002\u001a\u00020\u00132\b\u0010\u0097\u0002\u001a\u00030\u0098\u0002J\u001a\u0010\u0099\u0002\u001a\u00020\u00132\u0007\u0010&\u001a\u00030\u009a\u00022\b\u0010\u0081\u0001\u001a\u00030\u009b\u0002J\u0007\u0010\u009c\u0002\u001a\u00020\u0013J\u000f\u0010\u009d\u0002\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001aJ\u000f\u0010\u009e\u0002\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u001aJ\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010 \u0002\u001a\u00030¡\u0002J\u0013\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010¢\u0002\u001a\u00030£\u0002H\u0007J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010¤\u0002\u001a\u00030¥\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010¦\u0002\u001a\u00030§\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010¨\u0002\u001a\u00030©\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010ª\u0002\u001a\u00030«\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010¬\u0002\u001a\u00030\u00ad\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010®\u0002\u001a\u00030¯\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010°\u0002\u001a\u00030±\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010²\u0002\u001a\u00030³\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010´\u0002\u001a\u00030µ\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010¶\u0002\u001a\u00030·\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010¸\u0002\u001a\u00030¹\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010º\u0002\u001a\u00030»\u0002J\u0011\u0010\u009f\u0002\u001a\u00020\u00152\b\u0010¼\u0002\u001a\u00030½\u0002J\u001c\u0010\u009f\u0002\u001a\u00020\u00152\u0007\u0010¾\u0002\u001a\u00020\u001a2\b\u0010¿\u0002\u001a\u00030À\u0002H\u0007J\"\u0010Á\u0002\u001a\t\u0012\u0005\u0012\u00030¬\u0001012\b\u0010Â\u0002\u001a\u00030Ã\u00022\b\u0010^\u001a\u0004\u0018\u00010AJ\u0007\u0010Ä\u0002\u001a\u00020\u0013J#\u0010Å\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.J#\u0010Æ\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00192\u0006\u0010>\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020?J\u0018\u0010Ç\u0002\u001a\u00020\u00132\r\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0007R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006È\u0002"}, d2 = {"Lcom/mapbox/maps/NativeMapImpl;", "", "map", "Lcom/mapbox/maps/Map;", "(Lcom/mapbox/maps/Map;)V", "mainHandler", "Landroid/os/Handler;", "getMap", "()Lcom/mapbox/maps/Map;", "value", "", "sizeSet", "getSizeSet$maps_sdk_release", "()Z", "setSizeSet$maps_sdk_release", "(Z)V", "sizeSetCallbackList", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lkotlin/Function0;", "", "addInteraction", "Lcom/mapbox/common/Cancelable;", "interaction", "Lcom/mapbox/maps/Interaction;", "addPersistentStyleCustomLayer", "Lcom/mapbox/bindgen/Expected;", "", "Lcom/mapbox/bindgen/None;", "layerId", "layerHost", "Lcom/mapbox/maps/CustomLayerHost;", "layerPosition", "Lcom/mapbox/maps/LayerPosition;", "addPersistentStyleLayer", LightUtils.LIGHT_PROPERTIES, "Lcom/mapbox/bindgen/Value;", "addStyleCustomGeometrySource", "sourceId", "options", "Lcom/mapbox/maps/CustomGeometrySourceOptions;", "addStyleCustomLayer", "addStyleImage", "imageId", "scale", "", "image", "Lcom/mapbox/maps/Image;", "sdf", "stretchX", "", "Lcom/mapbox/maps/ImageStretches;", "stretchY", "content", "Lcom/mapbox/maps/ImageContent;", "addStyleLayer", "parameters", "addStyleModel", "modelId", "modelUri", "addStyleSource", "source", "addViewAnnotation", TSGeofence.FIELD_IDENTIFIER, "Lcom/mapbox/maps/ViewAnnotationOptions;", "cameraForCoordinateBounds", "Lcom/mapbox/maps/CameraOptions;", "coordinateBounds", "Lcom/mapbox/maps/CoordinateBounds;", ViewProps.PADDING, "Lcom/mapbox/maps/EdgeInsets;", "bearing", "", "pitch", "maxZoom", "offset", "Lcom/mapbox/maps/ScreenCoordinate;", "(Lcom/mapbox/maps/CoordinateBounds;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/maps/ScreenCoordinate;)Lcom/mapbox/maps/CameraOptions;", "cameraForCoordinates", "points", "", "Lcom/mapbox/geojson/Point;", "camera", "(Ljava/util/List;Lcom/mapbox/maps/CameraOptions;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Lcom/mapbox/maps/ScreenCoordinate;)Lcom/mapbox/bindgen/Expected;", "box", "Lcom/mapbox/maps/ScreenBox;", "(Ljava/util/List;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;)Lcom/mapbox/maps/CameraOptions;", "cameraForDrag", "fromPoint", "toPoint", "cameraForGeometry", "geometry", "Lcom/mapbox/geojson/Geometry;", "(Lcom/mapbox/geojson/Geometry;Lcom/mapbox/maps/EdgeInsets;Ljava/lang/Double;Ljava/lang/Double;)Lcom/mapbox/maps/CameraOptions;", "coordinateBoundsForCamera", "cameraOptions", "coordinateBoundsForCameraUnwrapped", "coordinateBoundsZoomForCamera", "Lcom/mapbox/maps/CoordinateBoundsZoom;", "coordinateBoundsZoomForCameraUnwrapped", "coordinateForPixel", "screenCoordinate", "coordinateInfoForPixel", "Lcom/mapbox/maps/CoordinateInfo;", "pixel", "coordinatesForPixels", "pixels", "coordinatesInfoForPixels", "createRenderer", "destroyRenderer", "dispatch", "platformEventInfo", "Lcom/mapbox/maps/PlatformEventInfo;", "getAttributions", "getBounds", "Lcom/mapbox/maps/CameraBounds;", "getCameraState", "Lcom/mapbox/maps/CameraState;", "getCenterAltitudeMode", "Lcom/mapbox/maps/MapCenterAltitudeMode;", "getDebug", "Lcom/mapbox/maps/MapDebugOptions;", "getElevation", "point", "(Lcom/mapbox/geojson/Point;)Ljava/lang/Double;", "getFeatureState", "featureset", "Lcom/mapbox/maps/FeaturesetDescriptor;", "featureId", "Lcom/mapbox/maps/FeaturesetFeatureId;", "callback", "Lcom/mapbox/maps/QueryFeatureStateCallback;", "sourceLayerId", "getFreeCameraOptions", "Lcom/mapbox/maps/FreeCameraOptions;", "getMapOptions", "Lcom/mapbox/maps/MapOptions;", "getPrefetchZoomDelta", "", "getRenderWorldCopies", "getScreenCullingShape", "Lcom/mapbox/maps/Vec2;", "getSize", "Lcom/mapbox/maps/Size;", "getStyleAtmosphereProperty", "Lcom/mapbox/maps/StylePropertyValue;", "property", "getStyleDefaultCamera", "getStyleImage", "getStyleJSON", "getStyleLayerProperties", "getStyleLayerProperty", "getStyleLayers", "Lcom/mapbox/maps/StyleObjectInfo;", "getStyleLightProperty", "id", "getStyleLights", "getStyleProjectionProperty", "getStyleSourceProperties", "getStyleSourceProperty", "getStyleSources", "getStyleTerrainProperty", "getStyleTransition", "Lcom/mapbox/maps/TransitionOptions;", "getStyleURI", "getViewAnnotationAvoidLayers", "Ljava/util/HashSet;", "getViewAnnotationOptions", "hasStyleImage", "hasStyleModel", "invalidateStyleCustomGeometrySourceRegion", "invalidateStyleCustomGeometrySourceTile", "tileId", "Lcom/mapbox/maps/CanonicalTileID;", "isGestureInProgress", "isStyleLayerPersistent", "isStyleLoaded", "isUserAnimationInProgress", "moveStyleLayer", "pixelForCoordinate", "pixelsForCoordinates", "coordinates", "queryFeatureExtensions", "sourceIdentifier", "feature", "Lcom/mapbox/geojson/Feature;", "extension", "extensionField", "args", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Lcom/mapbox/maps/QueryFeatureExtensionCallback;", "queryRenderedFeatures", "Lcom/mapbox/maps/RenderedQueryGeometry;", "Lcom/mapbox/maps/RenderedQueryOptions;", "Lcom/mapbox/maps/QueryRenderedFeaturesCallback;", "targets", "Lcom/mapbox/maps/FeaturesetQueryTarget;", "querySourceFeatures", "Lcom/mapbox/maps/SourceQueryOptions;", "Lcom/mapbox/maps/QuerySourceFeaturesCallback;", "reduceMemoryUse", "removeFeatureState", "stateKey", "Lcom/mapbox/maps/FeatureStateOperationCallback;", "removeStyleImage", "removeStyleLayer", "removeStyleModel", "removeStyleSource", "removeViewAnnotation", "render", "resetFeatureStates", "resetThreadServiceType", "setBounds", "boundOptions", "Lcom/mapbox/maps/CameraBoundsOptions;", "setCamera", "freeCameraOptions", "setCameraAnimationHint", "cameraAnimationHint", "Lcom/mapbox/maps/CameraAnimationHint;", "setCenterAltitudeMode", "mode", "setConstrainMode", "constrainMode", "Lcom/mapbox/maps/ConstrainMode;", "setDebug", "list", "debugActive", "setFeatureState", RemoteConfigConstants.ResponseFieldKey.STATE, "setGestureInProgress", "gestureInProgress", "setNorthOrientation", "northOrientation", "Lcom/mapbox/maps/NorthOrientation;", "setPrefetchZoomDelta", "zoomDelta", "setRenderWorldCopies", "renderWorldCopies", "setScreenCullingShape", "shape", "setSize", "size", "setStyleAtmosphere", "setStyleAtmosphereProperty", "setStyleCustomGeometrySourceTileData", "featureCollection", "setStyleGeoJSONSourceData", "dataId", "data", "Lcom/mapbox/maps/GeoJSONSourceData;", "setStyleJSON", "json", "setStyleLayerProperties", "setStyleLayerProperty", "setStyleLightProperty", "setStyleLights", "lights", "setStyleProjection", "setStyleProjectionProperty", "setStyleSourceProperties", "setStyleSourceProperty", "setStyleTerrain", "setStyleTerrainProperty", "setStyleTransition", "transitionOptions", "setStyleURI", ModelSourceWrapper.URL, "setTileCacheBudget", "tileCacheBudget", "Lcom/mapbox/maps/TileCacheBudget;", "setUserAnimationInProgress", "inProgress", "setViewAnnotationAvoidLayers", "layerIds", "setViewAnnotationPositionsUpdateListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mapbox/maps/ViewAnnotationPositionsUpdateListener;", "setViewportMode", "viewportMode", "Lcom/mapbox/maps/ViewportMode;", "startPerformanceStatisticsCollection", "Lcom/mapbox/maps/PerformanceStatisticsOptions;", "Lcom/mapbox/maps/PerformanceStatisticsCallback;", "stopPerformanceStatisticsCollection", "styleLayerExists", "styleSourceExists", "subscribe", "cameraChangedCallback", "Lcom/mapbox/maps/CameraChangedCallback;", "cameraChangedCoalescedCallback", "Lcom/mapbox/maps/CameraChangedCoalescedCallback;", "onMapIdleListener", "Lcom/mapbox/maps/MapIdleCallback;", "mapLoadedCallback", "Lcom/mapbox/maps/MapLoadedCallback;", "mapLoadingErrorCallback", "Lcom/mapbox/maps/MapLoadingErrorCallback;", "renderFrameFinishedCallback", "Lcom/mapbox/maps/RenderFrameFinishedCallback;", "renderFrameStartedCallback", "Lcom/mapbox/maps/RenderFrameStartedCallback;", "resourceRequestCallback", "Lcom/mapbox/maps/ResourceRequestCallback;", "sourceAddedCallback", "Lcom/mapbox/maps/SourceAddedCallback;", "sourceDataLoadedCallback", "Lcom/mapbox/maps/SourceDataLoadedCallback;", "sourceRemovedCallback", "Lcom/mapbox/maps/SourceRemovedCallback;", "styleDataLoadedCallback", "Lcom/mapbox/maps/StyleDataLoadedCallback;", "styleImageMissingCallback", "Lcom/mapbox/maps/StyleImageMissingCallback;", "styleImageRemoveUnusedCallback", "Lcom/mapbox/maps/StyleImageRemoveUnusedCallback;", "styleLoadedCallback", "Lcom/mapbox/maps/StyleLoadedCallback;", "eventName", "onGenericEventsListener", "Lcom/mapbox/maps/GenericEventCallback;", "tileCover", "tileCoverOptions", "Lcom/mapbox/maps/TileCoverOptions;", "triggerRepaint", "updateStyleImageSourceImage", "updateViewAnnotation", "whenMapSizeReady", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NativeMapImpl {
    private final Handler mainHandler;
    private final Map map;
    private volatile boolean sizeSet;
    private CopyOnWriteArrayList<Function0<Unit>> sizeSetCallbackList;

    public NativeMapImpl(Map map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.map = map;
        this.sizeSetCallbackList = new CopyOnWriteArrayList<>();
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    public final Map getMap() {
        return this.map;
    }

    public final boolean getSizeSet() {
        return this.sizeSet;
    }

    public final synchronized void setSizeSet$maps_sdk_release(boolean z) {
        if (z) {
            if (!this.sizeSet) {
                if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                    this.mainHandler.post(new Runnable() {
                        @Override
                        public final void run() {
                            NativeMapImpl._set_sizeSet_$lambda$1(this.f$0);
                        }
                    });
                } else {
                    Iterator<T> it = this.sizeSetCallbackList.iterator();
                    while (it.hasNext()) {
                        ((Function0) it.next()).invoke();
                    }
                    this.sizeSetCallbackList.clear();
                }
            }
        }
        this.sizeSet = z;
    }

    public static final void _set_sizeSet_$lambda$1(NativeMapImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.sizeSet) {
            Iterator<T> it = this$0.sizeSetCallbackList.iterator();
            while (it.hasNext()) {
                ((Function0) it.next()).invoke();
            }
            this$0.sizeSetCallbackList.clear();
        }
    }

    public final void whenMapSizeReady(Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.sizeSet) {
            callback.invoke();
        } else {
            this.sizeSetCallbackList.add(callback);
        }
    }

    public final void setSize(Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.map.setSize(size);
        setSizeSet$maps_sdk_release(true);
    }

    public final Size getSize() {
        Size size = this.map.getSize();
        Intrinsics.checkNotNullExpressionValue(size, "map.size");
        return size;
    }

    public final void createRenderer() {
        this.map.createRenderer();
    }

    public final void destroyRenderer() {
        this.map.destroyRenderer();
    }

    public final void render() {
        this.map.render();
    }

    public final void resetThreadServiceType() {
        this.map.resetThreadServiceType();
    }

    public final void setCamera(CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        this.map.setCamera(cameraOptions);
    }

    public final CameraState getCameraState() {
        CameraState cameraState = this.map.getCameraState();
        Intrinsics.checkNotNullExpressionValue(cameraState, "map.cameraState");
        return cameraState;
    }

    public final List<Point> coordinatesForPixels(List<ScreenCoordinate> pixels) {
        Intrinsics.checkNotNullParameter(pixels, "pixels");
        List<Point> listCoordinatesForPixels = this.map.coordinatesForPixels(pixels);
        Intrinsics.checkNotNullExpressionValue(listCoordinatesForPixels, "map.coordinatesForPixels(pixels)");
        return listCoordinatesForPixels;
    }

    public final CameraOptions cameraForCoordinateBounds(CoordinateBounds coordinateBounds, EdgeInsets padding, Double bearing, Double pitch, Double maxZoom, ScreenCoordinate offset) {
        Intrinsics.checkNotNullParameter(coordinateBounds, "coordinateBounds");
        CameraOptions cameraOptionsCameraForCoordinateBounds = this.map.cameraForCoordinateBounds(coordinateBounds, padding, bearing, pitch, maxZoom, offset);
        Intrinsics.checkNotNullExpressionValue(cameraOptionsCameraForCoordinateBounds, "map.cameraForCoordinateB…, pitch, maxZoom, offset)");
        return cameraOptionsCameraForCoordinateBounds;
    }

    public final CoordinateInfo coordinateInfoForPixel(ScreenCoordinate pixel) {
        Intrinsics.checkNotNullParameter(pixel, "pixel");
        CoordinateInfo coordinateInfoCoordinateInfoForPixel = this.map.coordinateInfoForPixel(pixel);
        Intrinsics.checkNotNullExpressionValue(coordinateInfoCoordinateInfoForPixel, "map.coordinateInfoForPixel(pixel)");
        return coordinateInfoCoordinateInfoForPixel;
    }

    public final List<CoordinateInfo> coordinatesInfoForPixels(List<ScreenCoordinate> pixels) {
        Intrinsics.checkNotNullParameter(pixels, "pixels");
        List<CoordinateInfo> listCoordinatesInfoForPixels = this.map.coordinatesInfoForPixels(pixels);
        Intrinsics.checkNotNullExpressionValue(listCoordinatesInfoForPixels, "map.coordinatesInfoForPixels(pixels)");
        return listCoordinatesInfoForPixels;
    }

    public final void setUserAnimationInProgress(boolean inProgress) {
        this.map.setUserAnimationInProgress(inProgress);
    }

    public final void setCameraAnimationHint(CameraAnimationHint cameraAnimationHint) {
        Intrinsics.checkNotNullParameter(cameraAnimationHint, "cameraAnimationHint");
        this.map.setCameraAnimationHint(cameraAnimationHint);
    }

    public final Expected<String, None> invalidateStyleCustomGeometrySourceRegion(String sourceId, CoordinateBounds coordinateBounds) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(coordinateBounds, "coordinateBounds");
        Expected<String, None> expectedInvalidateStyleCustomGeometrySourceRegion = this.map.invalidateStyleCustomGeometrySourceRegion(sourceId, coordinateBounds);
        Intrinsics.checkNotNullExpressionValue(expectedInvalidateStyleCustomGeometrySourceRegion, "map.invalidateStyleCusto…urceId, coordinateBounds)");
        return expectedInvalidateStyleCustomGeometrySourceRegion;
    }

    public final Expected<String, None> setStyleTerrain(Value properties) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        Expected<String, None> styleTerrain = this.map.setStyleTerrain(properties);
        Intrinsics.checkNotNullExpressionValue(styleTerrain, "map.setStyleTerrain(properties)");
        return styleTerrain;
    }

    public final StylePropertyValue getStyleTerrainProperty(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        StylePropertyValue styleTerrainProperty = this.map.getStyleTerrainProperty(property);
        Intrinsics.checkNotNullExpressionValue(styleTerrainProperty, "map.getStyleTerrainProperty(property)");
        return styleTerrainProperty;
    }

    public final Expected<String, None> setStyleTerrainProperty(String property, Value value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expected<String, None> styleTerrainProperty = this.map.setStyleTerrainProperty(property, value);
        Intrinsics.checkNotNullExpressionValue(styleTerrainProperty, "map.setStyleTerrainProperty(property, value)");
        return styleTerrainProperty;
    }

    public final Expected<String, None> setStyleProjection(Value properties) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        Expected<String, None> styleProjection = this.map.setStyleProjection(properties);
        Intrinsics.checkNotNullExpressionValue(styleProjection, "map.setStyleProjection(properties)");
        return styleProjection;
    }

    public final StylePropertyValue getStyleProjectionProperty(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        StylePropertyValue styleProjectionProperty = this.map.getStyleProjectionProperty(property);
        Intrinsics.checkNotNullExpressionValue(styleProjectionProperty, "map.getStyleProjectionProperty(property)");
        return styleProjectionProperty;
    }

    public final Expected<String, None> setStyleProjectionProperty(String property, Value value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expected<String, None> styleProjectionProperty = this.map.setStyleProjectionProperty(property, value);
        Intrinsics.checkNotNullExpressionValue(styleProjectionProperty, "map.setStyleProjectionProperty(property, value)");
        return styleProjectionProperty;
    }

    public final CameraOptions cameraForCoordinates(List<Point> points, EdgeInsets padding, Double bearing, Double pitch) {
        Intrinsics.checkNotNullParameter(points, "points");
        CameraOptions cameraOptionsCameraForCoordinates = this.map.cameraForCoordinates(points, padding, bearing, pitch);
        Intrinsics.checkNotNullExpressionValue(cameraOptionsCameraForCoordinates, "map.cameraForCoordinates… padding, bearing, pitch)");
        return cameraOptionsCameraForCoordinates;
    }

    public final CameraOptions cameraForCoordinates(List<Point> points, CameraOptions camera, ScreenBox box) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(box, "box");
        CameraOptions cameraOptionsCameraForCoordinates = this.map.cameraForCoordinates(points, camera, box);
        Intrinsics.checkNotNullExpressionValue(cameraOptionsCameraForCoordinates, "map.cameraForCoordinates(points, camera, box)");
        return cameraOptionsCameraForCoordinates;
    }

    public final Expected<String, CameraOptions> cameraForCoordinates(List<Point> points, CameraOptions camera, EdgeInsets padding, Double maxZoom, ScreenCoordinate offset) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(camera, "camera");
        Expected<String, CameraOptions> expectedCameraForCoordinates = this.map.cameraForCoordinates(points, camera, padding, maxZoom, offset);
        Intrinsics.checkNotNullExpressionValue(expectedCameraForCoordinates, "map.cameraForCoordinates…padding, maxZoom, offset)");
        return expectedCameraForCoordinates;
    }

    public final CameraOptions cameraForGeometry(Geometry geometry, EdgeInsets padding, Double bearing, Double pitch) {
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        CameraOptions cameraOptionsCameraForGeometry = this.map.cameraForGeometry(geometry, padding, bearing, pitch);
        Intrinsics.checkNotNullExpressionValue(cameraOptionsCameraForGeometry, "map.cameraForGeometry(ge… padding, bearing, pitch)");
        return cameraOptionsCameraForGeometry;
    }

    public final Double getElevation(Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        return this.map.getElevation(point);
    }

    public final void setViewAnnotationPositionsUpdateListener(ViewAnnotationPositionsUpdateListener listener) {
        this.map.setViewAnnotationPositionsUpdateListener(listener);
    }

    public final Expected<String, None> addViewAnnotation(String identifier, ViewAnnotationOptions options) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(options, "options");
        Expected<String, None> expectedAddViewAnnotation = this.map.addViewAnnotation(identifier, options);
        Intrinsics.checkNotNullExpressionValue(expectedAddViewAnnotation, "map.addViewAnnotation(identifier, options)");
        return expectedAddViewAnnotation;
    }

    public final Expected<String, None> updateViewAnnotation(String identifier, ViewAnnotationOptions options) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(options, "options");
        Expected<String, None> expectedUpdateViewAnnotation = this.map.updateViewAnnotation(identifier, options);
        Intrinsics.checkNotNullExpressionValue(expectedUpdateViewAnnotation, "map.updateViewAnnotation(identifier, options)");
        return expectedUpdateViewAnnotation;
    }

    public final Expected<String, None> removeViewAnnotation(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Expected<String, None> expectedRemoveViewAnnotation = this.map.removeViewAnnotation(identifier);
        Intrinsics.checkNotNullExpressionValue(expectedRemoveViewAnnotation, "map.removeViewAnnotation(identifier)");
        return expectedRemoveViewAnnotation;
    }

    public final Expected<String, ViewAnnotationOptions> getViewAnnotationOptions(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Expected<String, ViewAnnotationOptions> viewAnnotationOptions = this.map.getViewAnnotationOptions(identifier);
        Intrinsics.checkNotNullExpressionValue(viewAnnotationOptions, "map.getViewAnnotationOptions(identifier)");
        return viewAnnotationOptions;
    }

    public final List<CanonicalTileID> tileCover(TileCoverOptions tileCoverOptions, CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(tileCoverOptions, "tileCoverOptions");
        List<CanonicalTileID> listTileCover = this.map.tileCover(tileCoverOptions, cameraOptions);
        Intrinsics.checkNotNullExpressionValue(listTileCover, "map.tileCover(tileCoverOptions, cameraOptions)");
        return listTileCover;
    }

    public final CoordinateBounds coordinateBoundsForCamera(CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        CoordinateBounds coordinateBoundsCoordinateBoundsForCamera = this.map.coordinateBoundsForCamera(cameraOptions);
        Intrinsics.checkNotNullExpressionValue(coordinateBoundsCoordinateBoundsForCamera, "map.coordinateBoundsForCamera(cameraOptions)");
        return coordinateBoundsCoordinateBoundsForCamera;
    }

    public final CoordinateBounds coordinateBoundsForCameraUnwrapped(CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        CoordinateBounds coordinateBoundsCoordinateBoundsForCameraUnwrapped = this.map.coordinateBoundsForCameraUnwrapped(cameraOptions);
        Intrinsics.checkNotNullExpressionValue(coordinateBoundsCoordinateBoundsForCameraUnwrapped, "map.coordinateBoundsForC…aUnwrapped(cameraOptions)");
        return coordinateBoundsCoordinateBoundsForCameraUnwrapped;
    }

    public final CoordinateBoundsZoom coordinateBoundsZoomForCameraUnwrapped(CameraOptions cameraOptions) {
        Intrinsics.checkNotNullParameter(cameraOptions, "cameraOptions");
        CoordinateBoundsZoom coordinateBoundsZoomCoordinateBoundsZoomForCameraUnwrapped = this.map.coordinateBoundsZoomForCameraUnwrapped(cameraOptions);
        Intrinsics.checkNotNullExpressionValue(coordinateBoundsZoomCoordinateBoundsZoomForCameraUnwrapped, "map.coordinateBoundsZoom…aUnwrapped(cameraOptions)");
        return coordinateBoundsZoomCoordinateBoundsZoomForCameraUnwrapped;
    }

    public final List<ScreenCoordinate> pixelsForCoordinates(List<Point> coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        List<ScreenCoordinate> listPixelsForCoordinates = this.map.pixelsForCoordinates(coordinates);
        Intrinsics.checkNotNullExpressionValue(listPixelsForCoordinates, "map.pixelsForCoordinates(coordinates)");
        return listPixelsForCoordinates;
    }

    public final void setGestureInProgress(boolean gestureInProgress) {
        this.map.setGestureInProgress(gestureInProgress);
    }

    public final boolean isGestureInProgress() {
        return this.map.isGestureInProgress();
    }

    public final Expected<String, None> setBounds(CameraBoundsOptions boundOptions) {
        Intrinsics.checkNotNullParameter(boundOptions, "boundOptions");
        Expected<String, None> bounds = this.map.setBounds(boundOptions);
        Intrinsics.checkNotNullExpressionValue(bounds, "map.setBounds(boundOptions)");
        return bounds;
    }

    public final CameraBounds getBounds() {
        CameraBounds bounds = this.map.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "map.bounds");
        return bounds;
    }

    public final void setPrefetchZoomDelta(byte zoomDelta) {
        this.map.setPrefetchZoomDelta(zoomDelta);
    }

    public final byte getPrefetchZoomDelta() {
        return this.map.getPrefetchZoomDelta();
    }

    public final void setNorthOrientation(NorthOrientation northOrientation) {
        Intrinsics.checkNotNullParameter(northOrientation, "northOrientation");
        this.map.setNorthOrientation(northOrientation);
    }

    public final void setConstrainMode(ConstrainMode constrainMode) {
        Intrinsics.checkNotNullParameter(constrainMode, "constrainMode");
        this.map.setConstrainMode(constrainMode);
    }

    public final void setViewportMode(ViewportMode viewportMode) {
        Intrinsics.checkNotNullParameter(viewportMode, "viewportMode");
        this.map.setViewportMode(viewportMode);
    }

    public final MapOptions getMapOptions() {
        MapOptions mapOptions = this.map.getMapOptions();
        Intrinsics.checkNotNullExpressionValue(mapOptions, "map.mapOptions");
        return mapOptions;
    }

    public final void triggerRepaint() {
        this.map.triggerRepaint();
    }

    public final Expected<String, None> setStyleLayerProperty(String layerId, String property, Value value) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expected<String, None> styleLayerProperty = this.map.setStyleLayerProperty(layerId, property, value);
        Intrinsics.checkNotNullExpressionValue(styleLayerProperty, "map.setStyleLayerPropert…layerId, property, value)");
        return styleLayerProperty;
    }

    public final ScreenCoordinate pixelForCoordinate(Point pixel) {
        Intrinsics.checkNotNullParameter(pixel, "pixel");
        ScreenCoordinate screenCoordinatePixelForCoordinate = this.map.pixelForCoordinate(pixel);
        Intrinsics.checkNotNullExpressionValue(screenCoordinatePixelForCoordinate, "map.pixelForCoordinate((pixel))");
        return screenCoordinatePixelForCoordinate;
    }

    public final Point coordinateForPixel(ScreenCoordinate screenCoordinate) {
        Intrinsics.checkNotNullParameter(screenCoordinate, "screenCoordinate");
        Point pointCoordinateForPixel = this.map.coordinateForPixel(screenCoordinate);
        Intrinsics.checkNotNullExpressionValue(pointCoordinateForPixel, "map.coordinateForPixel(screenCoordinate)");
        return pointCoordinateForPixel;
    }

    public final List<MapDebugOptions> getDebug() {
        List<MapDebugOptions> debug = this.map.getDebug();
        Intrinsics.checkNotNullExpressionValue(debug, "map.debug");
        return debug;
    }

    public final void setDebug(List<? extends MapDebugOptions> list, boolean debugActive) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.map.setDebug(list, debugActive);
    }

    public final Expected<String, None> addStyleLayer(Value parameters, LayerPosition layerPosition) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Expected<String, None> expectedAddStyleLayer = this.map.addStyleLayer(parameters, layerPosition);
        Intrinsics.checkNotNullExpressionValue(expectedAddStyleLayer, "map.addStyleLayer(parameters, layerPosition)");
        return expectedAddStyleLayer;
    }

    public final Expected<String, None> addStyleCustomLayer(String layerId, CustomLayerHost layerHost, LayerPosition layerPosition) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(layerHost, "layerHost");
        Expected<String, None> expectedAddStyleCustomLayer = this.map.addStyleCustomLayer(layerId, layerHost, layerPosition);
        Intrinsics.checkNotNullExpressionValue(expectedAddStyleCustomLayer, "map.addStyleCustomLayer(…layerHost, layerPosition)");
        return expectedAddStyleCustomLayer;
    }

    public final Expected<String, None> addPersistentStyleLayer(Value properties, LayerPosition layerPosition) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        Expected<String, None> expectedAddPersistentStyleLayer = this.map.addPersistentStyleLayer(properties, layerPosition);
        Intrinsics.checkNotNullExpressionValue(expectedAddPersistentStyleLayer, "map.addPersistentStyleLa…roperties, layerPosition)");
        return expectedAddPersistentStyleLayer;
    }

    public final Expected<String, None> addPersistentStyleCustomLayer(String layerId, CustomLayerHost layerHost, LayerPosition layerPosition) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(layerHost, "layerHost");
        Expected<String, None> expectedAddPersistentStyleCustomLayer = this.map.addPersistentStyleCustomLayer(layerId, layerHost, layerPosition);
        Intrinsics.checkNotNullExpressionValue(expectedAddPersistentStyleCustomLayer, "map.addPersistentStyleCu…layerHost, layerPosition)");
        return expectedAddPersistentStyleCustomLayer;
    }

    public final Expected<String, Boolean> isStyleLayerPersistent(String layerId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Expected<String, Boolean> expectedIsStyleLayerPersistent = this.map.isStyleLayerPersistent(layerId);
        Intrinsics.checkNotNullExpressionValue(expectedIsStyleLayerPersistent, "map.isStyleLayerPersistent(layerId)");
        return expectedIsStyleLayerPersistent;
    }

    public final Expected<String, None> moveStyleLayer(String layerId, LayerPosition layerPosition) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Expected<String, None> expectedMoveStyleLayer = this.map.moveStyleLayer(layerId, layerPosition);
        Intrinsics.checkNotNullExpressionValue(expectedMoveStyleLayer, "map.moveStyleLayer(layerId, layerPosition)");
        return expectedMoveStyleLayer;
    }

    public final void setStyleJSON(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        this.map.setStyleJSON(json);
    }

    public final String getStyleJSON() {
        String styleJSON = this.map.getStyleJSON();
        Intrinsics.checkNotNullExpressionValue(styleJSON, "map.styleJSON");
        return styleJSON;
    }

    public final String getStyleURI() {
        String styleURI = this.map.getStyleURI();
        Intrinsics.checkNotNullExpressionValue(styleURI, "map.styleURI");
        return styleURI;
    }

    public final void setStyleURI(String uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.map.setStyleURI(uri);
    }

    public final CameraOptions getStyleDefaultCamera() {
        CameraOptions styleDefaultCamera = this.map.getStyleDefaultCamera();
        Intrinsics.checkNotNullExpressionValue(styleDefaultCamera, "map.styleDefaultCamera");
        return styleDefaultCamera;
    }

    public final TransitionOptions getStyleTransition() {
        TransitionOptions styleTransition = this.map.getStyleTransition();
        Intrinsics.checkNotNullExpressionValue(styleTransition, "map.styleTransition");
        return styleTransition;
    }

    public final void setStyleTransition(TransitionOptions transitionOptions) {
        Intrinsics.checkNotNullParameter(transitionOptions, "transitionOptions");
        this.map.setStyleTransition(transitionOptions);
    }

    public final Expected<String, None> removeStyleLayer(String layerId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Expected<String, None> expectedRemoveStyleLayer = this.map.removeStyleLayer(layerId);
        Intrinsics.checkNotNullExpressionValue(expectedRemoveStyleLayer, "map.removeStyleLayer(layerId)");
        return expectedRemoveStyleLayer;
    }

    public final boolean styleLayerExists(String layerId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        return this.map.styleLayerExists(layerId);
    }

    public final StylePropertyValue getStyleLayerProperty(String layerId, String property) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(property, "property");
        StylePropertyValue styleLayerProperty = this.map.getStyleLayerProperty(layerId, property);
        Intrinsics.checkNotNullExpressionValue(styleLayerProperty, "map.getStyleLayerProperty(layerId, property)");
        return styleLayerProperty;
    }

    public final Expected<String, None> setStyleLayerProperties(String layerId, Value properties) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Expected<String, None> styleLayerProperties = this.map.setStyleLayerProperties(layerId, properties);
        Intrinsics.checkNotNullExpressionValue(styleLayerProperties, "map.setStyleLayerProperties(layerId, properties)");
        return styleLayerProperties;
    }

    public final Expected<String, None> addStyleSource(String sourceId, Value source) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(source, "source");
        Expected<String, None> expectedAddStyleSource = this.map.addStyleSource(sourceId, source);
        Intrinsics.checkNotNullExpressionValue(expectedAddStyleSource, "map.addStyleSource(sourceId, source)");
        return expectedAddStyleSource;
    }

    public final Expected<String, Value> getStyleSourceProperties(String sourceId) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Expected<String, Value> styleSourceProperties = this.map.getStyleSourceProperties(sourceId);
        Intrinsics.checkNotNullExpressionValue(styleSourceProperties, "map.getStyleSourceProperties(sourceId)");
        return styleSourceProperties;
    }

    public final Expected<String, None> updateStyleImageSourceImage(String sourceId, Image image) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(image, "image");
        Expected<String, None> expectedUpdateStyleImageSourceImage = this.map.updateStyleImageSourceImage(sourceId, image);
        Intrinsics.checkNotNullExpressionValue(expectedUpdateStyleImageSourceImage, "map.updateStyleImageSourceImage(sourceId, image)");
        return expectedUpdateStyleImageSourceImage;
    }

    public final Expected<String, Value> getStyleLayerProperties(String layerId) {
        Intrinsics.checkNotNullParameter(layerId, "layerId");
        Expected<String, Value> styleLayerProperties = this.map.getStyleLayerProperties(layerId);
        Intrinsics.checkNotNullExpressionValue(styleLayerProperties, "map.getStyleLayerProperties(layerId)");
        return styleLayerProperties;
    }

    public final Expected<String, None> removeStyleSource(String sourceId) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Expected<String, None> expectedRemoveStyleSource = this.map.removeStyleSource(sourceId);
        Intrinsics.checkNotNullExpressionValue(expectedRemoveStyleSource, "map.removeStyleSource(sourceId)");
        return expectedRemoveStyleSource;
    }

    public final Expected<String, None> setStyleCustomGeometrySourceTileData(String sourceId, CanonicalTileID tileId, List<Feature> featureCollection) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(tileId, "tileId");
        Intrinsics.checkNotNullParameter(featureCollection, "featureCollection");
        Expected<String, None> styleCustomGeometrySourceTileData = this.map.setStyleCustomGeometrySourceTileData(sourceId, tileId, featureCollection);
        Intrinsics.checkNotNullExpressionValue(styleCustomGeometrySourceTileData, "map.setStyleCustomGeomet…ileId, featureCollection)");
        return styleCustomGeometrySourceTileData;
    }

    public final boolean styleSourceExists(String sourceId) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        return this.map.styleSourceExists(sourceId);
    }

    public final Expected<String, None> setStyleLightProperty(String id, String property, Value value) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expected<String, None> styleLightProperty = this.map.setStyleLightProperty(id, property, value);
        Intrinsics.checkNotNullExpressionValue(styleLightProperty, "map.setStyleLightProperty(id, property, value)");
        return styleLightProperty;
    }

    public final List<StyleObjectInfo> getStyleLights() {
        List<StyleObjectInfo> styleLights = this.map.getStyleLights();
        Intrinsics.checkNotNullExpressionValue(styleLights, "map.styleLights");
        return styleLights;
    }

    public final Expected<String, None> setStyleLights(Value lights) {
        Intrinsics.checkNotNullParameter(lights, "lights");
        Expected<String, None> styleLights = this.map.setStyleLights(lights);
        Intrinsics.checkNotNullExpressionValue(styleLights, "map.setStyleLights(lights)");
        return styleLights;
    }

    public final Expected<String, None> setStyleAtmosphere(Value properties) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        Expected<String, None> styleAtmosphere = this.map.setStyleAtmosphere(properties);
        Intrinsics.checkNotNullExpressionValue(styleAtmosphere, "map.setStyleAtmosphere(properties)");
        return styleAtmosphere;
    }

    public final StylePropertyValue getStyleAtmosphereProperty(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        StylePropertyValue styleAtmosphereProperty = this.map.getStyleAtmosphereProperty(property);
        Intrinsics.checkNotNullExpressionValue(styleAtmosphereProperty, "map.getStyleAtmosphereProperty(property)");
        return styleAtmosphereProperty;
    }

    public final Expected<String, None> setStyleAtmosphereProperty(String property, Value value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expected<String, None> styleAtmosphereProperty = this.map.setStyleAtmosphereProperty(property, value);
        Intrinsics.checkNotNullExpressionValue(styleAtmosphereProperty, "map.setStyleAtmosphereProperty(property, value)");
        return styleAtmosphereProperty;
    }

    public final StylePropertyValue getStyleLightProperty(String id, String property) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(property, "property");
        StylePropertyValue styleLightProperty = this.map.getStyleLightProperty(id, property);
        Intrinsics.checkNotNullExpressionValue(styleLightProperty, "map.getStyleLightProperty(id, property)");
        return styleLightProperty;
    }

    public final Image getStyleImage(String imageId) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        return this.map.getStyleImage(imageId);
    }

    public final Expected<String, None> removeStyleImage(String imageId) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Expected<String, None> expectedRemoveStyleImage = this.map.removeStyleImage(imageId);
        Intrinsics.checkNotNullExpressionValue(expectedRemoveStyleImage, "map.removeStyleImage(imageId)");
        return expectedRemoveStyleImage;
    }

    public final boolean hasStyleImage(String imageId) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        return this.map.hasStyleImage(imageId);
    }

    public final Expected<String, None> addStyleModel(String modelId, String modelUri) {
        Intrinsics.checkNotNullParameter(modelId, "modelId");
        Intrinsics.checkNotNullParameter(modelUri, "modelUri");
        Expected<String, None> expectedAddStyleModel = this.map.addStyleModel(modelId, modelUri);
        Intrinsics.checkNotNullExpressionValue(expectedAddStyleModel, "map.addStyleModel(modelId, modelUri)");
        return expectedAddStyleModel;
    }

    public final Expected<String, None> removeStyleModel(String modelId) {
        Intrinsics.checkNotNullParameter(modelId, "modelId");
        Expected<String, None> expectedRemoveStyleModel = this.map.removeStyleModel(modelId);
        Intrinsics.checkNotNullExpressionValue(expectedRemoveStyleModel, "map.removeStyleModel(modelId)");
        return expectedRemoveStyleModel;
    }

    public final boolean hasStyleModel(String modelId) {
        Intrinsics.checkNotNullParameter(modelId, "modelId");
        return this.map.hasStyleModel(modelId);
    }

    public final Cancelable queryRenderedFeatures(RenderedQueryGeometry geometry, RenderedQueryOptions options, QueryRenderedFeaturesCallback callback) {
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable cancelableQueryRenderedFeatures = this.map.queryRenderedFeatures(geometry, options, callback);
        Intrinsics.checkNotNullExpressionValue(cancelableQueryRenderedFeatures, "map.queryRenderedFeature…metry, options, callback)");
        return cancelableQueryRenderedFeatures;
    }

    public final Cancelable querySourceFeatures(String sourceId, SourceQueryOptions options, QuerySourceFeaturesCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable cancelableQuerySourceFeatures = this.map.querySourceFeatures(sourceId, options, callback);
        Intrinsics.checkNotNullExpressionValue(cancelableQuerySourceFeatures, "map.querySourceFeatures(…rceId, options, callback)");
        return cancelableQuerySourceFeatures;
    }

    public final Cancelable queryFeatureExtensions(String sourceIdentifier, Feature feature, String extension, String extensionField, HashMap<String, Value> args, QueryFeatureExtensionCallback callback) {
        Intrinsics.checkNotNullParameter(sourceIdentifier, "sourceIdentifier");
        Intrinsics.checkNotNullParameter(feature, "feature");
        Intrinsics.checkNotNullParameter(extension, "extension");
        Intrinsics.checkNotNullParameter(extensionField, "extensionField");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable cancelableQueryFeatureExtensions = this.map.queryFeatureExtensions(sourceIdentifier, feature, extension, extensionField, args, callback);
        Intrinsics.checkNotNullExpressionValue(cancelableQueryFeatureExtensions, "map.queryFeatureExtensio…ionField, args, callback)");
        return cancelableQueryFeatureExtensions;
    }

    public final Cancelable setFeatureState(String sourceId, String sourceLayerId, String featureId, Value state, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable featureState = this.map.setFeatureState(sourceId, sourceLayerId, featureId, state, callback);
        Intrinsics.checkNotNullExpressionValue(featureState, "map.setFeatureState(sour…atureId, state, callback)");
        return featureState;
    }

    public final Cancelable getFeatureState(String sourceId, String sourceLayerId, String featureId, QueryFeatureStateCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable featureState = this.map.getFeatureState(sourceId, sourceLayerId, featureId, callback);
        Intrinsics.checkNotNullExpressionValue(featureState, "map.getFeatureState(sour…rId, featureId, callback)");
        return featureState;
    }

    public final FreeCameraOptions getFreeCameraOptions() {
        FreeCameraOptions freeCameraOptions = this.map.getFreeCameraOptions();
        Intrinsics.checkNotNullExpressionValue(freeCameraOptions, "map.freeCameraOptions");
        return freeCameraOptions;
    }

    public final void setCamera(FreeCameraOptions freeCameraOptions) {
        Intrinsics.checkNotNullParameter(freeCameraOptions, "freeCameraOptions");
        this.map.setCamera(freeCameraOptions);
    }

    public final Expected<String, None> invalidateStyleCustomGeometrySourceTile(String sourceId, CanonicalTileID tileId) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(tileId, "tileId");
        Expected<String, None> expectedInvalidateStyleCustomGeometrySourceTile = this.map.invalidateStyleCustomGeometrySourceTile(sourceId, tileId);
        Intrinsics.checkNotNullExpressionValue(expectedInvalidateStyleCustomGeometrySourceTile, "map.invalidateStyleCusto…rceTile(sourceId, tileId)");
        return expectedInvalidateStyleCustomGeometrySourceTile;
    }

    public final Expected<String, None> setStyleSourceProperties(String sourceId, Value properties) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Expected<String, None> styleSourceProperties = this.map.setStyleSourceProperties(sourceId, properties);
        Intrinsics.checkNotNullExpressionValue(styleSourceProperties, "map.setStyleSourceProperties(sourceId, properties)");
        return styleSourceProperties;
    }

    public final Expected<String, None> setStyleGeoJSONSourceData(String sourceId, String dataId, GeoJSONSourceData data) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        Intrinsics.checkNotNullParameter(data, "data");
        Expected<String, None> styleGeoJSONSourceData = this.map.setStyleGeoJSONSourceData(sourceId, dataId, data);
        Intrinsics.checkNotNullExpressionValue(styleGeoJSONSourceData, "map.setStyleGeoJSONSourc…a(sourceId, dataId, data)");
        return styleGeoJSONSourceData;
    }

    public final Cancelable removeFeatureState(String sourceId, String sourceLayerId, String featureId, String stateKey, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable cancelableRemoveFeatureState = this.map.removeFeatureState(sourceId, sourceLayerId, featureId, stateKey, callback);
        Intrinsics.checkNotNullExpressionValue(cancelableRemoveFeatureState, "map.removeFeatureState(s…reId, stateKey, callback)");
        return cancelableRemoveFeatureState;
    }

    public final Cancelable resetFeatureStates(String sourceId, String sourceLayerId, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable cancelableResetFeatureStates = this.map.resetFeatureStates(sourceId, sourceLayerId, callback);
        Intrinsics.checkNotNullExpressionValue(cancelableResetFeatureStates, "map.resetFeatureStates(s… sourceLayerId, callback)");
        return cancelableResetFeatureStates;
    }

    public final void setTileCacheBudget(TileCacheBudget tileCacheBudget) {
        this.map.setTileCacheBudget(tileCacheBudget);
    }

    public final Expected<String, None> addStyleCustomGeometrySource(String sourceId, CustomGeometrySourceOptions options) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(options, "options");
        Expected<String, None> expectedAddStyleCustomGeometrySource = this.map.addStyleCustomGeometrySource(sourceId, options);
        Intrinsics.checkNotNullExpressionValue(expectedAddStyleCustomGeometrySource, "map.addStyleCustomGeomet…Source(sourceId, options)");
        return expectedAddStyleCustomGeometrySource;
    }

    public final Expected<String, None> addStyleImage(String imageId, float scale, Image image, boolean sdf, List<ImageStretches> stretchX, List<ImageStretches> stretchY, ImageContent content) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(stretchX, "stretchX");
        Intrinsics.checkNotNullParameter(stretchY, "stretchY");
        Expected<String, None> expectedAddStyleImage = this.map.addStyleImage(imageId, scale, image, sdf, stretchX, stretchY, content);
        Intrinsics.checkNotNullExpressionValue(expectedAddStyleImage, "map.addStyleImage(imageI…etchX, stretchY, content)");
        return expectedAddStyleImage;
    }

    public final void reduceMemoryUse() {
        this.map.reduceMemoryUse();
    }

    public final boolean isUserAnimationInProgress() {
        return this.map.isUserAnimationInProgress();
    }

    public final StylePropertyValue getStyleSourceProperty(String sourceId, String property) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(property, "property");
        StylePropertyValue styleSourceProperty = this.map.getStyleSourceProperty(sourceId, property);
        Intrinsics.checkNotNullExpressionValue(styleSourceProperty, "map.getStyleSourceProperty(sourceId, property)");
        return styleSourceProperty;
    }

    public final boolean isStyleLoaded() {
        return this.map.isStyleLoaded();
    }

    public final Expected<String, None> setStyleSourceProperty(String sourceId, String property, Value value) {
        Intrinsics.checkNotNullParameter(sourceId, "sourceId");
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        Expected<String, None> styleSourceProperty = this.map.setStyleSourceProperty(sourceId, property, value);
        Intrinsics.checkNotNullExpressionValue(styleSourceProperty, "map.setStyleSourceProper…ourceId, property, value)");
        return styleSourceProperty;
    }

    public final CoordinateBoundsZoom coordinateBoundsZoomForCamera(CameraOptions camera) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        CoordinateBoundsZoom coordinateBoundsZoomCoordinateBoundsZoomForCamera = this.map.coordinateBoundsZoomForCamera(camera);
        Intrinsics.checkNotNullExpressionValue(coordinateBoundsZoomCoordinateBoundsZoomForCamera, "map.coordinateBoundsZoomForCamera(camera)");
        return coordinateBoundsZoomCoordinateBoundsZoomForCamera;
    }

    public final List<StyleObjectInfo> getStyleLayers() {
        List<StyleObjectInfo> styleLayers = this.map.getStyleLayers();
        Intrinsics.checkNotNullExpressionValue(styleLayers, "map.styleLayers");
        return styleLayers;
    }

    public final List<StyleObjectInfo> getStyleSources() {
        List<StyleObjectInfo> styleSources = this.map.getStyleSources();
        Intrinsics.checkNotNullExpressionValue(styleSources, "map.styleSources");
        return styleSources;
    }

    public final void setRenderWorldCopies(boolean renderWorldCopies) {
        this.map.setRenderWorldCopies(renderWorldCopies);
    }

    public final boolean getRenderWorldCopies() {
        return this.map.getRenderWorldCopies();
    }

    public final Cancelable subscribe(MapLoadedCallback mapLoadedCallback) {
        Intrinsics.checkNotNullParameter(mapLoadedCallback, "mapLoadedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(mapLoadedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(mapLoadedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(MapIdleCallback onMapIdleListener) {
        Intrinsics.checkNotNullParameter(onMapIdleListener, "onMapIdleListener");
        Cancelable cancelableSubscribe = this.map.subscribe(onMapIdleListener);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(onMapIdleListener)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(MapLoadingErrorCallback mapLoadingErrorCallback) {
        Intrinsics.checkNotNullParameter(mapLoadingErrorCallback, "mapLoadingErrorCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(mapLoadingErrorCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(mapLoadingErrorCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(StyleLoadedCallback styleLoadedCallback) {
        Intrinsics.checkNotNullParameter(styleLoadedCallback, "styleLoadedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(styleLoadedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(styleLoadedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(StyleDataLoadedCallback styleDataLoadedCallback) {
        Intrinsics.checkNotNullParameter(styleDataLoadedCallback, "styleDataLoadedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(styleDataLoadedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(styleDataLoadedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(SourceDataLoadedCallback sourceDataLoadedCallback) {
        Intrinsics.checkNotNullParameter(sourceDataLoadedCallback, "sourceDataLoadedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(sourceDataLoadedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(sourceDataLoadedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(SourceAddedCallback sourceAddedCallback) {
        Intrinsics.checkNotNullParameter(sourceAddedCallback, "sourceAddedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(sourceAddedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(sourceAddedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(SourceRemovedCallback sourceRemovedCallback) {
        Intrinsics.checkNotNullParameter(sourceRemovedCallback, "sourceRemovedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(sourceRemovedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(sourceRemovedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(StyleImageMissingCallback styleImageMissingCallback) {
        Intrinsics.checkNotNullParameter(styleImageMissingCallback, "styleImageMissingCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(styleImageMissingCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(styleImageMissingCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(StyleImageRemoveUnusedCallback styleImageRemoveUnusedCallback) {
        Intrinsics.checkNotNullParameter(styleImageRemoveUnusedCallback, "styleImageRemoveUnusedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(styleImageRemoveUnusedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(styleImageRemoveUnusedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(CameraChangedCallback cameraChangedCallback) {
        Intrinsics.checkNotNullParameter(cameraChangedCallback, "cameraChangedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(cameraChangedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(cameraChangedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(CameraChangedCoalescedCallback cameraChangedCoalescedCallback) {
        Intrinsics.checkNotNullParameter(cameraChangedCoalescedCallback, "cameraChangedCoalescedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(cameraChangedCoalescedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(cameraChangedCoalescedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(RenderFrameStartedCallback renderFrameStartedCallback) {
        Intrinsics.checkNotNullParameter(renderFrameStartedCallback, "renderFrameStartedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(renderFrameStartedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(renderFrameStartedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(RenderFrameFinishedCallback renderFrameFinishedCallback) {
        Intrinsics.checkNotNullParameter(renderFrameFinishedCallback, "renderFrameFinishedCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(renderFrameFinishedCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(renderFrameFinishedCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(ResourceRequestCallback resourceRequestCallback) {
        Intrinsics.checkNotNullParameter(resourceRequestCallback, "resourceRequestCallback");
        Cancelable cancelableSubscribe = this.map.subscribe(resourceRequestCallback);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(resourceRequestCallback)");
        return cancelableSubscribe;
    }

    public final Cancelable subscribe(String eventName, GenericEventCallback onGenericEventsListener) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(onGenericEventsListener, "onGenericEventsListener");
        Cancelable cancelableSubscribe = this.map.subscribe(eventName, onGenericEventsListener);
        Intrinsics.checkNotNullExpressionValue(cancelableSubscribe, "map.subscribe(eventName, onGenericEventsListener)");
        return cancelableSubscribe;
    }

    public final List<String> getAttributions() {
        List<String> attributions = this.map.getAttributions();
        Intrinsics.checkNotNullExpressionValue(attributions, "map.attributions");
        return attributions;
    }

    public final CameraOptions cameraForDrag(ScreenCoordinate fromPoint, ScreenCoordinate toPoint) {
        Intrinsics.checkNotNullParameter(fromPoint, "fromPoint");
        Intrinsics.checkNotNullParameter(toPoint, "toPoint");
        CameraOptions cameraOptionsCameraForDrag = this.map.cameraForDrag(fromPoint, toPoint);
        Intrinsics.checkNotNullExpressionValue(cameraOptionsCameraForDrag, "map.cameraForDrag(fromPoint, toPoint)");
        return cameraOptionsCameraForDrag;
    }

    public final void setCenterAltitudeMode(MapCenterAltitudeMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.map.setCenterAltitudeMode(mode);
    }

    public final MapCenterAltitudeMode getCenterAltitudeMode() {
        MapCenterAltitudeMode centerAltitudeMode = this.map.getCenterAltitudeMode();
        Intrinsics.checkNotNullExpressionValue(centerAltitudeMode, "map.centerAltitudeMode");
        return centerAltitudeMode;
    }

    public final void setScreenCullingShape(List<Vec2> shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.map.setScreenCullingShape(shape);
    }

    public final List<Vec2> getScreenCullingShape() {
        List<Vec2> screenCullingShape = this.map.getScreenCullingShape();
        Intrinsics.checkNotNullExpressionValue(screenCullingShape, "map.screenCullingShape");
        return screenCullingShape;
    }

    public final void startPerformanceStatisticsCollection(PerformanceStatisticsOptions options, PerformanceStatisticsCallback callback) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.map.startPerformanceStatisticsCollection(options, callback);
    }

    public final void stopPerformanceStatisticsCollection() {
        this.map.stopPerformanceStatisticsCollection();
    }

    public final Expected<String, None> setViewAnnotationAvoidLayers(HashSet<String> layerIds) {
        Expected<String, None> viewAnnotationAvoidLayers = this.map.setViewAnnotationAvoidLayers(layerIds);
        Intrinsics.checkNotNullExpressionValue(viewAnnotationAvoidLayers, "map.setViewAnnotationAvoidLayers(layerIds)");
        return viewAnnotationAvoidLayers;
    }

    public final HashSet<String> getViewAnnotationAvoidLayers() {
        HashSet<String> viewAnnotationAvoidLayers = this.map.getViewAnnotationAvoidLayers();
        Intrinsics.checkNotNullExpressionValue(viewAnnotationAvoidLayers, "map.viewAnnotationAvoidLayers");
        return viewAnnotationAvoidLayers;
    }

    public final Cancelable addInteraction(Interaction interaction) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Cancelable cancelableAddInteraction = this.map.addInteraction(interaction);
        Intrinsics.checkNotNullExpressionValue(cancelableAddInteraction, "map.addInteraction(interaction)");
        return cancelableAddInteraction;
    }

    public final void dispatch(PlatformEventInfo platformEventInfo) {
        Intrinsics.checkNotNullParameter(platformEventInfo, "platformEventInfo");
        this.map.dispatch(platformEventInfo);
    }

    public final Cancelable setFeatureState(FeaturesetDescriptor featureset, FeaturesetFeatureId featureId, Value state, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(featureset, "featureset");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable featureState = this.map.setFeatureState(featureset, featureId, state, callback);
        Intrinsics.checkNotNullExpressionValue(featureState, "map.setFeatureState(feat…atureId, state, callback)");
        return featureState;
    }

    public final Cancelable getFeatureState(FeaturesetDescriptor featureset, FeaturesetFeatureId featureId, QueryFeatureStateCallback callback) {
        Intrinsics.checkNotNullParameter(featureset, "featureset");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable featureState = this.map.getFeatureState(featureset, featureId, callback);
        Intrinsics.checkNotNullExpressionValue(featureState, "map.getFeatureState(feat…set, featureId, callback)");
        return featureState;
    }

    public final Cancelable removeFeatureState(FeaturesetDescriptor featureset, FeaturesetFeatureId featureId, String stateKey, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(featureset, "featureset");
        Intrinsics.checkNotNullParameter(featureId, "featureId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable cancelableRemoveFeatureState = this.map.removeFeatureState(featureset, featureId, stateKey, callback);
        Intrinsics.checkNotNullExpressionValue(cancelableRemoveFeatureState, "map.removeFeatureState(f…reId, stateKey, callback)");
        return cancelableRemoveFeatureState;
    }

    public final Cancelable resetFeatureStates(FeaturesetDescriptor featureset, FeatureStateOperationCallback callback) {
        Intrinsics.checkNotNullParameter(featureset, "featureset");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable cancelableResetFeatureStates = this.map.resetFeatureStates(featureset, callback);
        Intrinsics.checkNotNullExpressionValue(cancelableResetFeatureStates, "map.resetFeatureStates(featureset, callback)");
        return cancelableResetFeatureStates;
    }

    public final Cancelable queryRenderedFeatures(RenderedQueryGeometry geometry, List<FeaturesetQueryTarget> targets, QueryRenderedFeaturesCallback callback) {
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        Intrinsics.checkNotNullParameter(targets, "targets");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Cancelable cancelableQueryRenderedFeatures = this.map.queryRenderedFeatures(geometry, targets, callback);
        Intrinsics.checkNotNullExpressionValue(cancelableQueryRenderedFeatures, "map.queryRenderedFeature…metry, targets, callback)");
        return cancelableQueryRenderedFeatures;
    }
}
