.class public final enum Lnts/ᦝ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnts/\u199d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Ͼ:Lnts/ᦝ;

.field public static final enum ౠ:Lnts/ᦝ;

.field public static final enum ᇭ:Lnts/ᦝ;

.field public static final synthetic ᙕ:[Lnts/ᦝ;

.field public static final enum ᰛ:Lnts/ᦝ;

.field public static final enum ᾨ:Lnts/ᦝ;

.field public static final enum ㆃ:Lnts/ᦝ;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lnts/ᦝ;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnts/ᦝ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnts/ᦝ;->ㆃ:Lnts/ᦝ;

    .line 2
    new-instance v1, Lnts/ᦝ;

    const-string v2, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnts/ᦝ;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnts/ᦝ;->ᾨ:Lnts/ᦝ;

    .line 3
    new-instance v2, Lnts/ᦝ;

    const-string v3, "SINGLE_SELECT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnts/ᦝ;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnts/ᦝ;->ᇭ:Lnts/ᦝ;

    .line 4
    new-instance v3, Lnts/ᦝ;

    const-string v4, "MULTI_SELECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnts/ᦝ;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnts/ᦝ;->ᰛ:Lnts/ᦝ;

    .line 5
    new-instance v4, Lnts/ᦝ;

    const-string v5, "OOB"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnts/ᦝ;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnts/ᦝ;->Ͼ:Lnts/ᦝ;

    .line 6
    new-instance v5, Lnts/ᦝ;

    const-string v6, "HTML"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnts/ᦝ;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnts/ᦝ;->ౠ:Lnts/ᦝ;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lnts/ᦝ;

    move-result-object v0

    sput-object v0, Lnts/ᦝ;->ᙕ:[Lnts/ᦝ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnts/ᦝ;
    .locals 1

    .line 1
    const-class v0, Lnts/ᦝ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnts/ᦝ;

    return-object p0
.end method

.method public static values()[Lnts/ᦝ;
    .locals 1

    .line 1
    sget-object v0, Lnts/ᦝ;->ᙕ:[Lnts/ᦝ;

    invoke-virtual {v0}, [Lnts/ᦝ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnts/ᦝ;

    return-object v0
.end method
