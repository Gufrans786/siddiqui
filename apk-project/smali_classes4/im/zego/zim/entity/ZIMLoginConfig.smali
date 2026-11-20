.class public Lim/zego/zim/entity/ZIMLoginConfig;
.super Ljava/lang/Object;
.source "ZIMLoginConfig.java"


# instance fields
.field public customStatus:Ljava/lang/String;

.field public isOfflineLogin:Z

.field public token:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMLoginConfig;->userName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lim/zego/zim/entity/ZIMLoginConfig;->token:Ljava/lang/String;

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lim/zego/zim/entity/ZIMLoginConfig;->isOfflineLogin:Z

    .line 17
    iput-object v0, p0, Lim/zego/zim/entity/ZIMLoginConfig;->customStatus:Ljava/lang/String;

    return-void
.end method
