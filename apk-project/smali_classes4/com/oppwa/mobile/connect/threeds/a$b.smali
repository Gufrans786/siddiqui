.class Lcom/oppwa/mobile/connect/threeds/a$b;
.super Ljava/lang/Object;
.source "ChallengeCallbackAdapter.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$ErrorEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/threeds/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/a$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/threeds/a$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/oppwa/mobile/connect/threeds/a$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/a$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDetails()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/a$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/a$b;->b:Ljava/lang/String;

    return-object v0
.end method
