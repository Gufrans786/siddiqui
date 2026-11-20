.class public final Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
.super Lcom/mapbox/maps/extension/style/layers/Layer;
.source "LineLayer.kt"

# interfaces
.implements Lcom/mapbox/maps/extension/style/layers/generated/LineLayerDsl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/maps/extension/style/layers/generated/LineLayer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLineLayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineLayer.kt\ncom/mapbox/maps/extension/style/layers/generated/LineLayer\n+ 2 Layer.kt\ncom/mapbox/maps/extension/style/layers/Layer\n*L\n1#1,5433:1\n227#2:5434\n227#2:5435\n227#2:5436\n227#2:5437\n227#2:5438\n227#2:5439\n227#2:5440\n227#2:5441\n227#2:5442\n227#2:5443\n227#2:5444\n227#2:5445\n227#2:5446\n227#2:5447\n227#2:5448\n227#2:5449\n227#2:5450\n227#2:5451\n227#2:5452\n227#2:5453\n227#2:5454\n227#2:5455\n227#2:5456\n227#2:5457\n227#2:5458\n227#2:5459\n227#2:5460\n227#2:5461\n227#2:5462\n227#2:5463\n227#2:5464\n227#2:5465\n227#2:5466\n227#2:5467\n227#2:5468\n227#2:5469\n227#2:5470\n227#2:5471\n227#2:5472\n227#2:5473\n227#2:5474\n227#2:5475\n227#2:5476\n227#2:5477\n227#2:5478\n227#2:5479\n227#2:5480\n227#2:5481\n227#2:5482\n227#2:5483\n227#2:5484\n227#2:5485\n227#2:5486\n227#2:5487\n227#2:5488\n227#2:5489\n227#2:5490\n227#2:5491\n227#2:5492\n227#2:5493\n227#2:5494\n227#2:5495\n227#2:5496\n227#2:5497\n*S KotlinDebug\n*F\n+ 1 LineLayer.kt\ncom/mapbox/maps/extension/style/layers/generated/LineLayer\n*L\n56#1:5434\n80#1:5435\n113#1:5436\n127#1:5437\n145#1:5438\n186#1:5439\n219#1:5440\n251#1:5441\n284#1:5442\n314#1:5443\n374#1:5444\n434#1:5445\n471#1:5446\n531#1:5447\n568#1:5448\n628#1:5449\n665#1:5450\n700#1:5451\n730#1:5452\n763#1:5453\n792#1:5454\n848#1:5455\n904#1:5456\n961#1:5457\n996#1:5458\n1027#1:5459\n1086#1:5460\n1142#1:5461\n1209#1:5462\n1266#1:5463\n1301#1:5464\n1356#1:5465\n1412#1:5466\n1479#1:5467\n1536#1:5468\n1571#1:5469\n1626#1:5470\n1682#1:5471\n1738#1:5472\n1772#1:5473\n1828#1:5474\n1862#1:5475\n1918#1:5476\n1952#1:5477\n1980#1:5478\n2035#1:5479\n2091#1:5480\n2125#1:5481\n2181#1:5482\n2215#1:5483\n2271#1:5484\n2305#1:5485\n2361#1:5486\n2417#1:5487\n2473#1:5488\n2507#1:5489\n2540#1:5490\n2605#1:5491\n2666#1:5492\n2703#1:5493\n2759#1:5494\n2818#1:5495\n2874#1:5496\n2930#1:5497\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u00084\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u008a\u00022\u00020\u00012\u00020\u0002:\u0002\u008a\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u000f\u0010\u0082\u0002\u001a\u00020\u0004H\u0010\u00a2\u0006\u0003\u0008\u0083\u0002J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0008H\u0016J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0011\u0010\u0013\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010\u0013\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0008H\u0016J\u0012\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u001aH\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0004H\u0016J\u0011\u0010\u001f\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010\u001f\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0008H\u0017J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0004H\u0017J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0008H\u0016J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u000eH\u0016J\u0011\u0010,\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010,\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0008H\u0016J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0008H\u0016J\u0012\u00104\u001a\u00020\u00002\u0008\u0008\u0001\u00104\u001a\u00020\u001aH\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0004H\u0016J\u0011\u0010:\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010:\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0010\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0008H\u0017J\u0010\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0004H\u0017J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0008H\u0017J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u000eH\u0017J\u0010\u0010H\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0008H\u0017J\u0010\u0010H\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u000eH\u0017J\u0011\u0010N\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0017J&\u0010N\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0017J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0008H\u0017J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u000eH\u0017J\u0011\u0010W\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0017J&\u0010W\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0017J\u0010\u0010Z\u001a\u00020\u00002\u0006\u0010Z\u001a\u00020\u0008H\u0017J\u0010\u0010Z\u001a\u00020\u00002\u0006\u0010Z\u001a\u00020\u000eH\u0017J\u0011\u0010`\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0017J&\u0010`\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0017J\u0010\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u0008H\u0016J\u0016\u0010c\u001a\u00020\u00002\u000c\u0010c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0dH\u0016J\u0010\u0010i\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u0008H\u0016J\u0010\u0010i\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u000eH\u0016J\u0011\u0010m\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010m\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0010\u0010o\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\u0008H\u0017J\u0010\u0010o\u001a\u00020\u00002\u0006\u0010o\u001a\u00020pH\u0017J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\u0008H\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\u000eH\u0016J\u0011\u0010{\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J&\u0010{\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010}\u001a\u00020\u0008H\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010}\u001a\u00020\u000eH\u0016J\u0012\u0010\u0081\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J\'\u0010\u0081\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0083\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020\u0008H\u0017J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020\u0004H\u0017J\u0012\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008b\u0001\u001a\u00020\u0008H\u0016J\u0013\u0010\u008b\u0001\u001a\u00020\u00002\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0091\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\u00002\u0007\u0010\u0091\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u0095\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u0095\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u0099\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J\'\u0010\u0099\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0012\u0010\u009b\u0001\u001a\u00020\u00002\u0007\u0010\u009b\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u009b\u0001\u001a\u00020\u00002\u0007\u0010\u009b\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u009f\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J\'\u0010\u009f\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0012\u0010\u00a1\u0001\u001a\u00020\u00002\u0007\u0010\u00a1\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u00a1\u0001\u001a\u00020\u00002\u0007\u0010\u00a1\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u00a5\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J\'\u0010\u00a5\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0012\u0010\u00a7\u0001\u001a\u00020\u00002\u0007\u0010\u00a7\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u00a7\u0001\u001a\u00020\u00002\u0007\u0010\u00a7\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010\u00ab\u0001\u001a\u00020\u00002\u0007\u0010\u00ab\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u00ab\u0001\u001a\u00020\u00002\u0007\u0010\u00ab\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u00af\u0001\u001a\u00020\u00002\u0007\u0010\u00af\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u00af\u0001\u001a\u00020\u00002\u0007\u0010\u00af\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u00b3\u0001\u001a\u00020\u00002\u0007\u0010\u00b3\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u00b3\u0001\u001a\u00020\u00002\u0007\u0010\u00b3\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u00b7\u0001\u001a\u00020\u00002\u0007\u0010\u00b7\u0001\u001a\u00020\u0008H\u0016J\u0018\u0010\u00b7\u0001\u001a\u00020\u00002\r\u0010\u00b7\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000e0dH\u0016J\u0012\u0010\u00b9\u0001\u001a\u00020\u00002\u0007\u0010\u00b9\u0001\u001a\u00020\u0008H\u0016J\u0013\u0010\u00b9\u0001\u001a\u00020\u00002\u0008\u0010\u00b9\u0001\u001a\u00030\u00ba\u0001H\u0016J\u0012\u0010\u00c1\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J\'\u0010\u00c1\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0012\u0010\u00c3\u0001\u001a\u00020\u00002\u0007\u0010\u00c3\u0001\u001a\u00020\u0008H\u0017J\u0014\u0010\u00c3\u0001\u001a\u00020\u00002\t\u0008\u0001\u0010\u00c3\u0001\u001a\u00020\u001aH\u0017J\u0012\u0010\u00c3\u0001\u001a\u00020\u00002\u0007\u0010\u00c3\u0001\u001a\u00020\u0004H\u0017J\u0012\u0010\u00cc\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0017J\'\u0010\u00cc\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0017J\u0012\u0010\u00cf\u0001\u001a\u00020\u00002\u0007\u0010\u00cf\u0001\u001a\u00020\u0008H\u0017J\u0012\u0010\u00cf\u0001\u001a\u00020\u00002\u0007\u0010\u00cf\u0001\u001a\u00020\u0004H\u0017J\u0012\u0010\u00d5\u0001\u001a\u00020\u00002\u0007\u0010\u00d5\u0001\u001a\u00020\u0008H\u0017J\u0018\u0010\u00d5\u0001\u001a\u00020\u00002\r\u0010\u00d5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000e0dH\u0017J\u0012\u0010\u00db\u0001\u001a\u00020\u00002\u0007\u0010\u00db\u0001\u001a\u00020\u0008H\u0016J\u0018\u0010\u00db\u0001\u001a\u00020\u00002\r\u0010\u00db\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000e0dH\u0016J\u0012\u0010\u00df\u0001\u001a\u00020\u00002\u0007\u0010\u00df\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u00df\u0001\u001a\u00020\u00002\u0007\u0010\u00df\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u00e3\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0002\u001a\u00020\u0014H\u0016J\'\u0010\u00e3\u0001\u001a\u00020\u00002\u001c\u0010\u0085\u0002\u001a\u0017\u0012\u0005\u0012\u00030\u0087\u0002\u0012\u0005\u0012\u00030\u0088\u00020\u0086\u0002\u00a2\u0006\u0003\u0008\u0089\u0002H\u0016J\u0012\u0010\u00e5\u0001\u001a\u00020\u00002\u0007\u0010\u00e5\u0001\u001a\u00020\u0008H\u0017J\u0013\u0010\u00e5\u0001\u001a\u00020\u00002\u0008\u0010\u00e5\u0001\u001a\u00030\u00e6\u0001H\u0017J\u0012\u0010\u00ed\u0001\u001a\u00020\u00002\u0007\u0010\u00ed\u0001\u001a\u00020\u0008H\u0017J\u0012\u0010\u00ed\u0001\u001a\u00020\u00002\u0007\u0010\u00ed\u0001\u001a\u00020\u000eH\u0017J\u0012\u0010\u00f3\u0001\u001a\u00020\u00002\u0007\u0010\u00f3\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u00f5\u0001\u001a\u00020\u00002\u0007\u0010\u00f5\u0001\u001a\u00020\u000eH\u0016J\u0012\u0010\u00f7\u0001\u001a\u00020\u00002\u0007\u0010\u00f7\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010\u00fa\u0001\u001a\u00020\u00002\u0007\u0010\u00fa\u0001\u001a\u00020\u0004H\u0016J\u0012\u0010\u00fc\u0001\u001a\u00020\u00002\u0007\u0010\u00fc\u0001\u001a\u00020\u0008H\u0016J\u0013\u0010\u00fc\u0001\u001a\u00020\u00002\u0008\u0010\u00fc\u0001\u001a\u00030\u00fd\u0001H\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\nR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u000cR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8G\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\nR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0016R\u001c\u0010!\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010\u000cR\u001c\u0010%\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008&\u0010#\u001a\u0004\u0008\'\u0010\nR\u0013\u0010(\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0010R\u0013\u0010*\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\nR\u0013\u0010,\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u0016R\u0013\u0010.\u001a\u0004\u0018\u00010/8F\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0013\u00102\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\nR\u0013\u00104\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u000cR\u0013\u00106\u001a\u0004\u0018\u00010\u001a8G\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u001cR\u0013\u00108\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\nR\u0013\u0010:\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u0016R\u001c\u0010<\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008=\u0010#\u001a\u0004\u0008>\u0010\u000cR\u001c\u0010?\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008@\u0010#\u001a\u0004\u0008A\u0010\nR\u001c\u0010B\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008C\u0010#\u001a\u0004\u0008D\u0010\u0010R\u001c\u0010E\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008F\u0010#\u001a\u0004\u0008G\u0010\nR\u001c\u0010H\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008I\u0010#\u001a\u0004\u0008J\u0010\u0010R\u001c\u0010K\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008L\u0010#\u001a\u0004\u0008M\u0010\nR\u001c\u0010N\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008O\u0010#\u001a\u0004\u0008P\u0010\u0016R\u001c\u0010Q\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008R\u0010#\u001a\u0004\u0008S\u0010\u0010R\u001c\u0010T\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008U\u0010#\u001a\u0004\u0008V\u0010\nR\u001c\u0010W\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008X\u0010#\u001a\u0004\u0008Y\u0010\u0016R\u001c\u0010Z\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008[\u0010#\u001a\u0004\u0008\\\u0010\u0010R\u001c\u0010]\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008^\u0010#\u001a\u0004\u0008_\u0010\nR\u001c\u0010`\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008a\u0010#\u001a\u0004\u0008b\u0010\u0016R\u0019\u0010c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010d8F\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010fR\u0013\u0010g\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010\nR\u0013\u0010i\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010\u0010R\u0013\u0010k\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010\nR\u0013\u0010m\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008n\u0010\u0016R\u001c\u0010o\u001a\u0004\u0018\u00010p8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008q\u0010#\u001a\u0004\u0008r\u0010sR\u001c\u0010t\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008u\u0010#\u001a\u0004\u0008v\u0010\nR\u0013\u0010w\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010\u0010R\u0013\u0010y\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010\nR\u0013\u0010{\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010\u0016R\u0013\u0010}\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008~\u0010\u0010R\u0014\u0010\u007f\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u0080\u0001\u0010\nR\u0015\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0007\u001a\u0005\u0008\u0082\u0001\u0010\u0016R\u0015\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u0084\u0001\u0010\nR\u001f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u0086\u0001\u0010#\u001a\u0005\u0008\u0087\u0001\u0010\u000cR\u001f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u0089\u0001\u0010#\u001a\u0005\u0008\u008a\u0001\u0010\nR\u0017\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u0015\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u0090\u0001\u0010\nR\u0015\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0092\u0001\u0010\u0010R\u0015\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u0094\u0001\u0010\nR\u0015\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0096\u0001\u0010\u0010R\u0015\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u0098\u0001\u0010\nR\u0015\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0007\u001a\u0005\u0008\u009a\u0001\u0010\u0016R\u0015\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0007\u001a\u0005\u0008\u009c\u0001\u0010\u0010R\u0015\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u009e\u0001\u0010\nR\u0015\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a0\u0001\u0010\u0016R\u0015\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a2\u0001\u0010\u0010R\u0015\u0010\u00a3\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a4\u0001\u0010\nR\u0015\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a6\u0001\u0010\u0016R\u0015\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a8\u0001\u0010\u000cR\u0015\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u00aa\u0001\u0010\nR\u0015\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ac\u0001\u0010\u0010R\u0015\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ae\u0001\u0010\nR\u0015\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b0\u0001\u0010\u0010R\u0015\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b2\u0001\u0010\nR\u0015\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b4\u0001\u0010\u0010R\u0015\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b6\u0001\u0010\nR\u001b\u0010\u00b7\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010d8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b8\u0001\u0010fR\u0017\u0010\u00b9\u0001\u001a\u0005\u0018\u00010\u00ba\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R\u0015\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u00be\u0001\u0010\nR\u0015\u0010\u00bf\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c0\u0001\u0010\nR\u0015\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c2\u0001\u0010\u0016R\u001f\u0010\u00c3\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00c4\u0001\u0010#\u001a\u0005\u0008\u00c5\u0001\u0010\u000cR\u001f\u0010\u00c6\u0001\u001a\u0004\u0018\u00010\u001a8GX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00c7\u0001\u0010#\u001a\u0005\u0008\u00c8\u0001\u0010\u001cR\u001f\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00ca\u0001\u0010#\u001a\u0005\u0008\u00cb\u0001\u0010\nR\u001f\u0010\u00cc\u0001\u001a\u0004\u0018\u00010\u00148FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00cd\u0001\u0010#\u001a\u0005\u0008\u00ce\u0001\u0010\u0016R\u001f\u0010\u00cf\u0001\u001a\u0004\u0018\u00010\u00048FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00d0\u0001\u0010#\u001a\u0005\u0008\u00d1\u0001\u0010\u000cR\u001f\u0010\u00d2\u0001\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00d3\u0001\u0010#\u001a\u0005\u0008\u00d4\u0001\u0010\nR%\u0010\u00d5\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010d8FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00d6\u0001\u0010#\u001a\u0005\u0008\u00d7\u0001\u0010fR\u001f\u0010\u00d8\u0001\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00d9\u0001\u0010#\u001a\u0005\u0008\u00da\u0001\u0010\nR\u001b\u0010\u00db\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010d8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00dc\u0001\u0010fR\u0015\u0010\u00dd\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u00de\u0001\u0010\nR\u0015\u0010\u00df\u0001\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00e0\u0001\u0010\u0010R\u0015\u0010\u00e1\u0001\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0007\u001a\u0005\u0008\u00e2\u0001\u0010\nR\u0015\u0010\u00e3\u0001\u001a\u0004\u0018\u00010\u00148F\u00a2\u0006\u0007\u001a\u0005\u0008\u00e4\u0001\u0010\u0016R!\u0010\u00e5\u0001\u001a\u0005\u0018\u00010\u00e6\u00018FX\u0087\u0004\u00a2\u0006\u000f\u0012\u0005\u0008\u00e7\u0001\u0010#\u001a\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R\u001f\u0010\u00ea\u0001\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00eb\u0001\u0010#\u001a\u0005\u0008\u00ec\u0001\u0010\nR\u001f\u0010\u00ed\u0001\u001a\u0004\u0018\u00010\u000e8FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00ee\u0001\u0010#\u001a\u0005\u0008\u00ef\u0001\u0010\u0010R\u001f\u0010\u00f0\u0001\u001a\u0004\u0018\u00010\u00088FX\u0087\u0004\u00a2\u0006\u000e\u0012\u0005\u0008\u00f1\u0001\u0010#\u001a\u0005\u0008\u00f2\u0001\u0010\nR\u0018\u0010\u00f3\u0001\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00f4\u0001\u0010\u0010R\u0018\u0010\u00f5\u0001\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00f6\u0001\u0010\u0010R\u0018\u0010\u00f7\u0001\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00f8\u0001\u0010\u000cR\u0012\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u00f9\u0001\u0010\u000cR\u0015\u0010\u00fa\u0001\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00fb\u0001\u0010\u000cR\u001a\u0010\u00fc\u0001\u001a\u0005\u0018\u00010\u00fd\u00018VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00fe\u0001\u0010\u00ff\u0001R\u0018\u0010\u0080\u0002\u001a\u0004\u0018\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0081\u0002\u0010\n\u00a8\u0006\u008b\u0002"
    }
    d2 = {
        "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;",
        "Lcom/mapbox/maps/extension/style/layers/generated/LineLayerDsl;",
        "Lcom/mapbox/maps/extension/style/layers/Layer;",
        "layerId",
        "",
        "sourceId",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "filter",
        "Lcom/mapbox/maps/extension/style/expressions/generated/Expression;",
        "getFilter",
        "()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;",
        "getLayerId",
        "()Ljava/lang/String;",
        "lineBlur",
        "",
        "getLineBlur",
        "()Ljava/lang/Double;",
        "lineBlurAsExpression",
        "getLineBlurAsExpression",
        "lineBlurTransition",
        "Lcom/mapbox/maps/extension/style/types/StyleTransition;",
        "getLineBlurTransition",
        "()Lcom/mapbox/maps/extension/style/types/StyleTransition;",
        "lineBorderColor",
        "getLineBorderColor",
        "lineBorderColorAsColorInt",
        "",
        "getLineBorderColorAsColorInt",
        "()Ljava/lang/Integer;",
        "lineBorderColorAsExpression",
        "getLineBorderColorAsExpression",
        "lineBorderColorTransition",
        "getLineBorderColorTransition",
        "lineBorderColorUseTheme",
        "getLineBorderColorUseTheme$annotations",
        "()V",
        "getLineBorderColorUseTheme",
        "lineBorderColorUseThemeAsExpression",
        "getLineBorderColorUseThemeAsExpression$annotations",
        "getLineBorderColorUseThemeAsExpression",
        "lineBorderWidth",
        "getLineBorderWidth",
        "lineBorderWidthAsExpression",
        "getLineBorderWidthAsExpression",
        "lineBorderWidthTransition",
        "getLineBorderWidthTransition",
        "lineCap",
        "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;",
        "getLineCap",
        "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;",
        "lineCapAsExpression",
        "getLineCapAsExpression",
        "lineColor",
        "getLineColor",
        "lineColorAsColorInt",
        "getLineColorAsColorInt",
        "lineColorAsExpression",
        "getLineColorAsExpression",
        "lineColorTransition",
        "getLineColorTransition",
        "lineColorUseTheme",
        "getLineColorUseTheme$annotations",
        "getLineColorUseTheme",
        "lineColorUseThemeAsExpression",
        "getLineColorUseThemeAsExpression$annotations",
        "getLineColorUseThemeAsExpression",
        "lineCrossSlope",
        "getLineCrossSlope$annotations",
        "getLineCrossSlope",
        "lineCrossSlopeAsExpression",
        "getLineCrossSlopeAsExpression$annotations",
        "getLineCrossSlopeAsExpression",
        "lineCutoutFadeWidth",
        "getLineCutoutFadeWidth$annotations",
        "getLineCutoutFadeWidth",
        "lineCutoutFadeWidthAsExpression",
        "getLineCutoutFadeWidthAsExpression$annotations",
        "getLineCutoutFadeWidthAsExpression",
        "lineCutoutFadeWidthTransition",
        "getLineCutoutFadeWidthTransition$annotations",
        "getLineCutoutFadeWidthTransition",
        "lineCutoutOpacity",
        "getLineCutoutOpacity$annotations",
        "getLineCutoutOpacity",
        "lineCutoutOpacityAsExpression",
        "getLineCutoutOpacityAsExpression$annotations",
        "getLineCutoutOpacityAsExpression",
        "lineCutoutOpacityTransition",
        "getLineCutoutOpacityTransition$annotations",
        "getLineCutoutOpacityTransition",
        "lineCutoutWidth",
        "getLineCutoutWidth$annotations",
        "getLineCutoutWidth",
        "lineCutoutWidthAsExpression",
        "getLineCutoutWidthAsExpression$annotations",
        "getLineCutoutWidthAsExpression",
        "lineCutoutWidthTransition",
        "getLineCutoutWidthTransition$annotations",
        "getLineCutoutWidthTransition",
        "lineDasharray",
        "",
        "getLineDasharray",
        "()Ljava/util/List;",
        "lineDasharrayAsExpression",
        "getLineDasharrayAsExpression",
        "lineDepthOcclusionFactor",
        "getLineDepthOcclusionFactor",
        "lineDepthOcclusionFactorAsExpression",
        "getLineDepthOcclusionFactorAsExpression",
        "lineDepthOcclusionFactorTransition",
        "getLineDepthOcclusionFactorTransition",
        "lineElevationReference",
        "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;",
        "getLineElevationReference$annotations",
        "getLineElevationReference",
        "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;",
        "lineElevationReferenceAsExpression",
        "getLineElevationReferenceAsExpression$annotations",
        "getLineElevationReferenceAsExpression",
        "lineEmissiveStrength",
        "getLineEmissiveStrength",
        "lineEmissiveStrengthAsExpression",
        "getLineEmissiveStrengthAsExpression",
        "lineEmissiveStrengthTransition",
        "getLineEmissiveStrengthTransition",
        "lineGapWidth",
        "getLineGapWidth",
        "lineGapWidthAsExpression",
        "getLineGapWidthAsExpression",
        "lineGapWidthTransition",
        "getLineGapWidthTransition",
        "lineGradient",
        "getLineGradient",
        "lineGradientUseTheme",
        "getLineGradientUseTheme$annotations",
        "getLineGradientUseTheme",
        "lineGradientUseThemeAsExpression",
        "getLineGradientUseThemeAsExpression$annotations",
        "getLineGradientUseThemeAsExpression",
        "lineJoin",
        "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;",
        "getLineJoin",
        "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;",
        "lineJoinAsExpression",
        "getLineJoinAsExpression",
        "lineMiterLimit",
        "getLineMiterLimit",
        "lineMiterLimitAsExpression",
        "getLineMiterLimitAsExpression",
        "lineOcclusionOpacity",
        "getLineOcclusionOpacity",
        "lineOcclusionOpacityAsExpression",
        "getLineOcclusionOpacityAsExpression",
        "lineOcclusionOpacityTransition",
        "getLineOcclusionOpacityTransition",
        "lineOffset",
        "getLineOffset",
        "lineOffsetAsExpression",
        "getLineOffsetAsExpression",
        "lineOffsetTransition",
        "getLineOffsetTransition",
        "lineOpacity",
        "getLineOpacity",
        "lineOpacityAsExpression",
        "getLineOpacityAsExpression",
        "lineOpacityTransition",
        "getLineOpacityTransition",
        "linePattern",
        "getLinePattern",
        "linePatternAsExpression",
        "getLinePatternAsExpression",
        "linePatternCrossFade",
        "getLinePatternCrossFade",
        "linePatternCrossFadeAsExpression",
        "getLinePatternCrossFadeAsExpression",
        "lineRoundLimit",
        "getLineRoundLimit",
        "lineRoundLimitAsExpression",
        "getLineRoundLimitAsExpression",
        "lineSortKey",
        "getLineSortKey",
        "lineSortKeyAsExpression",
        "getLineSortKeyAsExpression",
        "lineTranslate",
        "getLineTranslate",
        "lineTranslateAnchor",
        "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;",
        "getLineTranslateAnchor",
        "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;",
        "lineTranslateAnchorAsExpression",
        "getLineTranslateAnchorAsExpression",
        "lineTranslateAsExpression",
        "getLineTranslateAsExpression",
        "lineTranslateTransition",
        "getLineTranslateTransition",
        "lineTrimColor",
        "getLineTrimColor$annotations",
        "getLineTrimColor",
        "lineTrimColorAsColorInt",
        "getLineTrimColorAsColorInt$annotations",
        "getLineTrimColorAsColorInt",
        "lineTrimColorAsExpression",
        "getLineTrimColorAsExpression$annotations",
        "getLineTrimColorAsExpression",
        "lineTrimColorTransition",
        "getLineTrimColorTransition$annotations",
        "getLineTrimColorTransition",
        "lineTrimColorUseTheme",
        "getLineTrimColorUseTheme$annotations",
        "getLineTrimColorUseTheme",
        "lineTrimColorUseThemeAsExpression",
        "getLineTrimColorUseThemeAsExpression$annotations",
        "getLineTrimColorUseThemeAsExpression",
        "lineTrimFadeRange",
        "getLineTrimFadeRange$annotations",
        "getLineTrimFadeRange",
        "lineTrimFadeRangeAsExpression",
        "getLineTrimFadeRangeAsExpression$annotations",
        "getLineTrimFadeRangeAsExpression",
        "lineTrimOffset",
        "getLineTrimOffset",
        "lineTrimOffsetAsExpression",
        "getLineTrimOffsetAsExpression",
        "lineWidth",
        "getLineWidth",
        "lineWidthAsExpression",
        "getLineWidthAsExpression",
        "lineWidthTransition",
        "getLineWidthTransition",
        "lineWidthUnit",
        "Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;",
        "getLineWidthUnit$annotations",
        "getLineWidthUnit",
        "()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;",
        "lineWidthUnitAsExpression",
        "getLineWidthUnitAsExpression$annotations",
        "getLineWidthUnitAsExpression",
        "lineZOffset",
        "getLineZOffset$annotations",
        "getLineZOffset",
        "lineZOffsetAsExpression",
        "getLineZOffsetAsExpression$annotations",
        "getLineZOffsetAsExpression",
        "maxZoom",
        "getMaxZoom",
        "minZoom",
        "getMinZoom",
        "slot",
        "getSlot",
        "getSourceId",
        "sourceLayer",
        "getSourceLayer",
        "visibility",
        "Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;",
        "getVisibility",
        "()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;",
        "visibilityAsExpression",
        "getVisibilityAsExpression",
        "getType",
        "getType$extension_style_release",
        "options",
        "block",
        "Lkotlin/Function1;",
        "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Companion",
        "extension-style_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/mapbox/maps/extension/style/layers/generated/LineLayer$Companion;


# instance fields
.field private final layerId:Ljava/lang/String;

.field private final sourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->Companion:Lcom/mapbox/maps/extension/style/layers/generated/LineLayer$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "layerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/mapbox/maps/extension/style/layers/Layer;-><init>()V

    iput-object p1, p0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->layerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->sourceId:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p2}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setInternalSourceId$extension_style_release(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getLineBorderColorUseTheme$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineBorderColorUseThemeAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineColorUseTheme$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineColorUseThemeAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCrossSlope$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCrossSlopeAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCutoutFadeWidth$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCutoutFadeWidthAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCutoutFadeWidthTransition$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCutoutOpacity$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCutoutOpacityAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCutoutOpacityTransition$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCutoutWidth$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCutoutWidthAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineCutoutWidthTransition$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineElevationReference$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineElevationReferenceAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineGradientUseTheme$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineGradientUseThemeAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineTrimColor$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineTrimColorAsColorInt$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineTrimColorAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineTrimColorTransition$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineTrimColorUseTheme$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineTrimColorUseThemeAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineTrimFadeRange$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineTrimFadeRangeAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineWidthUnit$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineWidthUnitAsExpression$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineZOffset$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLineZOffsetAsExpression$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public filter(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    move-object v1, p0

    check-cast v1, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 94
    new-instance v1, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    invoke-direct {v1, v0, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public final getFilter()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 113
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "filter"

    .line 5436
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    return-object v0
.end method

.method public getLayerId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->layerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineBlur()Ljava/lang/Double;
    .locals 3

    .line 1086
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-blur"

    .line 5460
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineBlurAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 1116
    const-string v0, "line-blur"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineBlurTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 1142
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-blur-transition"

    .line 5461
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineBorderColor()Ljava/lang/String;
    .locals 2

    .line 1176
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineBorderColorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1177
    sget-object v1, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->INSTANCE:Lcom/mapbox/maps/extension/style/utils/ColorUtils;

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->rgbaExpressionToColorString(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineBorderColorAsColorInt()Ljava/lang/Integer;
    .locals 2

    .line 1236
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineBorderColorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1237
    sget-object v1, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->INSTANCE:Lcom/mapbox/maps/extension/style/utils/ColorUtils;

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->rgbaExpressionToColorInt(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineBorderColorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 1209
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-border-color"

    .line 5462
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    return-object v0
.end method

.method public final getLineBorderColorTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 1266
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-border-color-transition"

    .line 5463
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineBorderColorUseTheme()Ljava/lang/String;
    .locals 3

    .line 1301
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-border-color-use-theme"

    .line 5464
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLineBorderColorUseThemeAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 1329
    const-string v0, "line-border-color-use-theme"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineBorderWidth()Ljava/lang/Double;
    .locals 3

    .line 1356
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-border-width"

    .line 5465
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineBorderWidthAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 1386
    const-string v0, "line-border-width"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineBorderWidthTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 1412
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-border-width-transition"

    .line 5466
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineCap()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;
    .locals 10

    .line 251
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-cap"

    .line 5441
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 252
    sget-object v1, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;->Companion:Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap$Companion;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2d

    const/16 v6, 0x5f

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap$Companion;->valueOf(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineCapAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 284
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-cap"

    .line 5442
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineCap()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v1, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;->Companion:Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;->literal(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final getLineColor()Ljava/lang/String;
    .locals 2

    .line 1446
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineColorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1447
    sget-object v1, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->INSTANCE:Lcom/mapbox/maps/extension/style/utils/ColorUtils;

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->rgbaExpressionToColorString(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineColorAsColorInt()Ljava/lang/Integer;
    .locals 2

    .line 1506
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineColorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1507
    sget-object v1, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->INSTANCE:Lcom/mapbox/maps/extension/style/utils/ColorUtils;

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->rgbaExpressionToColorInt(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineColorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 1479
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-color"

    .line 5467
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    return-object v0
.end method

.method public final getLineColorTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 1536
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-color-transition"

    .line 5468
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineColorUseTheme()Ljava/lang/String;
    .locals 3

    .line 1571
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-color-use-theme"

    .line 5469
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLineColorUseThemeAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 1599
    const-string v0, "line-color-use-theme"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineCrossSlope()Ljava/lang/Double;
    .locals 3

    .line 314
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-cross-slope"

    .line 5443
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineCrossSlopeAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 346
    const-string v0, "line-cross-slope"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineCutoutFadeWidth()Ljava/lang/Double;
    .locals 3

    .line 374
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-cutout-fade-width"

    .line 5444
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineCutoutFadeWidthAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 406
    const-string v0, "line-cutout-fade-width"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineCutoutFadeWidthTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 434
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-cutout-fade-width-transition"

    .line 5445
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineCutoutOpacity()Ljava/lang/Double;
    .locals 3

    .line 471
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-cutout-opacity"

    .line 5446
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineCutoutOpacityAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 503
    const-string v0, "line-cutout-opacity"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineCutoutOpacityTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 531
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-cutout-opacity-transition"

    .line 5447
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineCutoutWidth()Ljava/lang/Double;
    .locals 3

    .line 568
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-cutout-width"

    .line 5448
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineCutoutWidthAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 600
    const-string v0, "line-cutout-width"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineCutoutWidthTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 628
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-cutout-width-transition"

    .line 5449
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineDasharray()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1626
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-dasharray"

    .line 5470
    const-class v2, Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getLineDasharrayAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 1656
    const-string v0, "line-dasharray"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineDepthOcclusionFactor()Ljava/lang/Double;
    .locals 3

    .line 1682
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-depth-occlusion-factor"

    .line 5471
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineDepthOcclusionFactorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 1712
    const-string v0, "line-depth-occlusion-factor"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineDepthOcclusionFactorTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 1738
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-depth-occlusion-factor-transition"

    .line 5472
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineElevationReference()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;
    .locals 10

    .line 665
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-elevation-reference"

    .line 5450
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 665
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 666
    sget-object v1, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;->Companion:Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference$Companion;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2d

    const/16 v6, 0x5f

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference$Companion;->valueOf(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineElevationReferenceAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 700
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-elevation-reference"

    .line 5451
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 700
    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    if-nez v0, :cond_1

    .line 701
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineElevationReference()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    sget-object v1, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;->Companion:Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;->literal(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final getLineEmissiveStrength()Ljava/lang/Double;
    .locals 3

    .line 1772
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-emissive-strength"

    .line 5473
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineEmissiveStrengthAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 1802
    const-string v0, "line-emissive-strength"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineEmissiveStrengthTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 1828
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-emissive-strength-transition"

    .line 5474
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineGapWidth()Ljava/lang/Double;
    .locals 3

    .line 1862
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-gap-width"

    .line 5475
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineGapWidthAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 1892
    const-string v0, "line-gap-width"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineGapWidthTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 1918
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-gap-width-transition"

    .line 5476
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineGradient()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 1952
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-gradient"

    .line 5477
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    return-object v0
.end method

.method public final getLineGradientUseTheme()Ljava/lang/String;
    .locals 3

    .line 1980
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-gradient-use-theme"

    .line 5478
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLineGradientUseThemeAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2008
    const-string v0, "line-gradient-use-theme"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineJoin()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;
    .locals 10

    .line 730
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-join"

    .line 5452
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 730
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 731
    sget-object v1, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;->Companion:Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin$Companion;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2d

    const/16 v6, 0x5f

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin$Companion;->valueOf(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineJoinAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 763
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-join"

    .line 5453
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 763
    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    if-nez v0, :cond_1

    .line 764
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineJoin()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    sget-object v1, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;->Companion:Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;->literal(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final getLineMiterLimit()Ljava/lang/Double;
    .locals 3

    .line 792
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-miter-limit"

    .line 5454
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineMiterLimitAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 822
    const-string v0, "line-miter-limit"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineOcclusionOpacity()Ljava/lang/Double;
    .locals 3

    .line 2035
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-occlusion-opacity"

    .line 5479
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineOcclusionOpacityAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2065
    const-string v0, "line-occlusion-opacity"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineOcclusionOpacityTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 2091
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-occlusion-opacity-transition"

    .line 5480
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineOffset()Ljava/lang/Double;
    .locals 3

    .line 2125
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-offset"

    .line 5481
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineOffsetAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2155
    const-string v0, "line-offset"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineOffsetTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 2181
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-offset-transition"

    .line 5482
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineOpacity()Ljava/lang/Double;
    .locals 3

    .line 2215
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-opacity"

    .line 5483
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineOpacityAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2245
    const-string v0, "line-opacity"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineOpacityTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 2271
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-opacity-transition"

    .line 5484
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLinePattern()Ljava/lang/String;
    .locals 3

    .line 2305
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-pattern"

    .line 5485
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLinePatternAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2335
    const-string v0, "line-pattern"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLinePatternCrossFade()Ljava/lang/Double;
    .locals 3

    .line 2361
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-pattern-cross-fade"

    .line 5486
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLinePatternCrossFadeAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2391
    const-string v0, "line-pattern-cross-fade"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineRoundLimit()Ljava/lang/Double;
    .locals 3

    .line 848
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-round-limit"

    .line 5455
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineRoundLimitAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 878
    const-string v0, "line-round-limit"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineSortKey()Ljava/lang/Double;
    .locals 3

    .line 904
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-sort-key"

    .line 5456
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineSortKeyAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 934
    const-string v0, "line-sort-key"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineTranslate()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2417
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-translate"

    .line 5487
    const-class v2, Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getLineTranslateAnchor()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;
    .locals 10

    .line 2507
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-translate-anchor"

    .line 5489
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2507
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2508
    sget-object v1, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;->Companion:Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor$Companion;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2d

    const/16 v6, 0x5f

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor$Companion;->valueOf(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineTranslateAnchorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 2540
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-translate-anchor"

    .line 5490
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2540
    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    if-nez v0, :cond_1

    .line 2541
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineTranslateAnchor()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2542
    sget-object v1, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;->Companion:Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;->literal(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final getLineTranslateAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2447
    const-string v0, "line-translate"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineTranslateTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 2473
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-translate-transition"

    .line 5488
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineTrimColor()Ljava/lang/String;
    .locals 2

    .line 2570
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineTrimColorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2571
    sget-object v1, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->INSTANCE:Lcom/mapbox/maps/extension/style/utils/ColorUtils;

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->rgbaExpressionToColorString(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineTrimColorAsColorInt()Ljava/lang/Integer;
    .locals 2

    .line 2634
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineTrimColorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2635
    sget-object v1, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->INSTANCE:Lcom/mapbox/maps/extension/style/utils/ColorUtils;

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->rgbaExpressionToColorInt(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineTrimColorAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 2605
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-trim-color"

    .line 5491
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    return-object v0
.end method

.method public final getLineTrimColorTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 2666
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-trim-color-transition"

    .line 5492
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineTrimColorUseTheme()Ljava/lang/String;
    .locals 3

    .line 2703
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-trim-color-use-theme"

    .line 5493
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLineTrimColorUseThemeAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2731
    const-string v0, "line-trim-color-use-theme"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineTrimFadeRange()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2759
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-trim-fade-range"

    .line 5494
    const-class v2, Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getLineTrimFadeRangeAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2791
    const-string v0, "line-trim-fade-range"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineTrimOffset()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2818
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-trim-offset"

    .line 5495
    const-class v2, Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getLineTrimOffsetAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2848
    const-string v0, "line-trim-offset"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineWidth()Ljava/lang/Double;
    .locals 3

    .line 2874
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-width"

    .line 5496
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineWidthAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 2904
    const-string v0, "line-width"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final getLineWidthTransition()Lcom/mapbox/maps/extension/style/types/StyleTransition;
    .locals 3

    .line 2930
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-width-transition"

    .line 5497
    const-class v2, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/types/StyleTransition;

    return-object v0
.end method

.method public final getLineWidthUnit()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;
    .locals 10

    .line 961
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-width-unit"

    .line 5457
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 961
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 962
    sget-object v1, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;->Companion:Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit$Companion;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2d

    const/16 v6, 0x5f

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit$Companion;->valueOf(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineWidthUnitAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 996
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-width-unit"

    .line 5458
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 996
    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    if-nez v0, :cond_1

    .line 997
    invoke-virtual {p0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getLineWidthUnit()Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    sget-object v1, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;->Companion:Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/expressions/generated/Expression$Companion;->literal(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final getLineZOffset()Ljava/lang/Double;
    .locals 3

    .line 1027
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "line-z-offset"

    .line 5459
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getLineZOffsetAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 1

    .line 1059
    const-string v0, "line-z-offset"

    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->getPropertyValueAsExpressionOrLiteralExpression$extension_style_release(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoom()Ljava/lang/Double;
    .locals 3

    .line 219
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "maxzoom"

    .line 5440
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getMinZoom()Ljava/lang/Double;
    .locals 3

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string v1, "minzoom"

    .line 5439
    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getSlot()Ljava/lang/String;
    .locals 3

    .line 80
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string/jumbo v1, "slot"

    .line 5435
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceLayer()Ljava/lang/String;
    .locals 3

    .line 56
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string/jumbo v1, "source-layer"

    .line 5434
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType$extension_style_release()Ljava/lang/String;
    .locals 1

    .line 2958
    const-string v0, "line"

    return-object v0
.end method

.method public getVisibility()Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;
    .locals 10

    .line 128
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string/jumbo v1, "visibility"

    .line 5437
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    sget-object v1, Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;->Companion:Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility$Companion;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v5, 0x2d

    const/16 v6, 0x5f

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility$Companion;->valueOf(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibilityAsExpression()Lcom/mapbox/maps/extension/style/expressions/generated/Expression;
    .locals 3

    .line 145
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/Layer;

    const-string/jumbo v1, "visibility"

    .line 5438
    const-class v2, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    invoke-static {v0, v1, v2}, Lcom/mapbox/maps/extension/style/layers/Layer;->access$getPropertyValueWithType(Lcom/mapbox/maps/extension/style/layers/Layer;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    return-object v0
.end method

.method public lineBlur(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 1096
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1097
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-blur"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1098
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBlur(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineBlur"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1125
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1126
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-blur"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1127
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBlurTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1152
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1153
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-blur-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1154
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBlurTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1161
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineBlurTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineBorderColor(I)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 1249
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1250
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    sget-object v1, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->INSTANCE:Lcom/mapbox/maps/extension/style/utils/ColorUtils;

    invoke-virtual {v1, p1}, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->colorIntToRgbaExpression(I)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object p1

    const-string v1, "line-border-color"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1251
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBorderColor(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineBorderColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1219
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-border-color"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1220
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBorderColor(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineBorderColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1189
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1190
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-border-color"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1191
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBorderColorTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1276
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1277
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-border-color-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1278
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBorderColorTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1284
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1285
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineBorderColorTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineBorderColorUseTheme(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineBorderColorUseTheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1339
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1340
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-border-color-use-theme"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1341
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBorderColorUseTheme(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineBorderColorUseTheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1312
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1313
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-border-color-use-theme"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1314
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBorderWidth(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 1366
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1367
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-border-width"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1368
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBorderWidth(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineBorderWidth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1395
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1396
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-border-width"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1397
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBorderWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1422
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1423
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-border-width-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1424
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineBorderWidthTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1430
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1431
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineBorderWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineCap(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineCap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 297
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cap"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCap(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineCap;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineCap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 265
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cap"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineColor(I)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 1519
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1520
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    sget-object v1, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->INSTANCE:Lcom/mapbox/maps/extension/style/utils/ColorUtils;

    invoke-virtual {v1, p1}, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->colorIntToRgbaExpression(I)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object p1

    const-string v1, "line-color"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1521
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineColor(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1488
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1489
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-color"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1490
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineColor(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1459
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1460
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-color"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1461
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineColorTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1546
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1547
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-color-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1548
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineColorTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1554
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1555
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineColorTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineColorUseTheme(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineColorUseTheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1609
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1610
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-color-use-theme"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1611
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineColorUseTheme(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineColorUseTheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1582
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1583
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-color-use-theme"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1584
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCrossSlope(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 325
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 326
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cross-slope"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCrossSlope(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineCrossSlope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 357
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cross-slope"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutFadeWidth(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 385
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 386
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cutout-fade-width"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutFadeWidth(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineCutoutFadeWidth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 417
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cutout-fade-width"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutFadeWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 446
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cutout-fade-width-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutFadeWidthTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 455
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineCutoutFadeWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineCutoutOpacity(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 482
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 483
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cutout-opacity"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutOpacity(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineCutoutOpacity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 514
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cutout-opacity"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutOpacityTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 543
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cutout-opacity-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutOpacityTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 552
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineCutoutOpacityTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineCutoutWidth(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 579
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 580
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cutout-width"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutWidth(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineCutoutWidth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 611
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cutout-width"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 640
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-cutout-width-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineCutoutWidthTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 649
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineCutoutWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineDasharray(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineDasharray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1665
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1666
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-dasharray"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1667
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineDasharray(Ljava/util/List;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "lineDasharray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1636
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1637
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-dasharray"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1638
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineDepthOcclusionFactor(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 1692
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1693
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-depth-occlusion-factor"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1694
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineDepthOcclusionFactor(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineDepthOcclusionFactor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1721
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1722
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-depth-occlusion-factor"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1723
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineDepthOcclusionFactorTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1748
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1749
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-depth-occlusion-factor-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1750
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineDepthOcclusionFactorTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1756
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1757
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineDepthOcclusionFactorTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineElevationReference(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineElevationReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 714
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-elevation-reference"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 715
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineElevationReference(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineElevationReference;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineElevationReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 680
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-elevation-reference"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineEmissiveStrength(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 1782
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1783
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-emissive-strength"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1784
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineEmissiveStrength(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineEmissiveStrength"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1811
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1812
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-emissive-strength"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1813
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineEmissiveStrengthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1838
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1839
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-emissive-strength-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1840
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineEmissiveStrengthTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1846
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1847
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineEmissiveStrengthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineGapWidth(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 1872
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1873
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-gap-width"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1874
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineGapWidth(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineGapWidth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1901
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1902
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-gap-width"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1903
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineGapWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1928
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1929
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-gap-width-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1930
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineGapWidthTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1936
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1937
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineGapWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineGradient(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineGradient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1962
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1963
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-gradient"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1964
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineGradientUseTheme(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineGradientUseTheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2019
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-gradient-use-theme"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2020
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineGradientUseTheme(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineGradientUseTheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1991
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1992
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-gradient-use-theme"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1993
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineJoin(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineJoin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 776
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-join"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 777
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineJoin(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineJoin;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineJoin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 744
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-join"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineMiterLimit(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 802
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 803
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-miter-limit"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineMiterLimit(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineMiterLimit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 832
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-miter-limit"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOcclusionOpacity(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 2045
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2046
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-occlusion-opacity"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2047
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOcclusionOpacity(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineOcclusionOpacity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2074
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2075
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-occlusion-opacity"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2076
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOcclusionOpacityTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2101
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2102
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-occlusion-opacity-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2103
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOcclusionOpacityTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2109
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2110
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineOcclusionOpacityTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineOffset(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 2135
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2136
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-offset"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2137
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOffset(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineOffset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2164
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2165
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-offset"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2166
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOffsetTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2191
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2192
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-offset-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2193
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOffsetTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2199
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2200
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineOffsetTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineOpacity(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 2225
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2226
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-opacity"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2227
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOpacity(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineOpacity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2254
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2255
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-opacity"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2256
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOpacityTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2281
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2282
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-opacity-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2283
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineOpacityTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2289
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2290
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineOpacityTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public linePattern(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "linePattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2344
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2345
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-pattern"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2346
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public linePattern(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "linePattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2315
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2316
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-pattern"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2317
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public linePatternCrossFade(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 2371
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2372
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-pattern-cross-fade"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2373
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public linePatternCrossFade(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "linePatternCrossFade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2400
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2401
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-pattern-cross-fade"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2402
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineRoundLimit(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 858
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 859
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-round-limit"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineRoundLimit(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineRoundLimit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 888
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-round-limit"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 889
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineSortKey(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 914
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 915
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-sort-key"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 916
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineSortKey(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineSortKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 944
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-sort-key"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 945
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTranslate(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineTranslate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2456
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2457
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-translate"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2458
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTranslate(Ljava/util/List;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "lineTranslate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2427
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2428
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-translate"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2429
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTranslateAnchor(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineTranslateAnchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2552
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2553
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-translate-anchor"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2554
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTranslateAnchor(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineTranslateAnchor;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineTranslateAnchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2520
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2521
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-translate-anchor"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2522
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTranslateTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2483
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2484
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-translate-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2485
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTranslateTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2491
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2492
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineTranslateTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineTrimColor(I)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 2648
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2649
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    sget-object v1, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->INSTANCE:Lcom/mapbox/maps/extension/style/utils/ColorUtils;

    invoke-virtual {v1, p1}, Lcom/mapbox/maps/extension/style/utils/ColorUtils;->colorIntToRgbaExpression(I)Lcom/mapbox/maps/extension/style/expressions/generated/Expression;

    move-result-object p1

    const-string v1, "line-trim-color"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2650
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTrimColor(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineTrimColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2615
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2616
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-trim-color"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2617
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTrimColor(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineTrimColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2584
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2585
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-trim-color"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2586
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTrimColorTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2677
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2678
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-trim-color-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2679
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTrimColorTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2686
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2687
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineTrimColorTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineTrimColorUseTheme(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineTrimColorUseTheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2741
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2742
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-trim-color-use-theme"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2743
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTrimColorUseTheme(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineTrimColorUseTheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2714
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2715
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-trim-color-use-theme"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2716
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTrimFadeRange(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineTrimFadeRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2801
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2802
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-trim-fade-range"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2803
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTrimFadeRange(Ljava/util/List;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "lineTrimFadeRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2770
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2771
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-trim-fade-range"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2772
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTrimOffset(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineTrimOffset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2857
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2858
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-trim-offset"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2859
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineTrimOffset(Ljava/util/List;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "lineTrimOffset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2828
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2829
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-trim-offset"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2830
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineWidth(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 2884
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2885
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-width"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2886
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineWidth(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineWidth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2913
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2914
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-width"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2915
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2940
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2941
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-width-transition"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2942
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineWidthTransition(Lkotlin/jvm/functions/Function1;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2948
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 2949
    new-instance v0, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;

    invoke-direct {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mapbox/maps/extension/style/types/StyleTransition$Builder;->build()Lcom/mapbox/maps/extension/style/types/StyleTransition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->lineWidthTransition(Lcom/mapbox/maps/extension/style/types/StyleTransition;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    return-object p0
.end method

.method public lineWidthUnit(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineWidthUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1010
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-width-unit"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineWidthUnit(Lcom/mapbox/maps/extension/style/layers/properties/generated/LineWidthUnit;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineWidthUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 976
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-width-unit"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 977
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineZOffset(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 1038
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1039
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-z-offset"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1040
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public lineZOffset(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string v0, "lineZOffset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 1070
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "line-z-offset"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1071
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public bridge synthetic maxZoom(D)Lcom/mapbox/maps/extension/style/layers/Layer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->maxZoom(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    move-result-object p1

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/Layer;

    return-object p1
.end method

.method public maxZoom(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 232
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 233
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "maxzoom"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public bridge synthetic minZoom(D)Lcom/mapbox/maps/extension/style/layers/Layer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->minZoom(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    move-result-object p1

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/Layer;

    return-object p1
.end method

.method public minZoom(D)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    .line 199
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 200
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string v1, "minzoom"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public bridge synthetic slot(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/Layer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->slot(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    move-result-object p1

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/Layer;

    return-object p1
.end method

.method public slot(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string/jumbo v0, "slot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    move-object v1, p0

    check-cast v1, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 66
    new-instance v1, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    invoke-direct {v1, v0, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public sourceLayer(Ljava/lang/String;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string/jumbo v0, "sourceLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v0, p0

    check-cast v0, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 41
    new-instance v0, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    const-string/jumbo v1, "source-layer"

    invoke-direct {v0, v1, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public bridge synthetic visibility(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/Layer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->visibility(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    move-result-object p1

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/Layer;

    return-object p1
.end method

.method public bridge synthetic visibility(Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;)Lcom/mapbox/maps/extension/style/layers/Layer;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->visibility(Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    move-result-object p1

    check-cast p1, Lcom/mapbox/maps/extension/style/layers/Layer;

    return-object p1
.end method

.method public visibility(Lcom/mapbox/maps/extension/style/expressions/generated/Expression;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string/jumbo v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    move-object v1, p0

    check-cast v1, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 167
    new-instance v1, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    invoke-direct {v1, v0, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method

.method public visibility(Lcom/mapbox/maps/extension/style/layers/properties/generated/Visibility;)Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;
    .locals 2

    const-string/jumbo v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    move-object v1, p0

    check-cast v1, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;

    .line 155
    new-instance v1, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;

    invoke-direct {v1, v0, p1}, Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/mapbox/maps/extension/style/layers/generated/LineLayer;->setProperty$extension_style_release(Lcom/mapbox/maps/extension/style/layers/properties/PropertyValue;)V

    return-object p0
.end method
