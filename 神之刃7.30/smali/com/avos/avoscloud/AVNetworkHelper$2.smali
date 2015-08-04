.class final Lcom/avos/avoscloud/AVNetworkHelper$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "AVNetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVNetworkHelper;->getDNSResource(Ljava/lang/String;Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 119
    iput-object p2, p0, Lcom/avos/avoscloud/AVNetworkHelper$2;->val$callback:Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;

    invoke-direct {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/avos/avoscloud/AVNetworkHelper$2;->val$callback:Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, p4}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;->done(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 136
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B

    .prologue
    const/4 v3, 0x0

    .line 123
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/avos/avoscloud/AVNetworkHelper$2;->val$callback:Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;

    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;->done(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVNetworkHelper$2;->val$callback:Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;->done(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
