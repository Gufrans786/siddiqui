.class public interface abstract Lim/zego/zim/callback/ZIMConversationMessageReceiptReadSentCallback;
.super Ljava/lang/Object;
.source "ZIMConversationMessageReceiptReadSentCallback.java"


# virtual methods
.method public abstract onConversationMessageReceiptReadSent(Ljava/lang/String;Lim/zego/zim/enums/ZIMConversationType;Lim/zego/zim/entity/ZIMError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "conversationID",
            "conversationType",
            "errorInfo"
        }
    .end annotation
.end method
