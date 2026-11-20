.class public final synthetic Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oppwa/mobile/connect/utils/LogSender;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

.field public final synthetic f$4:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

.field public final synthetic f$5:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/oppwa/mobile/connect/utils/LogSender;Ljava/util/List;Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/utils/LogSender;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$3:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iput-object p5, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$4:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    iput-object p6, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$5:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/utils/LogSender;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$3:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    iget-object v4, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$4:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    iget-object v5, p0, Lcom/oppwa/mobile/connect/utils/LogSender$$ExternalSyntheticLambda0;->f$5:Ljava/io/File;

    invoke-static/range {v0 .. v5}, Lcom/oppwa/mobile/connect/utils/LogSender;->$r8$lambda$8QQZ7Y8brgdQ0202jFfrliU4qFA(Lcom/oppwa/mobile/connect/utils/LogSender;Ljava/util/List;Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/io/File;)V

    return-void
.end method
