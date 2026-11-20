.class public Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;
.super Landroid/widget/FrameLayout;
.source "RNMBXMapView.kt"

# interfaces
.implements Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;
.implements Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Companion;,
        Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;,
        Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;,
        Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNMBXMapView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNMBXMapView.kt\ncom/rnmapbox/rnmbx/components/mapview/RNMBXMapView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1599:1\n1869#2,2:1600\n1869#2,2:1602\n1869#2,2:1604\n1869#2,2:1610\n1869#2,2:1613\n37#3:1606\n36#3,3:1607\n1#4:1612\n*S KotlinDebug\n*F\n+ 1 RNMBXMapView.kt\ncom/rnmapbox/rnmbx/components/mapview/RNMBXMapView\n*L\n419#1:1600,2\n435#1:1602,2\n443#1:1604,2\n545#1:1610,2\n1167#1:1613,2\n475#1:1606\n475#1:1607,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0016\u0018\u0000 \u00e9\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0008\u00e6\u0002\u00e7\u0002\u00e8\u0002\u00e9\u0002B!\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010h\u001a\u00020BJ\u0010\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020<H\u0016J\u0010\u0010K\u001a\u00020j2\u0006\u0010l\u001a\u00020GH\u0002J\u0010\u0010m\u001a\u00020j2\u0006\u0010n\u001a\u00020BH\u0002J\u0010\u0010o\u001a\u00020j2\u0006\u0010n\u001a\u00020BH\u0002J!\u0010p\u001a\u00020j\"\u0004\u0008\u0000\u0010q2\u0006\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u0002Hq\u00a2\u0006\u0002\u0010uJ!\u0010v\u001a\u000201\"\u0004\u0008\u0000\u0010q2\u0006\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u0002Hq\u00a2\u0006\u0002\u0010wJ!\u0010x\u001a\u00020j\"\u0004\u0008\u0000\u0010q2\u0006\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u0002Hq\u00a2\u0006\u0002\u0010uJ\u0006\u0010y\u001a\u00020jJ\u000e\u0010z\u001a\u00020j2\u0006\u0010{\u001a\u00020|J\u0019\u0010}\u001a\u00020j2\u0008\u0010~\u001a\u0004\u0018\u00010\u007f2\u0007\u0010\u0080\u0001\u001a\u00020<J\u0010\u0010\u0081\u0001\u001a\u00020j2\u0007\u0010\u0080\u0001\u001a\u00020<J\u0012\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u007f2\u0007\u0010\u0086\u0001\u001a\u00020<J\u0011\u0010\u0087\u0001\u001a\u00020j2\u0008\u0010\u0088\u0001\u001a\u00030\u0089\u0001J\u0010\u0010\u008a\u0001\u001a\u00020j2\u0007\u0010\u008b\u0001\u001a\u000201J\u0013\u0010\u008c\u0001\u001a\u00020j2\u0008\u0010\u0088\u0001\u001a\u00030\u0089\u0001H\u0002J\u0013\u0010\u008d\u0001\u001a\u00020j2\u0008\u0008\u0002\u0010K\u001a\u000201H\u0002J$\u0010\u0091\u0001\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010 2\u0013\u0010\u0092\u0001\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030 \u0018\u00010.H\u0002J\u0012\u0010\u0093\u0001\u001a\u0002012\t\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u001fJ.\u0010\u00a6\u0001\u001a\u00020j2%\u0010\u00a7\u0001\u001a \u0012\u0015\u0012\u00130B\u00a2\u0006\u000e\u0008\u00a1\u0001\u0012\t\u0008\u00a2\u0001\u0012\u0004\u0008\u0008(n\u0012\u0004\u0012\u00020j0\u00a0\u0001J.\u0010\u00a8\u0001\u001a\u00020j2%\u0010\u00a7\u0001\u001a \u0012\u0015\u0012\u00130D\u00a2\u0006\u000e\u0008\u00a1\u0001\u0012\t\u0008\u00a2\u0001\u0012\u0004\u0008\u0008(n\u0012\u0004\u0012\u00020j0\u00a0\u0001J\u0007\u0010\u00a9\u0001\u001a\u00020jJ\u0010\u0010\u00aa\u0001\u001a\u00020j2\u0007\u0010\u00ab\u0001\u001a\u00020+J\u0007\u0010\u00ac\u0001\u001a\u00020jJ\u0007\u0010\u00ad\u0001\u001a\u00020jJ#\u0010\u00ae\u0001\u001a\u00020j2\t\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u001f2\u000f\u0010\u00b0\u0001\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.J\u0010\u0010\u00b1\u0001\u001a\u00020j2\u0007\u0010\u00b2\u0001\u001a\u00020<J\u0018\u0010\u00b3\u0001\u001a\u00020j2\t\u0010\u00b4\u0001\u001a\u0004\u0018\u00010?\u00a2\u0006\u0003\u0010\u00b5\u0001J\t\u0010\u00b6\u0001\u001a\u00020jH\u0002J\u0010\u0010\u00b7\u0001\u001a\u00020j2\u0007\u0010\u00b8\u0001\u001a\u00020\u001fJ\u0007\u0010\u00b9\u0001\u001a\u00020jJh\u0010\u00ba\u0001\u001a\u00020j2\u0012\u0010\u0092\u0001\u001a\r\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030 0\u00bb\u00012\u0008\u0010\u00bc\u0001\u001a\u00030\u00bd\u00012!\u0010\u00be\u0001\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0012\u000f\u0012\r\u0012\u0007\u0012\u0005\u0018\u00010\u00c0\u0001\u0018\u00010.0\u00bf\u00012\u0014\u0010\u00c1\u0001\u001a\u000f\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010 0\u00c2\u00012\u0008\u0010\u00c3\u0001\u001a\u00030\u00c4\u0001J\u0013\u0010\u00c5\u0001\u001a\u0002012\u0008\u0010\u00c6\u0001\u001a\u00030\u00c7\u0001H\u0016J\u0013\u0010\u00c8\u0001\u001a\u0002012\u0008\u0010\u00c6\u0001\u001a\u00030\u00c7\u0001H\u0016J\u0011\u0010\u00cb\u0001\u001a\u00020j2\u0008\u0010\u00cc\u0001\u001a\u00030\u00cd\u0001J\u001c\u0010\u00ce\u0001\u001a\u00020j2\t\u0010\u00cf\u0001\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u00a7\u0001\u001a\u00030\u00ca\u0001J\u0007\u0010\u00d0\u0001\u001a\u00020jJ\u0012\u0010\u00d1\u0001\u001a\u00020j2\u0007\u0010\u00d2\u0001\u001a\u00020\u001fH\u0002J\u001d\u0010\u00d3\u0001\u001a\u00020j2\u000e\u0010\u00d4\u0001\u001a\t\u0012\u0004\u0012\u00020\u001f0\u00d5\u0001\u00a2\u0006\u0003\u0010\u00d6\u0001J\u0012\u0010\u00d7\u0001\u001a\u0002012\u0007\u0010\u00d8\u0001\u001a\u00020\u001fH\u0002J\n\u0010\u00d9\u0001\u001a\u00030\u00da\u0001H\u0002J\u001b\u0010\u00db\u0001\u001a\u00030\u00da\u00012\t\u0010\u008b\u0001\u001a\u0004\u0018\u000101H\u0002\u00a2\u0006\u0003\u0010\u00dc\u0001J\u0012\u0010\u00dd\u0001\u001a\u00020j2\u0007\u0010\u00de\u0001\u001a\u00020GH\u0002J\u0011\u0010\u00e2\u0001\u001a\u00020j2\u0008\u0010\u00e3\u0001\u001a\u00030\u00e4\u0001J\u0011\u0010\u00e5\u0001\u001a\u00020j2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J\u0011\u0010\u00e8\u0001\u001a\u00020j2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J\n\u0010\u00e9\u0001\u001a\u00030\u00ea\u0001H\u0002J\u001b\u0010\u00eb\u0001\u001a\u00020j2\u0008\u0010\u00ec\u0001\u001a\u00030\u00bd\u00012\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J\u001b\u0010\u00ed\u0001\u001a\u00020j2\u0008\u0010\u00ee\u0001\u001a\u00030\u00c7\u00012\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J8\u0010\u00ef\u0001\u001a\u00020j2\u0008\u0010\u00c6\u0001\u001a\u00030\u00f0\u00012\n\u0010\u00f1\u0001\u001a\u0005\u0018\u00010\u00f2\u00012\u000f\u0010\u00f3\u0001\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J:\u0010\u00f4\u0001\u001a\u00020j2\n\u0010\u00f5\u0001\u001a\u0005\u0018\u00010\u00f6\u00012\n\u0010\u00f1\u0001\u001a\u0005\u0018\u00010\u00f2\u00012\u000f\u0010\u00f3\u0001\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J7\u0010\u00f7\u0001\u001a\u00020j2\u0007\u0010\u00f8\u0001\u001a\u00020\u001f2\n\u0010\u00f1\u0001\u001a\u0005\u0018\u00010\u00f2\u00012\u000f\u0010\u00f9\u0001\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J\u0011\u0010\u00fa\u0001\u001a\u00020j2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J\u001a\u0010\u00fb\u0001\u001a\u00020j2\u0007\u0010\u00fc\u0001\u001a\u0002012\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J#\u0010\u00fd\u0001\u001a\u00020j2\u0007\u0010\u00fe\u0001\u001a\u00020?2\u0007\u0010\u00ff\u0001\u001a\u00020?2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J\u0011\u0010\u0080\u0002\u001a\u00020j2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001JE\u0010\u0081\u0002\u001a\u00020j2\u0007\u0010\u0082\u0002\u001a\u00020\u001f2\u0015\u0010\u0083\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0005\u0012\u00030\u0084\u00020\u00bf\u00012\u0007\u0010\u00f8\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J.\u0010\u0086\u0002\u001a\u00020j2\u0007\u0010\u0082\u0002\u001a\u00020\u001f2\u0007\u0010\u00f8\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J9\u0010\u0087\u0002\u001a\u00020j2\u0007\u0010\u0082\u0002\u001a\u00020\u001f2\t\u0010\u0088\u0002\u001a\u0004\u0018\u00010\u001f2\u0007\u0010\u00f8\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u00e6\u0001\u001a\u00030\u00e7\u0001J%\u0010\u0089\u0002\u001a\u0002012\u0008\u0010\u00cc\u0001\u001a\u00030\u00cd\u00012\u0007\u0010\u00f8\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001fJ$\u0010\u008a\u0002\u001a\u00020j2\u0007\u0010\u008b\u0002\u001a\u0002012\u0007\u0010\u00f8\u0001\u001a\u00020\u001f2\t\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u001fJ\u0011\u0010\u008c\u0002\u001a\u0004\u0018\u00010D2\u0006\u0010U\u001a\u00020\u001fJ\u0007\u0010\u008d\u0002\u001a\u00020DJ\u001b\u0010\u008e\u0002\u001a\u00020<2\u0007\u0010\u008f\u0002\u001a\u00020\u001f2\u0007\u0010\u0090\u0002\u001a\u00020<H\u0002J&\u0010\u0091\u0002\u001a\u00020j2\u0007\u0010\u008f\u0002\u001a\u00020\u001f2\u0008\u0010\u0092\u0002\u001a\u00030\u0093\u00022\u0008\u0010\u0094\u0002\u001a\u00030\u0095\u0002H\u0002J\u0010\u0010\u009e\u0002\u001a\u00020j2\u0007\u0010\u009f\u0002\u001a\u000201J\u0010\u0010\u00a0\u0002\u001a\u00020j2\u0007\u0010\u00a1\u0002\u001a\u000201J\u0011\u0010\u00a2\u0002\u001a\u00020j2\u0008\u0010\u00a3\u0002\u001a\u00030\u00a4\u0002J\u0010\u0010\u00a5\u0002\u001a\u00020j2\u0007\u0010\u00a6\u0002\u001a\u00020<J\u0011\u0010\u00a7\u0002\u001a\u00020j2\u0008\u0010\u00a8\u0002\u001a\u00030\u00a4\u0002J\t\u0010\u00a9\u0002\u001a\u00020jH\u0002J\u0010\u0010\u00ad\u0002\u001a\u00020j2\u0007\u0010\u00ae\u0002\u001a\u000201J\u0011\u0010\u00af\u0002\u001a\u00020j2\u0008\u0010\u00b0\u0002\u001a\u00030\u00a4\u0002J\u0010\u0010\u00b1\u0002\u001a\u00020j2\u0007\u0010\u00b2\u0002\u001a\u00020<J\u0011\u0010\u00b3\u0002\u001a\u00020j2\u0008\u0010\u00b2\u0002\u001a\u00030\u00a4\u0002J\t\u0010\u00b4\u0002\u001a\u00020jH\u0002J\u0007\u0010\u00b5\u0002\u001a\u00020jJ!\u0010\u00b6\u0002\u001a\u0010\u0012\u0004\u0012\u00020<\u0012\u0005\u0012\u00030\u00b8\u00020\u00b7\u00022\u0008\u0010\u00b9\u0002\u001a\u00030\u00a4\u0002H\u0002J\u0018\u0010\u00bd\u0002\u001a\u00020j2\t\u0010\u00be\u0002\u001a\u0004\u0018\u000101\u00a2\u0006\u0003\u0010\u0099\u0001J\u0011\u0010\u00bf\u0002\u001a\u00020j2\u0008\u0010\u00c0\u0002\u001a\u00030\u00a4\u0002J\u0010\u0010\u00c1\u0002\u001a\u00020j2\u0007\u0010\u00b9\u0002\u001a\u00020<J\u0013\u0010\u00c2\u0002\u001a\u00020j2\n\u0010\u00b9\u0002\u001a\u0005\u0018\u00010\u00a4\u0002J\t\u0010\u00c3\u0002\u001a\u00020jH\u0002J\u0018\u0010\u00ca\u0002\u001a\u00020j2\t\u0010\u00cb\u0002\u001a\u0004\u0018\u000101\u00a2\u0006\u0003\u0010\u0099\u0001J\u0011\u0010\u00cc\u0002\u001a\u00020j2\u0008\u0010\u00c0\u0002\u001a\u00030\u00a4\u0002J\u0010\u0010\u00cd\u0002\u001a\u00020j2\u0007\u0010\u00b9\u0002\u001a\u00020<J\u0013\u0010\u00ce\u0002\u001a\u00020j2\n\u0010\u00b9\u0002\u001a\u0005\u0018\u00010\u00a4\u0002J\t\u0010\u00cf\u0002\u001a\u00020jH\u0002J\u0008\u0010\u00d5\u0002\u001a\u00030\u00d6\u0002J\t\u0010\u00d7\u0002\u001a\u00020jH\u0014J\u0007\u0010\u00d8\u0002\u001a\u00020jJ\t\u0010\u00d9\u0002\u001a\u00020jH\u0014J\u0017\u0010\u00da\u0002\u001a\u00020j2\u000e\u0010\u00a7\u0001\u001a\t\u0012\u0004\u0012\u00020j0\u00db\u0002J\\\u0010\u00dc\u0002\u001a\u00020j2\t\u0010\u00dd\u0002\u001a\u0004\u0018\u00010\u007f2\u0007\u0010\u00de\u0002\u001a\u00020<2\u0007\u0010\u00df\u0002\u001a\u00020<2\u0007\u0010\u00e0\u0002\u001a\u00020<2\u0007\u0010\u00e1\u0002\u001a\u00020<2\u0007\u0010\u00e2\u0002\u001a\u00020<2\u0007\u0010\u00e3\u0002\u001a\u00020<2\u0007\u0010\u00e4\u0002\u001a\u00020<2\u0007\u0010\u00e5\u0002\u001a\u00020<H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u001f\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030 0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010$\u001a\u00020%8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008&\u0010\'R\u000e\u0010*\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010-\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00100\u001a\u000201X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00102R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00105\u001a\u0008\u0012\u0004\u0012\u0002060\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u00107\u001a\n\u0012\u0004\u0012\u000208\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010;\u001a\u0004\u0018\u00010<X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010=R\u0012\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010@R\u000e\u0010A\u001a\u00020BX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020DX\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010E\u001a\u0002018F\u00a2\u0006\u0006\u001a\u0004\u0008E\u00102R\"\u0010H\u001a\u0004\u0018\u00010G2\u0008\u0010F\u001a\u0004\u0018\u00010G@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010JR\u000e\u0010K\u001a\u000201X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010L\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010MX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010N\u001a\u0004\u0018\u00010OX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010P\u001a\u0004\u0018\u00010<2\u0008\u0010F\u001a\u0004\u0018\u00010<@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010=\u001a\u0004\u0008Q\u0010RR\u000e\u0010S\u001a\u000201X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u000201X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010U\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\u0011\u0010Z\u001a\u00020D8F\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\\R\u0011\u0010]\u001a\u00020^8F\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010`R$\u0010a\u001a\u0002012\u0006\u0010F\u001a\u000201@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u00102\"\u0004\u0008c\u0010dR\u001a\u0010e\u001a\u000201X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u00102\"\u0004\u0008g\u0010dR\u0014\u0010\u0082\u0001\u001a\u00020<8F\u00a2\u0006\u0008\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001R!\u0010\u008e\u0001\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030 0.8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001R$\u0010\u0095\u0001\u001a\u0004\u0018\u000101X\u0086\u000e\u00a2\u0006\u0015\n\u0003\u0010\u009a\u0001\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001\"\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u001b\u0010\u009b\u0001\u001a\t\u0012\u0004\u0012\u00020\u00000\u009c\u0001\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001RC\u0010\u009f\u0001\u001a&\u0012\"\u0012 \u0012\u0015\u0012\u00130D\u00a2\u0006\u000e\u0008\u00a1\u0001\u0012\t\u0008\u00a2\u0001\u0012\u0004\u0008\u0008(n\u0012\u0004\u0012\u00020j0\u00a0\u00010\"X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00a3\u0001\u0010\u0090\u0001\"\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\"\u0010\u00c9\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u001f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00ca\u00010\"0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u00df\u0001\u001a\u00020O8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001R \u0010\u0096\u0002\u001a\u00030\u0093\u0002X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0097\u0002\u0010\u0098\u0002\"\u0006\u0008\u0099\u0002\u0010\u009a\u0002R\u001d\u0010\u009b\u0002\u001a\u000201X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009c\u0002\u00102\"\u0005\u0008\u009d\u0002\u0010dR \u0010\u00aa\u0002\u001a\u00030\u0093\u0002X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00ab\u0002\u0010\u0098\u0002\"\u0006\u0008\u00ac\u0002\u0010\u009a\u0002R \u0010\u00ba\u0002\u001a\u00030\u0093\u0002X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00bb\u0002\u0010\u0098\u0002\"\u0006\u0008\u00bc\u0002\u0010\u009a\u0002R\u0014\u0010\u00c4\u0002\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0005\n\u0003\u0010\u009a\u0001R\u0013\u0010\u00c5\u0002\u001a\u0004\u0018\u00010<X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010=R\u0012\u0010\u00c6\u0002\u001a\u0005\u0018\u00010\u00b8\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u00c7\u0002\u001a\u00030\u0093\u0002X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00c8\u0002\u0010\u0098\u0002\"\u0006\u0008\u00c9\u0002\u0010\u009a\u0002R \u0010\u00d0\u0002\u001a\u00030\u00d1\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00d4\u0002\u0010)\u001a\u0006\u0008\u00d2\u0002\u0010\u00d3\u0002\u00a8\u0006\u00ea\u0002"
    }
    d2 = {
        "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;",
        "Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "mContext",
        "Landroid/content/Context;",
        "mManager",
        "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;",
        "options",
        "Lcom/mapbox/maps/MapInitOptions;",
        "<init>",
        "(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;Lcom/mapbox/maps/MapInitOptions;)V",
        "getMManager",
        "()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;",
        "setMManager",
        "(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;)V",
        "offscreenAnnotationViewContainer",
        "Landroid/view/ViewGroup;",
        "getOffscreenAnnotationViewContainer",
        "()Landroid/view/ViewGroup;",
        "setOffscreenAnnotationViewContainer",
        "(Landroid/view/ViewGroup;)V",
        "imageManager",
        "Lcom/rnmapbox/rnmbx/components/images/ImageManager;",
        "getImageManager",
        "()Lcom/rnmapbox/rnmbx/components/images/ImageManager;",
        "setImageManager",
        "(Lcom/rnmapbox/rnmbx/components/images/ImageManager;)V",
        "mSources",
        "",
        "",
        "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;",
        "mImages",
        "",
        "Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;",
        "pointAnnotations",
        "Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;",
        "getPointAnnotations",
        "()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;",
        "pointAnnotations$delegate",
        "Lkotlin/Lazy;",
        "mProjection",
        "Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;",
        "mLocaleString",
        "mLocaleLayerIds",
        "",
        "mStyleURL",
        "isDestroyed",
        "",
        "()Z",
        "mCamera",
        "Lcom/rnmapbox/rnmbx/components/camera/RNMBXCamera;",
        "mFeatures",
        "Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;",
        "mQueuedFeatures",
        "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;",
        "mCameraChangeTracker",
        "Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;",
        "mPreferredFrameRate",
        "",
        "Ljava/lang/Integer;",
        "mMaxPitch",
        "",
        "Ljava/lang/Double;",
        "mMap",
        "Lcom/mapbox/maps/MapboxMap;",
        "mMapView",
        "Lcom/mapbox/maps/MapView;",
        "isInitialized",
        "value",
        "Lcom/mapbox/maps/Style;",
        "savedStyle",
        "getSavedStyle",
        "()Lcom/mapbox/maps/Style;",
        "styleLoaded",
        "mHandledMapChangedEvents",
        "Ljava/util/HashSet;",
        "mLocationComponentManager",
        "Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;",
        "tintColor",
        "getTintColor",
        "()Ljava/lang/Integer;",
        "wasGestureActive",
        "isGestureActive",
        "mapViewImpl",
        "getMapViewImpl",
        "()Ljava/lang/String;",
        "setMapViewImpl",
        "(Ljava/lang/String;)V",
        "mapView",
        "getMapView",
        "()Lcom/mapbox/maps/MapView;",
        "viewAnnotationManager",
        "Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;",
        "getViewAnnotationManager",
        "()Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;",
        "requestDisallowInterceptTouchEvent",
        "getRequestDisallowInterceptTouchEvent",
        "setRequestDisallowInterceptTouchEvent",
        "(Z)V",
        "deselectAnnotationOnTap",
        "getDeselectAnnotationOnTap",
        "setDeselectAnnotationOnTap",
        "getMapboxMap",
        "setId",
        "",
        "id",
        "style",
        "setupEvents",
        "map",
        "onMapReady",
        "mapGestureBegin",
        "T",
        "type",
        "Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;",
        "gesture",
        "(Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;Ljava/lang/Object;)V",
        "mapGesture",
        "(Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;Ljava/lang/Object;)Z",
        "mapGestureEnd",
        "init",
        "getStyle",
        "onStyleLoaded",
        "Lcom/mapbox/maps/Style$OnStyleLoaded;",
        "addFeature",
        "childView",
        "Landroid/view/View;",
        "childPosition",
        "removeFeatureAt",
        "featureCount",
        "getFeatureCount",
        "()I",
        "getFeatureAt",
        "i",
        "removeAllFeatureFromMap",
        "reason",
        "Lcom/rnmapbox/rnmbx/components/RemovalReason;",
        "sendRegionChangeEvent",
        "isAnimated",
        "removeAllFeaturesFromMap",
        "addFeaturesToMap",
        "allTouchableSources",
        "getAllTouchableSources",
        "()Ljava/util/List;",
        "getTouchableSourceWithHighestZIndex",
        "sources",
        "isJSONValid",
        "test",
        "surfaceView",
        "getSurfaceView",
        "()Ljava/lang/Boolean;",
        "setSurfaceView",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "changes",
        "Lcom/rnmapbox/rnmbx/utils/PropertyChanges;",
        "getChanges",
        "()Lcom/rnmapbox/rnmbx/utils/PropertyChanges;",
        "withMapWaiters",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "getWithMapWaiters",
        "setWithMapWaiters",
        "(Ljava/util/List;)V",
        "withMap",
        "callback",
        "withMapView",
        "applyAllChanges",
        "setReactProjection",
        "projection",
        "applyProjection",
        "applyLocalizeLabels",
        "setReactLocalizeLabels",
        "localeStr",
        "layerIds",
        "setReactPreferredFramesPerSecond",
        "preferredFramesPerSecond",
        "setReactMaxPitch",
        "maxPitch",
        "(Ljava/lang/Double;)V",
        "applyMaxPitch",
        "setReactStyleURL",
        "styleURL",
        "applyStyleURL",
        "handleTapInSources",
        "Ljava/util/LinkedList;",
        "screenPoint",
        "Lcom/mapbox/maps/ScreenCoordinate;",
        "hits",
        "Ljava/util/HashMap;",
        "Lcom/mapbox/geojson/Feature;",
        "hitTouchableSources",
        "Ljava/util/ArrayList;",
        "handleTap",
        "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;",
        "onMapClick",
        "point",
        "Lcom/mapbox/geojson/Point;",
        "onMapLongClick",
        "layerWaiters",
        "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;",
        "layerAdded",
        "layer",
        "Lcom/mapbox/maps/extension/style/layers/Layer;",
        "waitForLayer",
        "layerID",
        "sendRegionDidChangeEvent",
        "handleMapChangedEvent",
        "eventType",
        "setHandledMapChangedEvents",
        "events",
        "",
        "([Ljava/lang/String;)V",
        "canHandleEvent",
        "event",
        "makeCameraPayload",
        "Lcom/facebook/react/bridge/WritableMap;",
        "makeRegionPayload",
        "(Ljava/lang/Boolean;)Lcom/facebook/react/bridge/WritableMap;",
        "setUpImage",
        "loadedStyle",
        "locationComponentManager",
        "getLocationComponentManager",
        "()Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;",
        "getMapAsync",
        "mapReady",
        "Lcom/rnmapbox/rnmbx/components/mapview/OnMapReadyCallback;",
        "getCenter",
        "response",
        "Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;",
        "getZoom",
        "getDisplayDensity",
        "",
        "getCoordinateFromView",
        "pixel",
        "getPointInView",
        "coordinate",
        "queryRenderedFeaturesAtPoint",
        "Landroid/graphics/PointF;",
        "filter",
        "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;",
        "layerIDs",
        "queryRenderedFeaturesInRect",
        "rect",
        "Landroid/graphics/RectF;",
        "querySourceFeatures",
        "sourceId",
        "sourceLayerIDs",
        "getVisibleBounds",
        "takeSnap",
        "writeToDisk",
        "queryTerrainElevation",
        "longitude",
        "latitude",
        "clearData",
        "setFeatureState",
        "featureId",
        "state",
        "Lcom/mapbox/bindgen/Value;",
        "sourceLayerId",
        "getFeatureState",
        "removeFeatureState",
        "stateKey",
        "match",
        "setSourceVisibility",
        "visible",
        "createAndAddMapView",
        "createMapView",
        "toGravity",
        "kind",
        "viewPosition",
        "updateOrnament",
        "from",
        "Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;",
        "to",
        "Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;",
        "mCompassSettings",
        "getMCompassSettings",
        "()Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;",
        "setMCompassSettings",
        "(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;)V",
        "mCompassFadeWhenNorth",
        "getMCompassFadeWhenNorth",
        "setMCompassFadeWhenNorth",
        "setReactCompassEnabled",
        "compassEnabled",
        "setReactCompassFadeWhenNorth",
        "compassFadeWhenNorth",
        "setReactCompassViewMargins",
        "compassViewMargins",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "setReactCompassViewPosition",
        "compassViewPosition",
        "setReactCompassPosition",
        "compassPosition",
        "applyCompass",
        "mScaleBarSettings",
        "getMScaleBarSettings",
        "setMScaleBarSettings",
        "setReactScaleBarEnabled",
        "scaleBarEnabled",
        "setReactScaleBarViewMargins",
        "scaleBarMargins",
        "setReactScaleBarViewPosition",
        "scaleBarPosition",
        "setReactScaleBarPosition",
        "applyScaleBar",
        "workaroundToRelayoutChildOfMapView",
        "getGravityAndMargin",
        "Lkotlin/Pair;",
        "",
        "position",
        "mAttributionSettings",
        "getMAttributionSettings",
        "setMAttributionSettings",
        "setReactAttributionEnabled",
        "attributionEnabled",
        "setReactAttributionViewMargins",
        "margins",
        "setReactAttributionViewPosition",
        "setReactAttributionPosition",
        "applyAttribution",
        "mLogoEnabled",
        "mLogoGravity",
        "mLogoMargin",
        "mLogoSettings",
        "getMLogoSettings",
        "setMLogoSettings",
        "setReactLogoEnabled",
        "enabled",
        "setReactLogoMargins",
        "setReactLogoViewPosition",
        "setReactLogoPosition",
        "applyLogo",
        "lifecycle",
        "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;",
        "getLifecycle",
        "()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;",
        "lifecycle$delegate",
        "getLifecycleState",
        "Landroidx/lifecycle/Lifecycle$State;",
        "onDetachedFromWindow",
        "onDropViewInstance",
        "onAttachedToWindow",
        "callIfAttachedToWindow",
        "Lkotlin/Function0;",
        "onLayoutChange",
        "v",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "Property",
        "HandleTap",
        "FoundLayerCallback",
        "Companion",
        "rnmapbox_maps_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Companion;

.field public static final LOG_TAG:Ljava/lang/String; = "RNMBXMapView"


# instance fields
.field private final changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rnmapbox/rnmbx/utils/PropertyChanges<",
            "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;",
            ">;"
        }
    .end annotation
.end field

.field private deselectAnnotationOnTap:Z

.field private imageManager:Lcom/rnmapbox/rnmbx/components/images/ImageManager;

.field private final isDestroyed:Z

.field private isGestureActive:Z

.field private final layerWaiters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lifecycle$delegate:Lkotlin/Lazy;

.field private mAttributionSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

.field private mCamera:Lcom/rnmapbox/rnmbx/components/camera/RNMBXCamera;

.field private final mCameraChangeTracker:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;

.field private mCompassFadeWhenNorth:Z

.field private mCompassSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

.field private final mContext:Landroid/content/Context;

.field private final mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandledMapChangedEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleLayerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleString:Ljava/lang/String;

.field private mLocationComponentManager:Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;

.field private mLogoEnabled:Ljava/lang/Boolean;

.field private mLogoGravity:Ljava/lang/Integer;

.field private mLogoMargin:[I

.field private mLogoSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

.field private mManager:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;

.field private mMap:Lcom/mapbox/maps/MapboxMap;

.field private mMapView:Lcom/mapbox/maps/MapView;

.field private mMaxPitch:Ljava/lang/Double;

.field private mPreferredFrameRate:Ljava/lang/Integer;

.field private mProjection:Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;

.field private mQueuedFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleBarSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

.field private final mSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mStyleURL:Ljava/lang/String;

.field private mapViewImpl:Ljava/lang/String;

.field private offscreenAnnotationViewContainer:Landroid/view/ViewGroup;

.field private final pointAnnotations$delegate:Lkotlin/Lazy;

.field private requestDisallowInterceptTouchEvent:Z

.field private savedStyle:Lcom/mapbox/maps/Style;

.field private styleLoaded:Z

.field private surfaceView:Ljava/lang/Boolean;

.field private tintColor:Ljava/lang/Integer;

.field private wasGestureActive:Z

.field private withMapWaiters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/mapbox/maps/MapView;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5QPo04lD_0f9_XGWuyv5H-Prw2o(Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->clearData$lambda$28$lambda$27(Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6tpuzC85pdtH5f74fO72emsB5Rg(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/extension/observable/eventdata/StyleImageMissingEventData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->createMapView$lambda$41(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/extension/observable/eventdata/StyleImageMissingEventData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8iVSOtAueUmBL4kpWeMDia1j-cA(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->takeSnap$lambda$25$lambda$24(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AOSyImel71GgeX8lFBMoP_lQavg(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/StyleLoadedEventData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->createMapView$lambda$40(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/StyleLoadedEventData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AbYuteleSXa0f6emIM-4FiNlbpA(Lkotlin/jvm/functions/Function1;Lcom/mapbox/maps/MapView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->withMap$lambda$7(Lkotlin/jvm/functions/Function1;Lcom/mapbox/maps/MapView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BpGTnuXKYKHstn6FabZSJTUFE44(Lcom/mapbox/geojson/Point;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getCoordinateFromView$lambda$13(Lcom/mapbox/geojson/Point;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C7ZCMj_CLaVHGtqz8tnliaunnJU(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->queryRenderedFeaturesInRect$lambda$19(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CpKiLnL5MM-g8wpawCg1GR0l36c(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->onAttachedToWindow$lambda$51(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fjy3rrLYHYhgXOajuQDsrEZ9a88(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/MapLoadedEventData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->createMapView$lambda$39(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/MapLoadedEventData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ig6-2ve6usw1TiFydwWIL1g11LM(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->querySourceFeatures$lambda$21$lambda$20(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MUPqu_hVhK0O7Jg-x7v8Susct6A(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/logo/generated/LogoSettings$Builder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyLogo$lambda$49(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/logo/generated/LogoSettings$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mqk9m7zyI5-X8nZI8_ASOtL2pHQ(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Ljava/util/LinkedList;Lcom/mapbox/maps/ScreenCoordinate;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleTapInSources$lambda$10(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Ljava/util/LinkedList;Lcom/mapbox/maps/ScreenCoordinate;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QCZ9e85Bg_EP6EDubE8wwr9tv98(Landroid/graphics/PointF;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getPointInView$lambda$14(Landroid/graphics/PointF;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R-p0LJ0az9lgQDfzsP5bvrwmxoE(Lcom/mapbox/maps/CoordinateBounds;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getVisibleBounds$lambda$22(Lcom/mapbox/maps/CoordinateBounds;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RDz4dWu6ASQUnjDAd64hUr_47rI(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getCenter$lambda$11(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RvbNeBv_5TcJPGmKe8u3qIw6pSE(Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->setFeatureState$lambda$30$lambda$29(Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SeJ5WSibJXziWKkAS5g-fqoIct0(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyScaleBar$lambda$47(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VJfJiw-MJE71l1j8JeLDn2btwBs()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;
    .locals 1

    invoke-static {}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->lifecycle_delegate$lambda$50()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$VZEomZFicNeVy1eMCbTDcbR4qmw(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->onLayoutChange$lambda$52(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WoqORv5_ZkLdW10vs1HXKUyHtpE(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/rnmapbox/rnmbx/v11compat/event/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->onMapReady$lambda$3(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/rnmapbox/rnmbx/v11compat/event/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XO5rZLq6fpbJivjYPuyKxX26yxw(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->queryRenderedFeaturesAtPoint$lambda$17(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZAcuka3G2FeeNKLv_EUCMAYA0qc(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->queryRenderedFeaturesAtPoint$lambda$17$lambda$16(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZnZMKQ21OQPqVyM3VubKHZ8JO5o(Ljava/lang/Double;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->queryTerrainElevation$lambda$26(Ljava/lang/Double;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_-5zLBQ7zlpHSZcd3ObmsD6YHG0(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->queryRenderedFeaturesInRect$lambda$19$lambda$18(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cwFkSxX7Jmr-xYBcBGCsTRNcsqQ(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->removeFeatureState$lambda$34(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dmrMHN8XOojSL0Z-djDJPwELjT0(Lcom/mapbox/bindgen/Expected;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getFeatureState$lambda$32$lambda$31(Lcom/mapbox/bindgen/Expected;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fq6bv6xlZ-sJlTMjpla_yvM_k28(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/CameraChangedEventData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->onMapReady$lambda$1(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/CameraChangedEventData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gX_DG4b4S_8dUI0_gbP7g1eX7Wc(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;ZLcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->takeSnap$lambda$25(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;ZLcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hDyLASnX0F2z_kChBkKbstAUXgs(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->clearData$lambda$28(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lItBioUdywdCCkuJFpP_DhQw3VA(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/MapIdleEventData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->onMapReady$lambda$2(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/MapIdleEventData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p_efD7XbfTF-zD1j07Eta5DuHfs(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getZoom$lambda$12(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q_Dne_r9gAgX1MaYsWk0oeSI1SI(Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->removeFeatureState$lambda$34$lambda$33(Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rBz1KD8o9AQIThv5Htzz-p2Jkuw(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyAttribution$lambda$48(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rFkeu0aqGPcKno6xsiNGGv0jIg0(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->setFeatureState$lambda$30(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rSai88RSr9lgGNJN86E8bBIcMVo(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/compass/generated/CompassSettings$Builder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyCompass$lambda$46(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/compass/generated/CompassSettings$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$skgIAWzylvb-LugN8LgC5WM9yks(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->querySourceFeatures$lambda$21(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t6Pey9EqWspSvRS5FhWaUbSHblk(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getFeatureState$lambda$32(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhLwkBwLwc60-gd0JATMKlI2lw0(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;
    .locals 0

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->pointAnnotations_delegate$lambda$0(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->Companion:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;Lcom/mapbox/maps/MapInitOptions;)V
    .locals 8

    const-string p3, "mContext"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "mManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mManager:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;

    .line 137
    new-instance p1, Lcom/rnmapbox/rnmbx/components/images/ImageManager;

    invoke-direct {p1}, Lcom/rnmapbox/rnmbx/components/images/ImageManager;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->imageManager:Lcom/rnmapbox/rnmbx/components/images/ImageManager;

    .line 141
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda12;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->pointAnnotations$delegate:Lkotlin/Lazy;

    .line 153
    sget-object p1, Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;->MERCATOR:Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mProjection:Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;

    .line 159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mFeatures:Ljava/util/List;

    .line 160
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mQueuedFeatures:Ljava/util/List;

    .line 161
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;

    invoke-direct {p1}, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCameraChangeTracker:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;

    .line 525
    new-instance p1, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    invoke-direct {p1}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    .line 527
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->withMapWaiters:Ljava/util/List;

    .line 748
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->layerWaiters:Ljava/util/Map;

    .line 1242
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->offscreenAnnotationViewContainer:Landroid/view/ViewGroup;

    .line 1243
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x0

    .line 1305
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1243
    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, -0x2710

    .line 1244
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1245
    iget-object p2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->offscreenAnnotationViewContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    :cond_0
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->offscreenAnnotationViewContainer:Landroid/view/ViewGroup;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->addView(Landroid/view/View;)V

    .line 1248
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mSources:Ljava/util/Map;

    .line 1249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mImages:Ljava/util/List;

    .line 1305
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;-><init>(Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    .line 1341
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-direct/range {v0 .. v5}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;-><init>(Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mScaleBarSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    .line 1412
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt;->getAttributionSettings()Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings;->getEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;-><init>(Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mAttributionSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    .line 1447
    new-instance v2, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;-><init>(Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReadableMap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLogoSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    .line 1478
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda13;

    invoke-direct {p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->lifecycle$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$applyAttribution(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyAttribution()V

    return-void
.end method

.method public static final synthetic access$applyCompass(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyCompass()V

    return-void
.end method

.method public static final synthetic access$applyLogo(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyLogo()V

    return-void
.end method

.method public static final synthetic access$applyMaxPitch(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyMaxPitch()V

    return-void
.end method

.method public static final synthetic access$applyScaleBar(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyScaleBar()V

    return-void
.end method

.method public static final synthetic access$getTouchableSourceWithHighestZIndex(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Ljava/util/List;)Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getTouchableSourceWithHighestZIndex(Ljava/util/List;)Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleMapChangedEvent(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleMapChangedEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$styleLoaded(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/Style;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->styleLoaded(Lcom/mapbox/maps/Style;)V

    return-void
.end method

.method private final addFeaturesToMap(Z)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mFeatures:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1604
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;

    .line 444
    invoke-virtual {v1}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->getAddedToMap()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 445
    invoke-virtual {v1}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->getFeature()Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;->getRequiresStyleLoad()Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    :cond_1
    invoke-virtual {v1}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->getFeature()Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;->addToMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    :cond_2
    const/4 v2, 0x1

    .line 447
    invoke-virtual {v1, v2}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->setAddedToMap(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic addFeaturesToMap$default(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 442
    :cond_0
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->addFeaturesToMap(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addFeaturesToMap"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final applyAttribution()V
    .locals 2

    .line 1435
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;

    invoke-static {v0}, Lcom/mapbox/maps/plugin/attribution/AttributionUtils;->getAttribution(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/attribution/AttributionPlugin;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda6;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/attribution/AttributionPlugin;->updateSettings(Lkotlin/jvm/functions/Function1;)V

    .line 1438
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->workaroundToRelayoutChildOfMapView()V

    return-void
.end method

.method private static final applyAttribution$lambda$48(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$updateSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mAttributionSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {p1}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt;->toGenericOrnamentSettings(Lcom/mapbox/maps/plugin/attribution/generated/AttributionSettings$Builder;)Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;

    move-result-object p1

    const-string v1, "attribution"

    invoke-direct {p0, v1, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->updateOrnament(Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;)V

    .line 1437
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final applyCompass()V
    .locals 2

    .line 1334
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;

    invoke-static {v0}, Lcom/mapbox/maps/plugin/compass/CompassUtils;->getCompass(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/compass/CompassPlugin;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda17;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/compass/CompassPlugin;->updateSettings(Lkotlin/jvm/functions/Function1;)V

    .line 1338
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->workaroundToRelayoutChildOfMapView()V

    return-void
.end method

.method private static final applyCompass$lambda$46(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/compass/generated/CompassSettings$Builder;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$updateSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1335
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassFadeWhenNorth:Z

    invoke-virtual {p1, v0}, Lcom/mapbox/maps/plugin/compass/generated/CompassSettings$Builder;->setFadeWhenFacingNorth(Z)V

    .line 1336
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {p1}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt;->toGenericOrnamentSettings(Lcom/mapbox/maps/plugin/compass/generated/CompassSettings$Builder;)Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;

    move-result-object p1

    const-string v1, "compass"

    invoke-direct {p0, v1, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->updateOrnament(Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;)V

    .line 1337
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final applyLogo()V
    .locals 2

    .line 1470
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;

    invoke-static {v0}, Lcom/mapbox/maps/plugin/logo/LogoUtils;->getLogo(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/logo/LogoPlugin;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda21;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/logo/LogoPlugin;->updateSettings(Lkotlin/jvm/functions/Function1;)V

    .line 1473
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->workaroundToRelayoutChildOfMapView()V

    return-void
.end method

.method private static final applyLogo$lambda$49(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/logo/generated/LogoSettings$Builder;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$updateSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLogoSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {p1}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt;->toGenericOrnamentSettings(Lcom/mapbox/maps/plugin/logo/generated/LogoSettings$Builder;)Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;

    move-result-object p1

    const-string v1, "logo"

    invoke-direct {p0, v1, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->updateOrnament(Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;)V

    .line 1472
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final applyMaxPitch()V
    .locals 8

    .line 593
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMaxPitch:Ljava/lang/Double;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 594
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 598
    const-string v4, "mMap"

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {v2}, Lcom/mapbox/maps/MapboxMap;->getBounds()Lcom/mapbox/maps/CameraBounds;

    move-result-object v2

    .line 599
    new-instance v5, Lcom/mapbox/maps/CameraBoundsOptions$Builder;

    invoke-direct {v5}, Lcom/mapbox/maps/CameraBoundsOptions$Builder;-><init>()V

    .line 600
    invoke-virtual {v2}, Lcom/mapbox/maps/CameraBounds;->getBounds()Lcom/mapbox/maps/CoordinateBounds;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mapbox/maps/CameraBoundsOptions$Builder;->bounds(Lcom/mapbox/maps/CoordinateBounds;)Lcom/mapbox/maps/CameraBoundsOptions$Builder;

    move-result-object v5

    .line 601
    invoke-virtual {v2}, Lcom/mapbox/maps/CameraBounds;->getMaxZoom()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mapbox/maps/CameraBoundsOptions$Builder;->maxZoom(Ljava/lang/Double;)Lcom/mapbox/maps/CameraBoundsOptions$Builder;

    move-result-object v5

    .line 602
    invoke-virtual {v2}, Lcom/mapbox/maps/CameraBounds;->getMinZoom()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mapbox/maps/CameraBoundsOptions$Builder;->minZoom(Ljava/lang/Double;)Lcom/mapbox/maps/CameraBoundsOptions$Builder;

    move-result-object v5

    .line 603
    invoke-virtual {v2}, Lcom/mapbox/maps/CameraBounds;->getMinPitch()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/mapbox/maps/CameraBoundsOptions$Builder;->minPitch(Ljava/lang/Double;)Lcom/mapbox/maps/CameraBoundsOptions$Builder;

    move-result-object v2

    .line 604
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mapbox/maps/CameraBoundsOptions$Builder;->maxPitch(Ljava/lang/Double;)Lcom/mapbox/maps/CameraBoundsOptions$Builder;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/mapbox/maps/CameraBoundsOptions$Builder;->build()Lcom/mapbox/maps/CameraBoundsOptions;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/mapbox/maps/MapboxMap;->setBounds(Lcom/mapbox/maps/CameraBoundsOptions;)Lcom/mapbox/bindgen/Expected;

    :cond_3
    :goto_1
    return-void
.end method

.method private final applyScaleBar()V
    .locals 2

    .line 1364
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;

    invoke-static {v0}, Lcom/mapbox/maps/plugin/scalebar/ScaleBarUtils;->getScaleBar(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/scalebar/ScaleBarPlugin;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda29;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/scalebar/ScaleBarPlugin;->updateSettings(Lkotlin/jvm/functions/Function1;)V

    .line 1367
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->workaroundToRelayoutChildOfMapView()V

    return-void
.end method

.method private static final applyScaleBar$lambda$47(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$updateSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1365
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mScaleBarSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {p1}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/OrnamentSettingsKt;->toGenericOrnamentSettings(Lcom/mapbox/maps/plugin/scalebar/generated/ScaleBarSettings$Builder;)Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;

    move-result-object p1

    const-string v1, "scaleBar"

    invoke-direct {p0, v1, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->updateOrnament(Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;)V

    .line 1366
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final canHandleEvent(Ljava/lang/String;)Z
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mHandledMapChangedEvents:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 807
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static final clearData$lambda$28(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 1

    const-string v0, "expected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->error(Ljava/lang/String;)V

    return-void

    .line 1058
    :cond_0
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda24;

    invoke-direct {p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda24;-><init>()V

    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final clearData$lambda$28$lambda$27(Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    const-string v0, "data"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final createMapView$lambda$39(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/MapLoadedEventData;)V
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/observable/eventdata/MapLoadedEventData;->component1()J

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/observable/eventdata/MapLoadedEventData;->component2()Ljava/lang/Long;

    .line 1222
    const-string p1, "didfinishloadingmap"

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleMapChangedEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static final createMapView$lambda$40(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/StyleLoadedEventData;)V
    .locals 1

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/observable/eventdata/StyleLoadedEventData;->component1()J

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/observable/eventdata/StyleLoadedEventData;->component2()Ljava/lang/Long;

    .line 1223
    const-string p1, "didfinishloadingstyle"

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleMapChangedEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static final createMapView$lambda$41(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/extension/observable/eventdata/StyleImageMissingEventData;)V
    .locals 2

    const-string v0, "<destruct>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mapbox/maps/extension/observable/eventdata/StyleImageMissingEventData;->component1()J

    invoke-virtual {p2}, Lcom/mapbox/maps/extension/observable/eventdata/StyleImageMissingEventData;->component2()Ljava/lang/Long;

    invoke-virtual {p2}, Lcom/mapbox/maps/extension/observable/eventdata/StyleImageMissingEventData;->component3()Ljava/lang/String;

    move-result-object p2

    .line 1225
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;

    .line 1226
    invoke-virtual {v1, p2, p1}, Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;->addMissingImageToStyle(Ljava/lang/String;Lcom/mapbox/maps/MapboxMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1230
    :cond_1
    iget-object p0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mImages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;

    .line 1231
    invoke-virtual {v0, p2, p1}, Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;->sendImageMissingEvent(Ljava/lang/String;Lcom/mapbox/maps/MapboxMap;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final getAllTouchableSources()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource<",
            "*>;>;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 457
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mSources:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 458
    iget-object v3, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mSources:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {v2}, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;->hasPressListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static final getCenter$lambda$11(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    check-cast v0, Lcom/facebook/react/bridge/WritableArray;

    .line 897
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/mapbox/geojson/Point;

    invoke-virtual {v1}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 898
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/mapbox/geojson/Point;

    invoke-virtual {p0}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 899
    const-string p0, "center"

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p1, p0, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 900
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getCoordinateFromView$lambda$13(Lcom/mapbox/geojson/Point;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    const-string v0, "coordinateFromView"

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/utils/extensions/PointKt;->toReadableArray(Lcom/mapbox/geojson/Point;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 923
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getDisplayDensity()F
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static final getFeatureState$lambda$32(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 1

    const-string v0, "expected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->isValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda23;-><init>(Lcom/mapbox/bindgen/Expected;)V

    invoke-interface {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 1101
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "Unknown error"

    :cond_1
    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->error(Ljava/lang/String;)V

    return-void
.end method

.method private static final getFeatureState$lambda$32$lambda$31(Lcom/mapbox/bindgen/Expected;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mapbox/bindgen/Value;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/bindgen/Value;->getContents()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1094
    :goto_0
    instance-of v0, p0, Ljava/util/Map;

    const-string v1, "featureState"

    if-eqz v0, :cond_1

    .line 1095
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/utils/extensions/MapKt;->toStringKeyPairs(Ljava/util/Map;)[Lkotlin/Pair;

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlin/Pair;

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 1097
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1099
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getGravityAndMargin(Lcom/facebook/react/bridge/ReadableMap;)Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 1389
    const-string v0, "left"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v1, 0x800003

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1392
    :goto_0
    const-string v3, "right"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x800005

    or-int/2addr v1, v4

    .line 1395
    :cond_1
    const-string/jumbo v4, "top"

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    or-int/lit8 v1, v1, 0x30

    .line 1398
    :cond_2
    const-string v5, "bottom"

    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    or-int/lit8 v1, v1, 0x50

    .line 1401
    :cond_3
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getDisplayDensity()F

    move-result v6

    .line 1403
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    float-to-int v7, v6

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v7, v0

    goto :goto_1

    :cond_4
    move v7, v2

    .line 1404
    :goto_1
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    float-to-int v0, v6

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v0, v4

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1405
    :goto_2
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    float-to-int v4, v6

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/2addr v4, v3

    goto :goto_3

    :cond_6
    move v4, v2

    .line 1406
    :goto_3
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    float-to-int v2, v6

    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    mul-int/2addr v2, p1

    :cond_7
    filled-new-array {v7, v0, v4, v2}, [I

    move-result-object p1

    .line 1408
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getLifecycle()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->lifecycle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;

    return-object v0
.end method

.method private static final getPointInView$lambda$14(Landroid/graphics/PointF;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    check-cast v0, Lcom/facebook/react/bridge/WritableArray;

    .line 933
    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 934
    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-double v1, p0

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 935
    const-string p0, "pointInView"

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p1, p0, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 936
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getTouchableSourceWithHighestZIndex(Ljava/util/List;)Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource<",
            "*>;>;)",
            "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 467
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 470
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 471
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    return-object p1

    .line 473
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 474
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    .line 475
    invoke-virtual {v2}, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;->getLayerIDs()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 1609
    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 475
    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 477
    invoke-static {v4}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 478
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :cond_3
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez p1, :cond_4

    const-string p1, "mMap"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    invoke-virtual {p1}, Lcom/mapbox/maps/MapboxMap;->getStyleDeprecated()Lcom/mapbox/maps/Style;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/mapbox/maps/Style;->getStyleLayers()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_8

    .line 484
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_8

    :goto_2
    add-int/lit8 v3, v2, -0x1

    .line 485
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/maps/StyleObjectInfo;

    .line 486
    invoke-virtual {v2}, Lcom/mapbox/maps/StyleObjectInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getId(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 488
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    return-object p1

    :cond_6
    if-gez v3, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    :goto_3
    return-object v0
.end method

.method private static final getVisibleBounds$lambda$22(Lcom/mapbox/maps/CoordinateBounds;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v0, "visibleBounds"

    invoke-static {p0}, Lcom/rnmapbox/rnmbx/utils/extensions/CoordinateBoundsKt;->toReadableArray(Lcom/mapbox/maps/CoordinateBounds;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 1019
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getZoom$lambda$12(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    const-string/jumbo v0, "zoom"

    iget-wide v1, p0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 908
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final handleMapChangedEvent(Ljava/lang/String;)V
    .locals 9

    .line 788
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->isGestureActive:Z

    iput-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->wasGestureActive:Z

    .line 789
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->canHandleEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 792
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "camerachanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 794
    :cond_1
    new-instance v0, Lcom/rnmapbox/rnmbx/events/CameraChangeEvent;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->makeCameraPayload()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/rnmapbox/rnmbx/events/CameraChangeEvent;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    check-cast v0, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;

    goto :goto_1

    .line 792
    :sswitch_1
    const-string v0, "mapidle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 795
    :cond_2
    new-instance v0, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->makeCameraPayload()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    .line 792
    :sswitch_2
    const-string v0, "regionwillchange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :sswitch_3
    const-string v0, "regionischanging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :sswitch_4
    const-string v0, "regiondidchange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 793
    :cond_3
    new-instance v0, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->makeRegionPayload(Ljava/lang/Boolean;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    .line 796
    :goto_0
    new-instance v3, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;

    move-object v4, p0

    check-cast v4, Landroid/view/View;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v3

    :goto_1
    check-cast v0, Lcom/rnmapbox/rnmbx/events/IEvent;

    .line 798
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mManager:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;->handleEvent(Lcom/rnmapbox/rnmbx/events/IEvent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ba09785 -> :sswitch_4
        0xd094d8b -> :sswitch_3
        0x1bf723f6 -> :sswitch_2
        0x31e8d730 -> :sswitch_1
        0x7c2bbbef -> :sswitch_0
    .end sparse-switch
.end method

.method private static final handleTapInSources$lambda$10(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Ljava/util/LinkedList;Lcom/mapbox/maps/ScreenCoordinate;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;Lcom/mapbox/bindgen/Expected;)V
    .locals 2

    const-string v0, "features"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-virtual {p7}, Lcom/mapbox/bindgen/Expected;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {p7}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/util/List;

    if-eqz p7, :cond_3

    .line 677
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :goto_0
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/maps/QueriedRenderedFeature;

    .line 680
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/rnmapbox/rnmbx/v11compat/feature/FeatureKt;->getFeature(Lcom/mapbox/maps/QueriedRenderedFeature;)Lcom/mapbox/geojson/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    :cond_0
    move-object p7, p3

    check-cast p7, Ljava/util/Map;

    invoke-virtual {p6}, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 687
    :cond_1
    sget-object p6, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    invoke-virtual {p7}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/String;

    if-nez p7, :cond_2

    const-string p7, "n/a"

    :cond_2
    const-string v0, "handleTapInSources"

    invoke-virtual {p6, v0, p7}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p5}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleTapInSources(Ljava/util/LinkedList;Lcom/mapbox/maps/ScreenCoordinate;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;)V

    return-void
.end method

.method private static final lifecycle_delegate$lambda$50()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;
    .locals 1

    .line 1478
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;

    invoke-direct {v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;-><init>()V

    return-object v0
.end method

.method private final makeCameraPayload()Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    .line 811
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const-string v1, "mMap"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/maps/MapboxMap;->getCameraState()Lcom/mapbox/maps/CameraState;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    return-object v0

    .line 812
    :cond_1
    new-instance v3, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v3}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 813
    const-string/jumbo v4, "zoom"

    invoke-virtual {v0}, Lcom/mapbox/maps/CameraState;->getZoom()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 814
    const-string v4, "heading"

    invoke-virtual {v0}, Lcom/mapbox/maps/CameraState;->getBearing()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 815
    const-string v4, "pitch"

    invoke-virtual {v0}, Lcom/mapbox/maps/CameraState;->getPitch()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 816
    invoke-virtual {v0}, Lcom/mapbox/maps/CameraState;->getCenter()Lcom/mapbox/geojson/Point;

    move-result-object v4

    const-string v5, "getCenter(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/extensions/PointKt;->toReadableArray(Lcom/mapbox/geojson/Point;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    const-string v5, "center"

    invoke-virtual {v3, v5, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 818
    :try_start_0
    iget-object v4, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v4, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    const/4 v1, 0x1

    invoke-static {v0, v2, v1, v2}, Lcom/mapbox/maps/ExtensionUtils;->toCameraOptions$default(Lcom/mapbox/maps/CameraState;Lcom/mapbox/maps/ScreenCoordinate;ILjava/lang/Object;)Lcom/mapbox/maps/CameraOptions;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mapbox/maps/MapboxMap;->coordinateBoundsForCamera(Lcom/mapbox/maps/CameraOptions;)Lcom/mapbox/maps/CoordinateBounds;

    move-result-object v0

    .line 820
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 821
    const-string v2, "ne"

    invoke-virtual {v0}, Lcom/mapbox/maps/CoordinateBounds;->getNortheast()Lcom/mapbox/geojson/Point;

    move-result-object v4

    const-string v5, "getNortheast(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/extensions/PointKt;->toReadableArray(Lcom/mapbox/geojson/Point;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 822
    const-string/jumbo v2, "sw"

    invoke-virtual {v0}, Lcom/mapbox/maps/CoordinateBounds;->getSouthwest()Lcom/mapbox/geojson/Point;

    move-result-object v0

    const-string v4, "getSouthwest(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/rnmapbox/rnmbx/utils/extensions/PointKt;->toReadableArray(Lcom/mapbox/geojson/Point;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 824
    const-string v0, "bounds"

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 826
    const-string v1, "An error occurred while attempting to make the region"

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "RNMBXMapView"

    invoke-static {v2, v1, v0}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 828
    :goto_0
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 829
    const-string v1, "isGestureActive"

    iget-boolean v2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->wasGestureActive:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    .line 832
    new-instance v1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v1, Lcom/facebook/react/bridge/WritableMap;

    .line 833
    const-string v2, "properties"

    check-cast v3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 834
    const-string v2, "gestures"

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-string/jumbo v0, "timestamp"

    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v1
.end method

.method private final makeRegionPayload(Ljava/lang/Boolean;)Lcom/facebook/react/bridge/WritableMap;
    .locals 8

    .line 842
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const-string v1, "mMap"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/maps/MapboxMap;->getCameraState()Lcom/mapbox/maps/CameraState;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    return-object p1

    .line 843
    :cond_1
    new-instance v3, Lcom/rnmapbox/rnmbx/utils/LatLng;

    invoke-virtual {v0}, Lcom/mapbox/maps/CameraState;->getCenter()Lcom/mapbox/geojson/Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mapbox/geojson/Point;->latitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/mapbox/maps/CameraState;->getCenter()Lcom/mapbox/geojson/Point;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mapbox/geojson/Point;->longitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/rnmapbox/rnmbx/utils/LatLng;-><init>(DD)V

    .line 844
    new-instance v4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    check-cast v4, Lcom/facebook/react/bridge/WritableMap;

    .line 845
    const-string/jumbo v5, "zoomLevel"

    invoke-virtual {v0}, Lcom/mapbox/maps/CameraState;->getZoom()D

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 846
    const-string v5, "heading"

    invoke-virtual {v0}, Lcom/mapbox/maps/CameraState;->getBearing()D

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 847
    const-string v5, "pitch"

    invoke-virtual {v0}, Lcom/mapbox/maps/CameraState;->getPitch()D

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    if-nez p1, :cond_2

    .line 849
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCameraChangeTracker:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;

    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;->isAnimated()Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 848
    :goto_0
    const-string v5, "animated"

    invoke-interface {v4, v5, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 850
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCameraChangeTracker:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;

    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;->isUserInteraction()Z

    move-result p1

    const-string v5, "isUserInteraction"

    invoke-interface {v4, v5, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 852
    :try_start_0
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    const/4 v1, 0x1

    invoke-static {v0, v2, v1, v2}, Lcom/mapbox/maps/ExtensionUtils;->toCameraOptions$default(Lcom/mapbox/maps/CameraState;Lcom/mapbox/maps/ScreenCoordinate;ILjava/lang/Object;)Lcom/mapbox/maps/CameraOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapbox/maps/MapboxMap;->coordinateBoundsForCamera(Lcom/mapbox/maps/CameraOptions;)Lcom/mapbox/maps/CoordinateBounds;

    move-result-object p1

    .line 853
    const-string/jumbo v0, "visibleBounds"

    invoke-static {p1}, Lcom/rnmapbox/rnmbx/utils/extensions/CoordinateBoundsKt;->toReadableArray(Lcom/mapbox/maps/CoordinateBounds;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-interface {v4, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 855
    const-string v0, "An error occurred while attempting to make the region"

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "RNMBXMapView"

    invoke-static {v1, v0, p1}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 857
    :goto_1
    invoke-static {v3, v4}, Lcom/rnmapbox/rnmbx/utils/GeoJSONUtils;->toPointFeature(Lcom/rnmapbox/rnmbx/utils/LatLng;Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method private static final match$match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1129
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static final onAttachedToWindow$lambda$51(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 0

    .line 1511
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getLifecycle()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;->afterAttachFromLooper()V

    return-void
.end method

.method private static final onLayoutChange$lambda$52(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V
    .locals 4

    .line 1531
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    .line 1532
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1533
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1531
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/maps/MapView;->measure(II)V

    .line 1535
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapbox/maps/MapView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapbox/maps/MapView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapbox/maps/MapView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mapbox/maps/MapView;->getBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/mapbox/maps/MapView;->layout(IIII)V

    return-void
.end method

.method private final onMapReady(Lcom/mapbox/maps/MapboxMap;)V
    .locals 4

    .line 229
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$1;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$1;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    check-cast v0, Lcom/mapbox/maps/Style$OnStyleLoaded;

    invoke-virtual {p1, v0}, Lcom/mapbox/maps/MapboxMap;->getStyle(Lcom/mapbox/maps/Style$OnStyleLoaded;)V

    .line 236
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda35;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/maps/MapboxMap;->addOnCameraChangeListener(Lcom/mapbox/maps/plugin/delegates/listeners/OnCameraChangeListener;)V

    .line 241
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda36;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-virtual {p1, v0}, Lcom/mapbox/maps/MapboxMap;->addOnMapIdleListener(Lcom/mapbox/maps/plugin/delegates/listeners/OnMapIdleListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;

    invoke-static {v0}, Lcom/mapbox/maps/plugin/gestures/GesturesUtils;->getGestures(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;

    move-result-object v0

    .line 247
    move-object v1, p0

    check-cast v1, Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnMapLongClickListener(Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;)V

    .line 248
    move-object v1, p0

    check-cast v1, Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnMapClickListener(Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;)V

    .line 250
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$4;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$4;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    check-cast v1, Lcom/mapbox/maps/plugin/gestures/OnFlingListener;

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnFlingListener(Lcom/mapbox/maps/plugin/gestures/OnFlingListener;)V

    .line 256
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$5;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$5;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    check-cast v1, Lcom/mapbox/maps/plugin/gestures/OnShoveListener;

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnShoveListener(Lcom/mapbox/maps/plugin/gestures/OnShoveListener;)V

    .line 270
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$6;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$6;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    check-cast v1, Lcom/mapbox/maps/plugin/gestures/OnScaleListener;

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnScaleListener(Lcom/mapbox/maps/plugin/gestures/OnScaleListener;)V

    .line 282
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$7;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$7;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    check-cast v1, Lcom/mapbox/maps/plugin/gestures/OnRotateListener;

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnRotateListener(Lcom/mapbox/maps/plugin/gestures/OnRotateListener;)V

    .line 294
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$8;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapReady$8;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    check-cast v1, Lcom/mapbox/maps/plugin/gestures/OnMoveListener;

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnMoveListener(Lcom/mapbox/maps/plugin/gestures/OnMoveListener;)V

    .line 308
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda37;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    const/4 v1, 0x1

    .line 316
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "map-loading-error"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "asList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-static {p1, v0, v1}, Lcom/rnmapbox/rnmbx/v11compat/event/EventKt;->subscribe(Lcom/mapbox/maps/MapboxMap;Lcom/rnmapbox/rnmbx/v11compat/event/Observer;Ljava/util/List;)V

    return-void
.end method

.method private static final onMapReady$lambda$1(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/CameraChangedEventData;)V
    .locals 1

    const-string v0, "cameraChangedEventData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    const-string p1, "regionischanging"

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleMapChangedEvent(Ljava/lang/String;)V

    .line 238
    const-string p1, "camerachanged"

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleMapChangedEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static final onMapReady$lambda$2(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/extension/observable/eventdata/MapIdleEventData;)V
    .locals 1

    const-string v0, "mapIdleEventData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->sendRegionDidChangeEvent()V

    .line 243
    const-string p1, "mapidle"

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleMapChangedEvent(Ljava/lang/String;)V

    return-void
.end method

.method private static final onMapReady$lambda$3(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/rnmapbox/rnmbx/v11compat/event/Event;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/v11compat/event/Event;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Map load failed: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "RNMBXMapView"

    invoke-virtual {v0, v3, v1}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {p1}, Lcom/rnmapbox/rnmbx/v11compat/event/EventKt;->getMapLoadingErrorEventData(Lcom/rnmapbox/rnmbx/v11compat/event/Event;)Lcom/rnmapbox/rnmbx/v11compat/event/MapLoadingErrorEventData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/v11compat/event/MapLoadingErrorEventData;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 311
    new-instance v0, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    .line 312
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "error"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 311
    invoke-static {v2}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v2, "maploadingerror"

    invoke-direct {v0, v1, v2, p1}, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 314
    iget-object p0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mManager:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;

    check-cast v0, Lcom/rnmapbox/rnmbx/events/IEvent;

    invoke-virtual {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;->handleEvent(Lcom/rnmapbox/rnmbx/events/IEvent;)V

    return-void
.end method

.method private static final pointAnnotations_delegate$lambda$0(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;
    .locals 4

    .line 142
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;

    invoke-static {v0}, Lcom/mapbox/maps/plugin/gestures/GesturesUtils;->getGestures(Lcom/mapbox/maps/plugin/delegates/MapPluginProviderDelegate;)Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;

    move-result-object v0

    .line 143
    move-object v1, p0

    check-cast v1, Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;

    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->removeOnMapClickListener(Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;)V

    .line 144
    move-object v2, p0

    check-cast v2, Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;

    invoke-interface {v0, v2}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->removeOnMapLongClickListener(Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;)V

    .line 146
    new-instance v3, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;-><init>(Lcom/mapbox/maps/MapView;)V

    .line 148
    invoke-interface {v0, v1}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnMapClickListener(Lcom/mapbox/maps/plugin/gestures/OnMapClickListener;)V

    .line 149
    invoke-interface {v0, v2}, Lcom/mapbox/maps/plugin/gestures/GesturesPlugin;->addOnMapLongClickListener(Lcom/mapbox/maps/plugin/gestures/OnMapLongClickListener;)V

    return-object v3
.end method

.method private static final queryRenderedFeaturesAtPoint$lambda$17(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 2

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 957
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/maps/QueriedRenderedFeature;

    .line 958
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/rnmapbox/rnmbx/v11compat/feature/FeatureKt;->getFeature(Lcom/mapbox/maps/QueriedRenderedFeature;)Lcom/mapbox/geojson/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 960
    :cond_0
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda25;

    invoke-direct {p1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda25;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 964
    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "n/a"

    :cond_2
    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->error(Ljava/lang/String;)V

    return-void
.end method

.method private static final queryRenderedFeaturesAtPoint$lambda$17$lambda$16(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mapbox/geojson/FeatureCollection;->toJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "data"

    invoke-interface {p1, v0, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final queryRenderedFeaturesInRect$lambda$19(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 2

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/maps/QueriedRenderedFeature;

    .line 982
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/rnmapbox/rnmbx/v11compat/feature/FeatureKt;->getFeature(Lcom/mapbox/maps/QueriedRenderedFeature;)Lcom/mapbox/geojson/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 985
    :cond_0
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda30;

    invoke-direct {p1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda30;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 989
    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "n/a"

    :cond_2
    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->error(Ljava/lang/String;)V

    return-void
.end method

.method private static final queryRenderedFeaturesInRect$lambda$19$lambda$18(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mapbox/geojson/FeatureCollection;->toJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "data"

    invoke-interface {p1, v0, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final querySourceFeatures$lambda$21(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)V
    .locals 2

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->isValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/maps/QueriedSourceFeature;

    .line 1002
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/rnmapbox/rnmbx/v11compat/feature/FeatureKt;->getFeature(Lcom/mapbox/maps/QueriedSourceFeature;)Lcom/mapbox/geojson/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1005
    :cond_0
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda16;

    invoke-direct {p1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda16;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 1009
    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "n/a"

    :cond_2
    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->error(Ljava/lang/String;)V

    return-void
.end method

.method private static final querySourceFeatures$lambda$21$lambda$20(Ljava/util/ArrayList;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mapbox/geojson/FeatureCollection;->toJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "data"

    invoke-interface {p1, v0, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final queryTerrainElevation$lambda$26(Ljava/lang/Double;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    const-string v0, "data"

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1047
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final removeAllFeaturesFromMap(Lcom/rnmapbox/rnmbx/components/RemovalReason;)V
    .locals 4

    .line 435
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mFeatures:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1602
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;

    .line 436
    invoke-virtual {v1}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->getFeature()Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0, p1}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;->removeFromMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/rnmapbox/rnmbx/components/RemovalReason;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 437
    invoke-virtual {v1, v2}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->setAddedToMap(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final removeFeatureState$lambda$34(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)Lkotlin/Unit;
    .locals 1

    const-string v0, "expected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1120
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "Unknown error"

    :cond_1
    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 1122
    :cond_2
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda22;

    invoke-direct {p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda22;-><init>()V

    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    .line 1124
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final removeFeatureState$lambda$34$lambda$33(Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setFeatureState$lambda$30(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;Lcom/mapbox/bindgen/Expected;)Lkotlin/Unit;
    .locals 1

    const-string v0, "expected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {p1}, Lcom/mapbox/bindgen/Expected;->getError()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :cond_0
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    .line 1081
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setFeatureState$lambda$30$lambda$29(Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setUpImage(Lcom/mapbox/maps/Style;)V
    .locals 2

    .line 867
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rnmapbox/rnmbx/R$drawable;->red_marker:I

    .line 866
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "decodeResource(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "MARKER_IMAGE_ID"

    invoke-virtual {p1, v1, v0}, Lcom/mapbox/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/mapbox/bindgen/Expected;

    return-void
.end method

.method private final setupEvents(Lcom/mapbox/maps/MapboxMap;)V
    .locals 1

    .line 220
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$setupEvents$1;

    invoke-direct {v0, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$setupEvents$1;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    check-cast v0, Lcom/mapbox/maps/plugin/delegates/listeners/OnRenderFrameFinishedListener;

    .line 219
    invoke-virtual {p1, v0}, Lcom/mapbox/maps/MapboxMap;->addOnRenderFrameFinishedListener(Lcom/mapbox/maps/plugin/delegates/listeners/OnRenderFrameFinishedListener;)V

    return-void
.end method

.method private final styleLoaded(Lcom/mapbox/maps/Style;)V
    .locals 2

    .line 210
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->savedStyle:Lcom/mapbox/maps/Style;

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->styleLoaded:Z

    .line 212
    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->setUpImage(Lcom/mapbox/maps/Style;)V

    .line 213
    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->addFeaturesToMap(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->applyLocalizeLabels()V

    .line 215
    check-cast p1, Lcom/mapbox/maps/MapboxStyleManager;

    new-instance v0, Lcom/mapbox/maps/extension/style/projection/generated/Projection;

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mProjection:Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;

    invoke-direct {v0, v1}, Lcom/mapbox/maps/extension/style/projection/generated/Projection;-><init>(Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;)V

    invoke-static {p1, v0}, Lcom/mapbox/maps/extension/style/projection/generated/StyleProjectionUtils;->setProjection(Lcom/mapbox/maps/MapboxStyleManager;Lcom/mapbox/maps/extension/style/projection/generated/Projection;)V

    return-void
.end method

.method private static final takeSnap$lambda$25(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;ZLcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p3, :cond_0

    .line 1025
    const-string/jumbo p1, "snapshot failed"

    invoke-interface {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1027
    sget-object p1, Lcom/rnmapbox/rnmbx/utils/BitmapUtils;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/BitmapUtils;

    .line 1028
    iget-object p2, p2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mContext:Landroid/content/Context;

    .line 1027
    invoke-virtual {p1, p2, p3}, Lcom/rnmapbox/rnmbx/utils/BitmapUtils;->createTempFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1030
    :cond_1
    sget-object p1, Lcom/rnmapbox/rnmbx/utils/BitmapUtils;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/BitmapUtils;

    invoke-virtual {p1, p3}, Lcom/rnmapbox/rnmbx/utils/BitmapUtils;->createBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 1032
    :goto_0
    new-instance p2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda31;

    invoke-direct {p2, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda31;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final takeSnap$lambda$25$lambda$24(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1034
    const-string/jumbo v0, "uri"

    invoke-interface {p1, v0, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final toGravity(Ljava/lang/String;I)I
    .locals 3

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 1261
    sget-object v0, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected viewPosition for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " should be between 0 and 3"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1261
    const-string p2, "MapView"

    invoke-virtual {v0, p2, p1}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x800055

    return p1

    :cond_1
    const p1, 0x800053

    return p1

    :cond_2
    const p1, 0x800035

    return p1

    :cond_3
    const p1, 0x800033

    return p1
.end method

.method private final updateOrnament(Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;)V
    .locals 7

    .line 1271
    invoke-virtual {p2}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p3, v0}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->setEnabled(Z)V

    .line 1272
    :cond_0
    invoke-virtual {p2}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->getPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1273
    invoke-virtual {p2}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->toGravity(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p3, v0}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->setPosition(I)V

    .line 1276
    :cond_1
    invoke-virtual {p2}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->getMargins()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1277
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1278
    const-string/jumbo v1, "x"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    float-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 1279
    const-string/jumbo v1, "y"

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int p2, v1

    .line 1281
    invoke-interface {p3}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->getPosition()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 1282
    invoke-interface {p3}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->getPosition()I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    const/4 v3, 0x1

    .line 1284
    const-string v4, "MapView"

    const/4 v5, 0x0

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    .line 1288
    sget-object v0, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    .line 1290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ViewMargins: unexpected absolute pos: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1288
    invoke-virtual {v0, v4, v1}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1286
    :cond_2
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->setHMargins(Ljava/lang/Float;Ljava/lang/Float;)V

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    .line 1285
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->setHMargins(Ljava/lang/Float;Ljava/lang/Float;)V

    goto :goto_0

    :cond_4
    int-to-float v0, v0

    .line 1287
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->setHMargins(Ljava/lang/Float;Ljava/lang/Float;)V

    :goto_0
    const/16 v0, 0x10

    if-eq v2, v0, :cond_7

    const/16 v0, 0x30

    if-eq v2, v0, :cond_6

    const/16 v0, 0x50

    if-eq v2, v0, :cond_5

    .line 1297
    sget-object p2, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    .line 1299
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "ViewMargins: unexpected vertical pos: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1297
    invoke-virtual {p2, v4, p1}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1295
    :cond_5
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->setVMargins(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void

    :cond_6
    int-to-float p1, p2

    .line 1294
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->setVMargins(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void

    :cond_7
    int-to-float p1, p2

    .line 1296
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;->setVMargins(Ljava/lang/Float;Ljava/lang/Float;)V

    :cond_8
    return-void
.end method

.method private static final withMap$lambda$7(Lkotlin/jvm/functions/Function1;Lcom/mapbox/maps/MapView;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1}, Lcom/mapbox/maps/MapView;->getMapboxMapDeprecated()Lcom/mapbox/maps/MapboxMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final addFeature(Landroid/view/View;I)V
    .locals 5

    .line 348
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mSources:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    invoke-virtual {v1}, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto/16 :goto_0

    .line 352
    :cond_0
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto/16 :goto_0

    .line 355
    :cond_1
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/styles/light/RNMBXLight;

    if-eqz v0, :cond_2

    .line 356
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto/16 :goto_0

    .line 357
    :cond_2
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/styles/terrain/RNMBXTerrain;

    if-eqz v0, :cond_3

    .line 358
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto :goto_0

    .line 359
    :cond_3
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/location/RNMBXNativeUserLocation;

    if-eqz v0, :cond_4

    .line 360
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto :goto_0

    .line 361
    :cond_4
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;

    if-eqz v0, :cond_5

    .line 363
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getPointAnnotations()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;

    invoke-virtual {v0, v1}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;->add(Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;)V

    .line 364
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto :goto_0

    .line 365
    :cond_5
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerView;

    if-eqz v0, :cond_6

    .line 366
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto :goto_0

    .line 367
    :cond_6
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/camera/RNMBXCamera;

    if-eqz v0, :cond_7

    .line 368
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/camera/RNMBXCamera;

    iput-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCamera:Lcom/rnmapbox/rnmbx/components/camera/RNMBXCamera;

    .line 369
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto :goto_0

    .line 370
    :cond_7
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/styles/layers/RNMBXLayer;

    if-eqz v0, :cond_8

    .line 371
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto :goto_0

    .line 372
    :cond_8
    instance-of v0, p1, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    if-eqz v0, :cond_9

    .line 373
    move-object v0, p1

    check-cast v0, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    goto :goto_0

    .line 374
    :cond_9
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 376
    sget-object v0, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding non map components:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as a child of a map is deprecated!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNMBXMapView"

    invoke-virtual {v0, v2, v1}, Lcom/rnmapbox/rnmbx/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v0, 0x0

    .line 382
    :goto_0
    iget-boolean v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->styleLoaded:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;->getRequiresStyleLoad()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_2

    :cond_c
    :goto_1
    move v1, v3

    .line 384
    :goto_2
    new-instance v4, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;

    invoke-direct {v4, v0, p1, v2}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;-><init>(Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;Landroid/view/View;Z)V

    if-eqz v1, :cond_e

    if-eqz v0, :cond_d

    .line 386
    invoke-virtual {v0, p0}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;->addToMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    .line 387
    :cond_d
    invoke-virtual {v4, v3}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->setAddedToMap(Z)V

    .line 389
    :cond_e
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mFeatures:Ljava/util/List;

    invoke-interface {p1, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final applyAllChanges()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMapView:Lcom/mapbox/maps/MapView;

    if-nez v0, :cond_2

    .line 544
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->createMapView()Lcom/mapbox/maps/MapView;

    .line 545
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->withMapWaiters:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1610
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 545
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMapView:Lcom/mapbox/maps/MapView;

    if-nez v2, :cond_0

    const-string v2, "mMapView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->withMapWaiters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    invoke-virtual {v0, p0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->apply(Ljava/lang/Object;)V

    return-void
.end method

.method public final applyLocalizeLabels()V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLocaleString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 568
    const-string v1, "current"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/Locale$Builder;

    invoke-direct {v1}, Ljava/util/Locale$Builder;-><init>()V

    .line 569
    invoke-virtual {v1, v0}, Ljava/util/Locale$Builder;->setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 570
    :goto_0
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->savedStyle:Lcom/mapbox/maps/Style;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/mapbox/maps/MapboxStyleManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLocaleLayerIds:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/mapbox/maps/extension/localization/StyleInterfaceExtensionKt;->localizeLabels(Lcom/mapbox/maps/MapboxStyleManager;Ljava/util/Locale;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final applyProjection()V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const-string v1, "mMap"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/mapbox/maps/MapboxMap;->getStyleDeprecated()Lcom/mapbox/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/mapbox/maps/MapboxStyleManager;

    new-instance v1, Lcom/mapbox/maps/extension/style/projection/generated/Projection;

    iget-object v2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mProjection:Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;

    invoke-direct {v1, v2}, Lcom/mapbox/maps/extension/style/projection/generated/Projection;-><init>(Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;)V

    invoke-static {v0, v1}, Lcom/mapbox/maps/extension/style/projection/generated/StyleProjectionUtils;->setProjection(Lcom/mapbox/maps/MapboxStyleManager;Lcom/mapbox/maps/extension/style/projection/generated/Projection;)V

    :cond_2
    return-void
.end method

.method public final applyStyleURL()V
    .locals 5

    .line 614
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mStyleURL:Ljava/lang/String;

    .line 615
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const-string v2, "mMap"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_4

    .line 616
    sget-object v1, Lcom/rnmapbox/rnmbx/components/RemovalReason;->STYLE_CHANGE:Lcom/rnmapbox/rnmbx/components/RemovalReason;

    invoke-virtual {p0, v1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->removeAllFeatureFromMap(Lcom/rnmapbox/rnmbx/components/RemovalReason;)V

    .line 617
    invoke-virtual {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->isJSONValid(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 618
    iput-boolean v4, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->styleLoaded:Z

    .line 619
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$applyStyleURL$1;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$applyStyleURL$1;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    check-cast v1, Lcom/mapbox/maps/Style$OnStyleLoaded;

    invoke-virtual {v3, v0, v1}, Lcom/mapbox/maps/MapboxMap;->loadStyleJson(Ljava/lang/String;Lcom/mapbox/maps/Style$OnStyleLoaded;)V

    return-void

    .line 625
    :cond_2
    iput-boolean v4, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->styleLoaded:Z

    .line 626
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$applyStyleURL$2;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$applyStyleURL$2;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    check-cast v1, Lcom/mapbox/maps/Style$OnStyleLoaded;

    .line 631
    new-instance v2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$applyStyleURL$3;

    invoke-direct {v2}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$applyStyleURL$3;-><init>()V

    check-cast v2, Lcom/mapbox/maps/plugin/delegates/listeners/OnMapLoadErrorListener;

    .line 626
    invoke-virtual {v3, v0, v1, v2}, Lcom/mapbox/maps/MapboxMap;->loadStyleUri(Ljava/lang/String;Lcom/mapbox/maps/Style$OnStyleLoaded;Lcom/mapbox/maps/plugin/delegates/listeners/OnMapLoadErrorListener;)V

    .line 637
    invoke-direct {p0, v4}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->addFeaturesToMap(Z)V

    :cond_4
    return-void
.end method

.method public final callIfAttachedToWindow(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1516
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getLifecycle()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;->callIfAttachedToWindow(Lkotlin/jvm/functions/Function0;)Lcom/rnmapbox/rnmbx/components/mapview/Cancelable;

    return-void
.end method

.method public final clearData(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getMapboxMapDeprecated()Lcom/mapbox/maps/MapboxMap;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda32;

    invoke-direct {v1, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda32;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V

    invoke-static {v0, v1}, Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt;->clearData(Lcom/mapbox/maps/MapboxMap;Lcom/mapbox/maps/AsyncOperationResultCallback;)V

    return-void
.end method

.method public final createAndAddMapView(Ljava/lang/String;)Lcom/mapbox/maps/MapView;
    .locals 1

    .line 1183
    const-string v0, "mapViewImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewFactory;->Companion:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewFactory$Companion;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewFactory$Companion;->get(Ljava/lang/String;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1184
    invoke-interface {v0, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/maps/MapView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final createMapView()Lcom/mapbox/maps/MapView;
    .locals 14

    .line 1191
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mapViewImpl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->createAndAddMapView(Ljava/lang/String;)Lcom/mapbox/maps/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1193
    iput-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMapView:Lcom/mapbox/maps/MapView;

    goto :goto_2

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->surfaceView:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1200
    new-instance v2, Lcom/mapbox/maps/MapInitOptions;

    iget-object v3, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mContext:Landroid/content/Context;

    const/16 v12, 0x1ee

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/mapbox/maps/MapInitOptions;-><init>(Landroid/content/Context;Lcom/mapbox/maps/MapOptions;Ljava/util/List;Lcom/mapbox/maps/CameraOptions;ZLjava/lang/String;Landroid/util/AttributeSet;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 1202
    :goto_0
    new-instance v0, Lcom/mapbox/maps/MapView;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/mapbox/maps/MapView;-><init>(Landroid/content/Context;Lcom/mapbox/maps/MapInitOptions;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/mapbox/maps/MapView;-><init>(Landroid/content/Context;Lcom/mapbox/maps/MapInitOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1203
    :goto_1
    iput-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMapView:Lcom/mapbox/maps/MapView;

    .line 1206
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1210
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1211
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->addView(Landroid/view/View;)V

    .line 1213
    :goto_2
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1215
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getMapboxMapDeprecated()Lcom/mapbox/maps/MapboxMap;

    move-result-object v0

    .line 1216
    iput-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    .line 1220
    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->onMapReady(Lcom/mapbox/maps/MapboxMap;)V

    .line 1222
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda3;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/MapboxMap;->addOnMapLoadedListener(Lcom/mapbox/maps/plugin/delegates/listeners/OnMapLoadedListener;)V

    .line 1223
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda4;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/MapboxMap;->addOnStyleLoadedListener(Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleLoadedListener;)V

    .line 1224
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda5;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/MapboxMap;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/MapboxMap;->addOnStyleImageMissingListener(Lcom/mapbox/maps/plugin/delegates/listeners/OnStyleImageMissingListener;)V

    .line 1235
    sget-object v1, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewManager;->Companion:Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewManager$Companion;

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapbox/maps/MapView;->getViewAnnotationManager()Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXMarkerViewManager$Companion;->markerViewContainerSizeFixer(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;)V

    .line 1237
    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->setupEvents(Lcom/mapbox/maps/MapboxMap;)V

    .line 1238
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    return-object v0
.end method

.method public final getCenter(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v1, :cond_0

    const-string v1, "mMap"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/mapbox/maps/MapboxMap;->getCameraState()Lcom/mapbox/maps/CameraState;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/mapbox/maps/CameraState;->getCenter()Lcom/mapbox/geojson/Point;

    move-result-object v1

    const-string v2, "getCenter(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 895
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {p1, v1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getChanges()Lcom/rnmapbox/rnmbx/utils/PropertyChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rnmapbox/rnmbx/utils/PropertyChanges<",
            "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;",
            ">;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    return-object v0
.end method

.method public final getCoordinateFromView(Lcom/mapbox/maps/ScreenCoordinate;Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 8

    const-string v0, "pixel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getDisplayDensity()F

    move-result v0

    .line 917
    new-instance v1, Lcom/mapbox/maps/ScreenCoordinate;

    invoke-virtual {p1}, Lcom/mapbox/maps/ScreenCoordinate;->getX()D

    move-result-wide v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/mapbox/maps/ScreenCoordinate;->getY()D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/mapbox/maps/ScreenCoordinate;-><init>(DD)V

    .line 919
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez p1, :cond_0

    const-string p1, "mMap"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/mapbox/maps/MapboxMap;->coordinateForPixel(Lcom/mapbox/maps/ScreenCoordinate;)Lcom/mapbox/geojson/Point;

    move-result-object p1

    .line 921
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda14;-><init>(Lcom/mapbox/geojson/Point;)V

    invoke-interface {p2, v0}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getDeselectAnnotationOnTap()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->deselectAnnotationOnTap:Z

    return v0
.end method

.method public final getFeatureAt(I)Landroid/view/View;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;

    invoke-virtual {p1}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getFeatureCount()I
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFeatureState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 2

    const-string v0, "featureId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getMapboxMapDeprecated()Lcom/mapbox/maps/MapboxMap;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p4}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda11;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V

    invoke-virtual {v0, p2, p3, p1, v1}, Lcom/mapbox/maps/MapboxMap;->getFeatureState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/maps/QueryFeatureStateCallback;)Lcom/mapbox/common/Cancelable;

    return-void
.end method

.method public final getImageManager()Lcom/rnmapbox/rnmbx/components/images/ImageManager;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->imageManager:Lcom/rnmapbox/rnmbx/components/images/ImageManager;

    return-object v0
.end method

.method public final getLifecycleState()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    .line 1481
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getLifecycle()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;->getState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    return-object v0
.end method

.method public final getLocationComponentManager()Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLocationComponentManager:Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLocationComponentManager:Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLocationComponentManager:Lcom/rnmapbox/rnmbx/components/location/LocationComponentManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getMAttributionSettings()Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;
    .locals 1

    .line 1412
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mAttributionSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    return-object v0
.end method

.method public final getMCompassFadeWhenNorth()Z
    .locals 1

    .line 1306
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassFadeWhenNorth:Z

    return v0
.end method

.method public final getMCompassSettings()Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    return-object v0
.end method

.method public final getMLogoSettings()Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLogoSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    return-object v0
.end method

.method public final getMManager()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mManager:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;

    return-object v0
.end method

.method public final getMScaleBarSettings()Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mScaleBarSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    return-object v0
.end method

.method public final getMapAsync(Lcom/rnmapbox/rnmbx/components/mapview/OnMapReadyCallback;)V
    .locals 1

    const-string v0, "mapReady"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getMapboxMapDeprecated()Lcom/mapbox/maps/MapboxMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/OnMapReadyCallback;->onMapReady(Lcom/mapbox/maps/MapboxMap;)V

    return-void
.end method

.method public final getMapView()Lcom/mapbox/maps/MapView;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMapView:Lcom/mapbox/maps/MapView;

    if-nez v0, :cond_0

    const-string v0, "mMapView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getMapViewImpl()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mapViewImpl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMapboxMap()Lcom/mapbox/maps/MapboxMap;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getMapboxMapDeprecated()Lcom/mapbox/maps/MapboxMap;

    move-result-object v0

    return-object v0
.end method

.method public final getOffscreenAnnotationViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->offscreenAnnotationViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getPointAnnotations()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->pointAnnotations$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;

    return-object v0
.end method

.method public final getPointInView(Lcom/mapbox/geojson/Point;Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 6

    const-string v0, "coordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v0, :cond_0

    const-string v0, "mMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mapbox/maps/MapboxMap;->pixelForCoordinate(Lcom/mapbox/geojson/Point;)Lcom/mapbox/maps/ScreenCoordinate;

    move-result-object p1

    .line 928
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getDisplayDensity()F

    move-result v0

    .line 929
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/mapbox/maps/ScreenCoordinate;->getX()D

    move-result-wide v2

    float-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v0, v2

    invoke-virtual {p1}, Lcom/mapbox/maps/ScreenCoordinate;->getY()D

    move-result-wide v2

    div-double/2addr v2, v4

    double-to-float p1, v2

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 931
    new-instance p1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/PointF;)V

    invoke-interface {p2, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getRequestDisallowInterceptTouchEvent()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->requestDisallowInterceptTouchEvent:Z

    return v0
.end method

.method public final getSavedStyle()Lcom/mapbox/maps/Style;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->savedStyle:Lcom/mapbox/maps/Style;

    return-object v0
.end method

.method public final getStyle(Lcom/mapbox/maps/Style$OnStyleLoaded;)V
    .locals 2

    const-string v0, "onStyleLoaded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const-string v1, "mMap"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/mapbox/maps/MapboxMap;->getStyle(Lcom/mapbox/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public final getSurfaceView()Ljava/lang/Boolean;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->surfaceView:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTintColor()Ljava/lang/Integer;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->tintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getViewAnnotationManager()Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getViewAnnotationManager()Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;

    move-result-object v0

    return-object v0
.end method

.method public final getVisibleBounds(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const-string v1, "mMap"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lcom/mapbox/maps/MapboxMap;->getCameraState()Lcom/mapbox/maps/CameraState;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/mapbox/maps/ExtensionUtils;->toCameraOptions$default(Lcom/mapbox/maps/CameraState;Lcom/mapbox/maps/ScreenCoordinate;ILjava/lang/Object;)Lcom/mapbox/maps/CameraOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/MapboxMap;->coordinateBoundsForCamera(Lcom/mapbox/maps/CameraOptions;)Lcom/mapbox/maps/CoordinateBounds;

    move-result-object v0

    .line 1017
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda10;-><init>(Lcom/mapbox/maps/CoordinateBounds;)V

    invoke-interface {p1, v1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getWithMapWaiters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/mapbox/maps/MapView;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->withMapWaiters:Ljava/util/List;

    return-object v0
.end method

.method public final getZoom(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    new-instance v0, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v1, :cond_0

    const-string v1, "mMap"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/mapbox/maps/MapboxMap;->getCameraState()Lcom/mapbox/maps/CameraState;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/mapbox/maps/CameraState;->getZoom()D

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 906
    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda34;-><init>(Lkotlin/jvm/internal/Ref$DoubleRef;)V

    invoke-interface {p1, v1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final handleTapInSources(Ljava/util/LinkedList;Lcom/mapbox/maps/ScreenCoordinate;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource<",
            "*>;>;",
            "Lcom/mapbox/maps/ScreenCoordinate;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Feature;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource<",
            "*>;>;",
            "Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;",
            ")V"
        }
    .end annotation

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string/jumbo v0, "sources"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenPoint"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hits"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTouchableSources"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleTap"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v1, v4

    check-cast v1, Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;->run(Ljava/util/List;Ljava/util/Map;)V

    return-void

    .line 657
    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "removeFirst(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    .line 658
    invoke-virtual {v7}, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;->getTouchHitbox()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 660
    const-string/jumbo v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    double-to-float v1, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    float-to-double v9, v1

    .line 661
    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr v0, v8

    float-to-double v0, v0

    .line 662
    new-instance v8, Lcom/mapbox/maps/ScreenBox;

    .line 663
    new-instance v11, Lcom/mapbox/maps/ScreenCoordinate;

    invoke-virtual {v3}, Lcom/mapbox/maps/ScreenCoordinate;->getX()D

    move-result-wide v12

    sub-double/2addr v12, v9

    .line 664
    invoke-virtual {v3}, Lcom/mapbox/maps/ScreenCoordinate;->getY()D

    move-result-wide v14

    sub-double/2addr v14, v0

    .line 663
    invoke-direct {v11, v12, v13, v14, v15}, Lcom/mapbox/maps/ScreenCoordinate;-><init>(DD)V

    .line 666
    new-instance v12, Lcom/mapbox/maps/ScreenCoordinate;

    invoke-virtual {v3}, Lcom/mapbox/maps/ScreenCoordinate;->getX()D

    move-result-wide v13

    add-double/2addr v13, v9

    .line 667
    invoke-virtual {v3}, Lcom/mapbox/maps/ScreenCoordinate;->getY()D

    move-result-wide v9

    add-double/2addr v9, v0

    .line 666
    invoke-direct {v12, v13, v14, v9, v10}, Lcom/mapbox/maps/ScreenCoordinate;-><init>(DD)V

    .line 662
    invoke-direct {v8, v11, v12}, Lcom/mapbox/maps/ScreenBox;-><init>(Lcom/mapbox/maps/ScreenCoordinate;Lcom/mapbox/maps/ScreenCoordinate;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getMapboxMapDeprecated()Lcom/mapbox/maps/MapboxMap;

    move-result-object v9

    new-instance v10, Lcom/mapbox/maps/RenderedQueryGeometry;

    invoke-direct {v10, v8}, Lcom/mapbox/maps/RenderedQueryGeometry;-><init>(Lcom/mapbox/maps/ScreenBox;)V

    .line 670
    new-instance v8, Lcom/mapbox/maps/RenderedQueryOptions;

    .line 671
    invoke-virtual {v7}, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;->getLayerIDs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 670
    invoke-direct {v8, v0, v1}, Lcom/mapbox/maps/RenderedQueryOptions;-><init>(Ljava/util/List;Lcom/mapbox/bindgen/Value;)V

    .line 669
    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda15;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda15;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Ljava/util/LinkedList;Lcom/mapbox/maps/ScreenCoordinate;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;)V

    invoke-virtual {v9, v10, v8, v0}, Lcom/mapbox/maps/MapboxMap;->queryRenderedFeatures(Lcom/mapbox/maps/RenderedQueryGeometry;Lcom/mapbox/maps/RenderedQueryOptions;Lcom/mapbox/maps/QueryRenderedFeaturesCallback;)Lcom/mapbox/common/Cancelable;

    :cond_1
    return-void
.end method

.method public final init()V
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    return-void
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->isDestroyed:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMapView:Lcom/mapbox/maps/MapView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isJSONValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 500
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public final layerAdded(Lcom/mapbox/maps/extension/style/layers/Layer;)V
    .locals 3

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/Layer;->getLayerId()Ljava/lang/String;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->layerWaiters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 753
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;

    .line 754
    invoke-interface {v2, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;->found(Lcom/mapbox/maps/extension/style/layers/Layer;)V

    goto :goto_0

    .line 757
    :cond_0
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->layerWaiters:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final mapGesture(Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;",
            "TT;)Z"
        }
    .end annotation

    const-string/jumbo p2, "type"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCameraChangeTracker:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;

    sget-object p2, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;->USER_GESTURE:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;

    invoke-virtual {p1, p2}, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;->setReason(Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;)V

    .line 326
    const-string p1, "regionischanging"

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleMapChangedEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final mapGestureBegin(Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;",
            "TT;)V"
        }
    .end annotation

    const-string/jumbo p2, "type"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 320
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->isGestureActive:Z

    .line 321
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCameraChangeTracker:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;

    sget-object p2, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;->USER_GESTURE:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;

    invoke-virtual {p1, p2}, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;->setReason(Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;)V

    .line 322
    const-string p1, "regionwillchange"

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleMapChangedEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final mapGestureEnd(Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rnmapbox/rnmbx/components/mapview/MapGestureType;",
            "TT;)V"
        }
    .end annotation

    const-string/jumbo p2, "type"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 330
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->isGestureActive:Z

    return-void
.end method

.method public final match(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/BackgroundLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1133
    :cond_0
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/LocationIndicatorLayer;

    if-eqz v0, :cond_1

    return v1

    .line 1134
    :cond_1
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/SkyLayer;

    if-eqz v0, :cond_2

    return v1

    .line 1135
    :cond_2
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/CircleLayer;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/generated/CircleLayer;

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/CircleLayer;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/CircleLayer;->getSourceLayer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->match$match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1136
    :cond_3
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayer;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayer;

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayer;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/FillExtrusionLayer;->getSourceLayer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->match$match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1137
    :cond_4
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/FillLayer;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/generated/FillLayer;

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/FillLayer;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/FillLayer;->getSourceLayer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->match$match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1138
    :cond_5
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/HeatmapLayer;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/generated/HeatmapLayer;

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/HeatmapLayer;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/HeatmapLayer;->getSourceLayer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->match$match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1139
    :cond_6
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/HillshadeLayer;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/generated/HillshadeLayer;

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/HillshadeLayer;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/HillshadeLayer;->getSourceLayer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->match$match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1140
    :cond_7
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getSourceLayer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->match$match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1141
    :cond_8
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/RasterLayer;->getSourceLayer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->match$match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1142
    :cond_9
    instance-of v0, p1, Lcom/mapbox/maps/extension/style/layers/generated/SymbolLayer;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/generated/SymbolLayer;

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/SymbolLayer;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mapbox/maps/extension/style/layers/generated/SymbolLayer;->getSourceLayer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->match$match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1144
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Layer type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".type unknown."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MapView"

    invoke-static {p2, p1}, Lcom/mapbox/maps/MapboxLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1508
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getLifecycle()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;->onAttachedToWindow(Landroid/view/View;)V

    .line 1509
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1510
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda33;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1485
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getLifecycle()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;->onDetachedFromWindow()V

    .line 1486
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDropViewInstance()V
    .locals 1

    .line 1502
    sget-object v0, Lcom/rnmapbox/rnmbx/components/RemovalReason;->ON_DESTROY:Lcom/rnmapbox/rnmbx/components/RemovalReason;

    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->removeAllFeaturesFromMap(Lcom/rnmapbox/rnmbx/components/RemovalReason;)V

    .line 1503
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getViewAnnotationManager()Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mapbox/maps/viewannotation/ViewAnnotationManager;->removeAllViewAnnotations()V

    .line 1504
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getLifecycle()Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXLifeCycle;->onDestroy()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1530
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object p1

    new-instance p2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda28;

    invoke-direct {p2, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda28;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-virtual {p1, p2}, Lcom/mapbox/maps/MapView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMapClick(Lcom/mapbox/geojson/Point;)Z
    .locals 7

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getPointAnnotations()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;->getAndClearAnnotationClicked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 699
    :cond_0
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->deselectAnnotationOnTap:Z

    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getPointAnnotations()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;->deselectSelectedAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v0, :cond_2

    const-string v0, "mMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/mapbox/maps/MapboxMap;->pixelForCoordinate(Lcom/mapbox/geojson/Point;)Lcom/mapbox/maps/ScreenCoordinate;

    move-result-object v3

    .line 705
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getAllTouchableSources()Ljava/util/List;

    move-result-object v0

    .line 706
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_3

    .line 708
    new-instance v2, Ljava/util/LinkedList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapClick$1;

    invoke-direct {v0, p0, p1, v3, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$onMapClick$1;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/mapbox/geojson/Point;Lcom/mapbox/maps/ScreenCoordinate;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    move-object v6, v0

    check-cast v6, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleTapInSources(Ljava/util/LinkedList;Lcom/mapbox/maps/ScreenCoordinate;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$HandleTap;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onMapLongClick(Lcom/mapbox/geojson/Point;)Z
    .locals 4

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getPointAnnotations()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;->getAndClearAnnotationDragged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v0, :cond_1

    const-string v0, "mMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/mapbox/maps/MapboxMap;->pixelForCoordinate(Lcom/mapbox/geojson/Point;)Lcom/mapbox/maps/ScreenCoordinate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 737
    new-instance v1, Lcom/rnmapbox/rnmbx/events/MapClickEvent;

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    new-instance v3, Lcom/rnmapbox/rnmbx/utils/LatLng;

    invoke-direct {v3, p1}, Lcom/rnmapbox/rnmbx/utils/LatLng;-><init>(Lcom/mapbox/geojson/Point;)V

    const-string p1, "longpress"

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/rnmapbox/rnmbx/events/MapClickEvent;-><init>(Landroid/view/View;Lcom/rnmapbox/rnmbx/utils/LatLng;Lcom/mapbox/maps/ScreenCoordinate;Ljava/lang/String;)V

    .line 738
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mManager:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;

    check-cast v1, Lcom/rnmapbox/rnmbx/events/IEvent;

    invoke-virtual {p1, v1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;->handleEvent(Lcom/rnmapbox/rnmbx/events/IEvent;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final queryRenderedFeaturesAtPoint(Landroid/graphics/PointF;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Ljava/util/List;Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;",
            ")V"
        }
    .end annotation

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const-string v1, "mMap"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 946
    :cond_0
    invoke-direct {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getDisplayDensity()F

    move-result v0

    .line 947
    new-instance v2, Lcom/mapbox/maps/ScreenCoordinate;

    .line 948
    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v0

    float-to-double v3, v3

    .line 949
    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v0

    float-to-double v5, p1

    .line 947
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mapbox/maps/ScreenCoordinate;-><init>(DD)V

    .line 951
    new-instance p1, Lcom/mapbox/maps/RenderedQueryGeometry;

    invoke-direct {p1, v2}, Lcom/mapbox/maps/RenderedQueryGeometry;-><init>(Lcom/mapbox/maps/ScreenCoordinate;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 952
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_3

    :cond_2
    move-object p3, v0

    .line 953
    :cond_3
    new-instance v2, Lcom/mapbox/maps/RenderedQueryOptions;

    check-cast p2, Lcom/mapbox/bindgen/Value;

    invoke-direct {v2, p3, p2}, Lcom/mapbox/maps/RenderedQueryOptions;-><init>(Ljava/util/List;Lcom/mapbox/bindgen/Value;)V

    .line 954
    iget-object p2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez p2, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    new-instance p2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda26;

    invoke-direct {p2, p4}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda26;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V

    invoke-virtual {v0, p1, v2, p2}, Lcom/mapbox/maps/MapboxMap;->queryRenderedFeatures(Lcom/mapbox/maps/RenderedQueryGeometry;Lcom/mapbox/maps/RenderedQueryOptions;Lcom/mapbox/maps/QueryRenderedFeaturesCallback;)Lcom/mapbox/common/Cancelable;

    return-void
.end method

.method public final queryRenderedFeaturesInRect(Landroid/graphics/RectF;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Ljava/util/List;Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;",
            ")V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const-string v1, "mMap"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/mapbox/maps/MapboxMap;->getMapOptions()Lcom/mapbox/maps/MapOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapOptions;->getSize()Lcom/mapbox/maps/Size;

    move-result-object v0

    if-nez p1, :cond_3

    .line 971
    new-instance p1, Lcom/mapbox/maps/ScreenBox;

    new-instance v3, Lcom/mapbox/maps/ScreenCoordinate;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5, v4, v5}, Lcom/mapbox/maps/ScreenCoordinate;-><init>(DD)V

    new-instance v4, Lcom/mapbox/maps/ScreenCoordinate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mapbox/maps/Size;->getWidth()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mapbox/maps/Size;->getHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v7, v0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mapbox/maps/ScreenCoordinate;-><init>(DD)V

    invoke-direct {p1, v3, v4}, Lcom/mapbox/maps/ScreenBox;-><init>(Lcom/mapbox/maps/ScreenCoordinate;Lcom/mapbox/maps/ScreenCoordinate;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/mapbox/maps/ScreenBox;

    .line 972
    new-instance v3, Lcom/mapbox/maps/ScreenCoordinate;

    iget v4, p1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mapbox/maps/ScreenCoordinate;-><init>(DD)V

    .line 973
    new-instance v4, Lcom/mapbox/maps/ScreenCoordinate;

    iget v5, p1, Landroid/graphics/RectF;->left:F

    float-to-double v5, v5

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v7, p1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mapbox/maps/ScreenCoordinate;-><init>(DD)V

    .line 971
    invoke-direct {v0, v3, v4}, Lcom/mapbox/maps/ScreenBox;-><init>(Lcom/mapbox/maps/ScreenCoordinate;Lcom/mapbox/maps/ScreenCoordinate;)V

    move-object p1, v0

    .line 975
    :goto_2
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v2, v0

    .line 976
    :goto_3
    new-instance v0, Lcom/mapbox/maps/RenderedQueryGeometry;

    invoke-direct {v0, p1}, Lcom/mapbox/maps/RenderedQueryGeometry;-><init>(Lcom/mapbox/maps/ScreenBox;)V

    .line 977
    new-instance p1, Lcom/mapbox/maps/RenderedQueryOptions;

    check-cast p2, Lcom/mapbox/bindgen/Value;

    invoke-direct {p1, p3, p2}, Lcom/mapbox/maps/RenderedQueryOptions;-><init>(Ljava/util/List;Lcom/mapbox/bindgen/Value;)V

    .line 975
    new-instance p2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda18;

    invoke-direct {p2, p4}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda18;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V

    invoke-virtual {v2, v0, p1, p2}, Lcom/mapbox/maps/MapboxMap;->queryRenderedFeatures(Lcom/mapbox/maps/RenderedQueryGeometry;Lcom/mapbox/maps/RenderedQueryOptions;Lcom/mapbox/maps/QueryRenderedFeaturesCallback;)Lcom/mapbox/common/Cancelable;

    return-void
.end method

.method public final querySourceFeatures(Ljava/lang/String;Lcom/mapbox/maps/extension/style/expressions/generated/Expression;Ljava/util/List;Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "sourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v0, :cond_0

    const-string v0, "mMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 997
    :cond_0
    new-instance v1, Lcom/mapbox/maps/SourceQueryOptions;

    if-eqz p2, :cond_1

    check-cast p2, Lcom/mapbox/bindgen/Value;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mapbox/bindgen/Value;->nullValue()Lcom/mapbox/bindgen/Value;

    move-result-object p2

    :goto_0
    const-string v2, "null cannot be cast to non-null type com.mapbox.bindgen.Value"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p3, p2}, Lcom/mapbox/maps/SourceQueryOptions;-><init>(Ljava/util/List;Lcom/mapbox/bindgen/Value;)V

    .line 995
    new-instance p2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda0;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/mapbox/maps/MapboxMap;->querySourceFeatures(Ljava/lang/String;Lcom/mapbox/maps/SourceQueryOptions;Lcom/mapbox/maps/QuerySourceFeaturesCallback;)Lcom/mapbox/common/Cancelable;

    return-void
.end method

.method public final queryTerrainElevation(DDLcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v0, :cond_0

    const-string v0, "mMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object p1

    const-string p2, "fromLngLat(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/mapbox/maps/MapboxMap;->getElevation(Lcom/mapbox/geojson/Point;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1045
    new-instance p2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Double;)V

    invoke-interface {p5, p2}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->success(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 1049
    :cond_1
    const-string p1, "no elevation data"

    invoke-interface {p5, p1}, Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final removeAllFeatureFromMap(Lcom/rnmapbox/rnmbx/components/RemovalReason;)V
    .locals 4

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mFeatures:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1600
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;

    .line 420
    invoke-virtual {v1}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->getFeature()Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0, p1}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;->removeFromMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/rnmapbox/rnmbx/components/RemovalReason;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 421
    invoke-virtual {v1, v2}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->setAddedToMap(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeFeatureAt(I)V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;

    .line 394
    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->getFeature()Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;

    move-result-object v1

    .line 395
    instance-of v2, v1, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mSources:Ljava/util/Map;

    move-object v3, v1

    check-cast v3, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;

    invoke-virtual {v3}, Lcom/rnmapbox/rnmbx/components/styles/sources/RNMBXSource;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 397
    :cond_0
    instance-of v2, v1, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;

    if-eqz v2, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getPointAnnotations()Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;

    invoke-virtual {v2, v3}, Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotationCoordinator;->remove(Lcom/rnmapbox/rnmbx/components/annotation/RNMBXPointAnnotation;)V

    goto :goto_0

    .line 400
    :cond_1
    instance-of v2, v1, Lcom/rnmapbox/rnmbx/components/images/RNMBXImages;

    if-eqz v2, :cond_2

    .line 401
    iget-object v2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mImages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 403
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->getAddedToMap()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 404
    sget-object v2, Lcom/rnmapbox/rnmbx/components/RemovalReason;->VIEW_REMOVAL:Lcom/rnmapbox/rnmbx/components/RemovalReason;

    invoke-virtual {v1, p0, v2}, Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;->removeFromMap(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;Lcom/rnmapbox/rnmbx/components/RemovalReason;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0, v1}, Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;->setAddedToMap(Z)V

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final removeFeatureState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 7

    const-string v0, "featureId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getMapboxMapDeprecated()Lcom/mapbox/maps/MapboxMap;

    move-result-object v1

    new-instance v6, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda7;

    invoke-direct {v6, p5}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda7;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V

    move-object v4, p1

    move-object v5, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v1 .. v6}, Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt;->removeFeatureStateCompat(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final sendRegionChangeEvent(Z)V
    .locals 3

    .line 428
    new-instance v0, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    .line 429
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->makeRegionPayload(Ljava/lang/Boolean;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 428
    const-string v2, "regiondidchange"

    invoke-direct {v0, v1, v2, p1}, Lcom/rnmapbox/rnmbx/events/MapChangeEvent;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 430
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mManager:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;

    check-cast v0, Lcom/rnmapbox/rnmbx/events/IEvent;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;->handleEvent(Lcom/rnmapbox/rnmbx/events/IEvent;)V

    .line 431
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCameraChangeTracker:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;->NONE:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;->setReason(Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;)V

    return-void
.end method

.method public final sendRegionDidChangeEvent()V
    .locals 2

    .line 783
    const-string v0, "regiondidchange"

    invoke-direct {p0, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->handleMapChangedEvent(Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCameraChangeTracker:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;

    sget-object v1, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;->NONE:Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;

    invoke-virtual {v0, v1}, Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeTracker;->setReason(Lcom/rnmapbox/rnmbx/components/mapview/helpers/CameraChangeReason;)V

    return-void
.end method

.method public final setDeselectAnnotationOnTap(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->deselectAnnotationOnTap:Z

    return-void
.end method

.method public final setFeatureState(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mapbox/bindgen/Value;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;",
            ")V"
        }
    .end annotation

    const-string v0, "featureId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getMapboxMapDeprecated()Lcom/mapbox/maps/MapboxMap;

    move-result-object v1

    .line 1074
    invoke-static {p2}, Lcom/mapbox/bindgen/Value;->valueOf(Ljava/util/HashMap;)Lcom/mapbox/bindgen/Value;

    move-result-object v5

    const-string/jumbo p2, "valueOf(...)"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    new-instance v6, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda19;

    invoke-direct {v6, p5}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda19;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V

    move-object v4, p1

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v1 .. v6}, Lcom/rnmapbox/rnmbx/v11compat/mapboxmap/MapboxMapKt;->setFeatureStateCompat(Lcom/mapbox/maps/MapboxMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/bindgen/Value;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setHandledMapChangedEvents([Ljava/lang/String;)V
    .locals 1

    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mHandledMapChangedEvents:Ljava/util/HashSet;

    return-void
.end method

.method public setId(I)V
    .locals 1

    .line 205
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 206
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mManager:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;->tagAssigned(I)V

    return-void
.end method

.method public final setImageManager(Lcom/rnmapbox/rnmbx/components/images/ImageManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->imageManager:Lcom/rnmapbox/rnmbx/components/images/ImageManager;

    return-void
.end method

.method public final setMAttributionSettings(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1412
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mAttributionSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    return-void
.end method

.method public final setMCompassFadeWhenNorth(Z)V
    .locals 0

    .line 1306
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassFadeWhenNorth:Z

    return-void
.end method

.method public final setMCompassSettings(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1305
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    return-void
.end method

.method public final setMLogoSettings(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1447
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLogoSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    return-void
.end method

.method public final setMManager(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mManager:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewManager;

    return-void
.end method

.method public final setMScaleBarSettings(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1341
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mScaleBarSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    return-void
.end method

.method public final setMapViewImpl(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mapViewImpl:Ljava/lang/String;

    return-void
.end method

.method public final setOffscreenAnnotationViewContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->offscreenAnnotationViewContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setReactAttributionEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mAttributionSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setEnabled(Ljava/lang/Boolean;)V

    .line 1416
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->ATTRIBUTION:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactAttributionPosition(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mAttributionSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewKt;->setPosAndMargins(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1431
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->ATTRIBUTION:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactAttributionViewMargins(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "margins"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mAttributionSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setMargins(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1421
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->ATTRIBUTION:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactAttributionViewPosition(I)V
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mAttributionSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setPosition(I)V

    .line 1426
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->ATTRIBUTION:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactCompassEnabled(Z)V
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setEnabled(Ljava/lang/Boolean;)V

    .line 1310
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->COMPASS:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactCompassFadeWhenNorth(Z)V
    .locals 1

    .line 1314
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassFadeWhenNorth:Z

    .line 1315
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->COMPASS:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactCompassPosition(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "compassPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewKt;->setPosAndMargins(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1330
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->COMPASS:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactCompassViewMargins(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "compassViewMargins"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setMargins(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1320
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->COMPASS:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactCompassViewPosition(I)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mCompassSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setPosition(I)V

    .line 1325
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->COMPASS:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactLocalizeLabels(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 575
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLocaleString:Ljava/lang/String;

    .line 576
    iput-object p2, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLocaleLayerIds:Ljava/util/List;

    .line 578
    :cond_0
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object p2, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->LOCALIZE_LABELS:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast p2, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, p2}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactLogoEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 1450
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLogoSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setEnabled(Ljava/lang/Boolean;)V

    .line 1451
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->LOGO:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactLogoMargins(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "margins"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLogoSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setMargins(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1456
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->LOGO:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactLogoPosition(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 1465
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLogoSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewKt;->setPosAndMargins(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1466
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->LOGO:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactLogoViewPosition(I)V
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mLogoSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setPosition(I)V

    .line 1461
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->LOGO:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactMaxPitch(Ljava/lang/Double;)V
    .locals 1

    .line 588
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMaxPitch:Ljava/lang/Double;

    .line 589
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->MAX_PITCH:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactPreferredFramesPerSecond(I)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMapView:Lcom/mapbox/maps/MapView;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 583
    const-string v0, "mMapView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mapbox/maps/MapView;->setMaximumFps(I)V

    :cond_1
    return-void
.end method

.method public final setReactProjection(Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mProjection:Lcom/mapbox/maps/extension/style/layers/properties/generated/ProjectionName;

    .line 556
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->PROJECTION:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactScaleBarEnabled(Z)V
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mScaleBarSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setEnabled(Ljava/lang/Boolean;)V

    .line 1345
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->SCALEBAR:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactScaleBarPosition(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "scaleBarPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mScaleBarSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-static {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewKt;->setPosAndMargins(Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1360
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->SCALEBAR:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactScaleBarViewMargins(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "scaleBarMargins"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mScaleBarSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setMargins(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1350
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->SCALEBAR:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactScaleBarViewPosition(I)V
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mScaleBarSettings:Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;

    invoke-virtual {v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/OrnamentSettings;->setPosition(I)V

    .line 1355
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->SCALEBAR:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setReactStyleURL(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "styleURL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mStyleURL:Ljava/lang/String;

    .line 611
    iget-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->changes:Lcom/rnmapbox/rnmbx/utils/PropertyChanges;

    sget-object v0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;->STYLE_URL:Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$Property;

    check-cast v0, Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;

    invoke-virtual {p1, v0}, Lcom/rnmapbox/rnmbx/utils/PropertyChanges;->add(Lcom/rnmapbox/rnmbx/utils/PropertyUpdaterWithName;)V

    return-void
.end method

.method public final setRequestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->requestDisallowInterceptTouchEvent:Z

    .line 194
    iput-boolean p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->requestDisallowInterceptTouchEvent:Z

    .line 195
    invoke-static {p0, v0, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapViewKt;->updateRequestDisallowInterceptTouchEvent(Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;ZZ)V

    return-void
.end method

.method public final setSourceVisibility(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "sourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const-string v1, "mMap"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/mapbox/maps/MapboxMap;->getStyleDeprecated()Lcom/mapbox/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1161
    invoke-virtual {v0}, Lcom/mapbox/maps/Style;->getStyleLayers()Ljava/util/List;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    .line 1163
    sget-object p1, Lcom/rnmapbox/rnmbx/utils/Logger;->INSTANCE:Lcom/rnmapbox/rnmbx/utils/Logger;

    const-string p2, "MapView"

    const-string/jumbo p3, "setSourceVisibility, map.getStyle().styleLayers is null"

    invoke-virtual {p1, p2, p3}, Lcom/rnmapbox/rnmbx/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1167
    :cond_3
    check-cast v2, Ljava/lang/Iterable;

    .line 1613
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/maps/StyleObjectInfo;

    .line 1168
    move-object v3, v0

    check-cast v3, Lcom/mapbox/maps/MapboxStyleManager;

    invoke-virtual {v2}, Lcom/mapbox/maps/StyleObjectInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getId(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/mapbox/maps/extension/style/layers/LayerUtils;->getLayer(Lcom/mapbox/maps/MapboxStyleManager;Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/Layer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1169
    invoke-virtual {p0, v2, p2, p3}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->match(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_5

    .line 1171
    sget-object v3, Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;->VISIBLE:Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;->NONE:Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;

    .line 1170
    :goto_1
    invoke-virtual {v2, v3}, Lcom/mapbox/maps/extension/style/layers/Layer;->visibility(Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;)Lcom/mapbox/maps/extension/style/layers/Layer;

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final setSurfaceView(Ljava/lang/Boolean;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->surfaceView:Ljava/lang/Boolean;

    return-void
.end method

.method public final setWithMapWaiters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/mapbox/maps/MapView;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    iput-object p1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->withMapWaiters:Ljava/util/List;

    return-void
.end method

.method public final takeSnap(ZLcom/rnmapbox/rnmbx/components/mapview/CommandResponse;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda27;

    invoke-direct {v1, p2, p1, p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda27;-><init>(Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;ZLcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;)V

    invoke-virtual {v0, v1}, Lcom/mapbox/maps/MapView;->snapshot(Lcom/mapbox/maps/MapView$OnSnapshotReady;)V

    return-void
.end method

.method public final waitForLayer(Ljava/lang/String;Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 762
    invoke-interface {p2, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;->found(Lcom/mapbox/maps/extension/style/layers/Layer;)V

    return-void

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->savedStyle:Lcom/mapbox/maps/Style;

    if-eqz v1, :cond_2

    if-eqz v1, :cond_1

    .line 766
    check-cast v1, Lcom/mapbox/maps/MapboxStyleManager;

    invoke-static {v1, p1}, Lcom/mapbox/maps/extension/style/layers/LayerUtils;->getLayer(Lcom/mapbox/maps/MapboxStyleManager;Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/Layer;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 768
    invoke-interface {p2, v0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$FoundLayerCallback;->found(Lcom/mapbox/maps/extension/style/layers/Layer;)V

    return-void

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->layerWaiters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 775
    iget-object v1, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->layerWaiters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final withMap(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/MapboxMap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMap:Lcom/mapbox/maps/MapboxMap;

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->withMapWaiters:Ljava/util/List;

    new-instance v1, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView$$ExternalSyntheticLambda20;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 532
    const-string v0, "mMap"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final withMapView(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/MapView;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->mMapView:Lcom/mapbox/maps/MapView;

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->withMapWaiters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 539
    const-string v0, "mMapView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final workaroundToRelayoutChildOfMapView()V
    .locals 5

    .line 1371
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1375
    :cond_0
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->requestLayout()V

    .line 1376
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/maps/MapView;->forceLayout()V

    .line 1378
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    .line 1379
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1380
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1378
    invoke-virtual {v0, v1, v2}, Lcom/mapbox/maps/MapView;->measure(II)V

    .line 1382
    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapbox/maps/MapView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapbox/maps/MapView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapbox/maps/MapView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/rnmapbox/rnmbx/components/mapview/RNMBXMapView;->getMapView()Lcom/mapbox/maps/MapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mapbox/maps/MapView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mapbox/maps/MapView;->layout(IIII)V

    return-void
.end method
