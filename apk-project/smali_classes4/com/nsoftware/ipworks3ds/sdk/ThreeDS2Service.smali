.class public interface abstract Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lnts/ᴨ;->ㆃ:Lnts/ᴨ;

    sput-object v0, Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;->INSTANCE:Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

    return-void
.end method


# virtual methods
.method public abstract cleanup(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;
        }
    .end annotation
.end method

.method public abstract createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/nsoftware/ipworks3ds/sdk/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation
.end method

.method public abstract getWarnings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nsoftware/ipworks3ds/sdk/Warning;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKNotInitializedException;
        }
    .end annotation
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKAlreadyInitializedException;,
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation
.end method
