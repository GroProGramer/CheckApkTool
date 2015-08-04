.class Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;
.super Lcom/avos/avoscloud/GenericRetryCallback;
.source "DataFetchCallbackWithFailureRetry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Lcom/avos/avoscloud/GenericRetryCallback;"
    }
.end annotation


# instance fields
.field inputHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field parameters:Lcom/loopj/android/http/RequestParams;

.field policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field relativePath:Ljava/lang/String;

.field retry:Z

.field sync:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V
    .locals 1
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;, "Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry<TT;>;"
    .local p4, "inputHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p5}, Lcom/avos/avoscloud/GenericRetryCallback;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->retry:Z

    .line 22
    iput-object p1, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->relativePath:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->parameters:Lcom/loopj/android/http/RequestParams;

    .line 24
    iput-boolean p3, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->sync:Z

    .line 25
    iput-object p4, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->inputHeader:Ljava/util/Map;

    .line 26
    iput-object p5, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 27
    iput-object p6, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 28
    return-void
.end method

.method private isLastModifyCacheMissingError(Ljava/lang/String;)Z
    .locals 1
    .param p1, "errorString"    # Ljava/lang/String;

    .prologue
    .line 53
    .local p0, "this":Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;, "Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry<TT;>;"
    const-string v0, "Cache Missing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isRetryNeeded(ILjava/lang/Throwable;)Z
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    .local p0, "this":Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;, "Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry<TT;>;"
    iget-boolean v0, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->retry:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->isLastModifyCacheMissingError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;, "Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry<TT;>;"
    const/4 v7, 0x0

    .line 43
    iget-boolean v0, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->retry:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->isLastModifyCacheMissingError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iput-boolean v7, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->retry:Z

    .line 45
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->relativePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->parameters:Lcom/loopj/android/http/RequestParams;

    iget-boolean v3, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->sync:Z

    iget-object v4, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->inputHeader:Ljava/util/Map;

    iget-object v5, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iget-object v6, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Z)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public retry(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;, "Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry<TT;>;"
    const/4 v7, 0x0

    .line 37
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->relativePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->parameters:Lcom/loopj/android/http/RequestParams;

    iget-boolean v3, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->sync:Z

    iget-object v4, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->inputHeader:Ljava/util/Map;

    iget-object v5, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iget-object v6, p0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;ZZ)V

    .line 39
    return-void
.end method
