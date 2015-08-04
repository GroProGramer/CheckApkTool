.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMClientCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMClient;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVException;)V
.end method

.method protected internalDone0(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;
    .param p2, "parseException"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVException;)V

    .line 16
    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 10
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;->internalDone0(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
