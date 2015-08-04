.class public Lcom/avos/avoscloud/PostHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "PostHttpResponseHandler.java"


# instance fields
.field private callback:Lcom/avos/avoscloud/GenericObjectCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 14
    iput-object p1, p0, Lcom/avos/avoscloud/PostHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 15
    return-void
.end method


# virtual methods
.method getCallback()Lcom/avos/avoscloud/GenericObjectCallback;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avos/avoscloud/PostHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    return-object v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nerror:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "contentType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v2

    invoke-virtual {v2, p1, p4, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "body"    # [B

    .prologue
    .line 28
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "content":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "contentType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/avos/avoscloud/AVUtils;->checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    invoke-static {v1}, Lcom/avos/avoscloud/AVErrorUtils;->errorCode(Ljava/lang/String;)I

    move-result v0

    .line 36
    .local v0, "code":I
    if-lez v0, :cond_3

    .line 37
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 43
    invoke-virtual {p0}, Lcom/avos/avoscloud/PostHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 46
    :cond_4
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->schedule()V

    goto :goto_0
.end method

.method setCallback(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/avos/avoscloud/PostHttpResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 19
    return-void
.end method
