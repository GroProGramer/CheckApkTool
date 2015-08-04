.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMConversationCreatedCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVException;)V
.end method

.method protected final internalDone0(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "returnValue"    # Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVException;)V

    .line 13
    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 7
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;->internalDone0(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
