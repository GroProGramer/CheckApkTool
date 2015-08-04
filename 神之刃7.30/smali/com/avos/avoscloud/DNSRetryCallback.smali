.class public abstract Lcom/avos/avoscloud/DNSRetryCallback;
.super Lcom/avos/avoscloud/GenericRetryCallback;
.source "DNSRetryCallback.java"


# instance fields
.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 12
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/GenericRetryCallback;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 13
    iput-object p1, p0, Lcom/avos/avoscloud/DNSRetryCallback;->url:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract executeRequest()V
.end method

.method public isRetryNeeded(ILjava/lang/Throwable;)Z
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 18
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUtils;->checkDNSException(ILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Throwable;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericRetryCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericRetryCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public retry(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/DNSRetryCallback;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/DNSRetryCallback$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/avos/avoscloud/DNSRetryCallback$1;-><init>(Lcom/avos/avoscloud/DNSRetryCallback;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVNetworkHelper;->amendDNS(Ljava/lang/String;Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/net/URISyntaxException;
    iget-object v1, p0, Lcom/avos/avoscloud/DNSRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v1, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
