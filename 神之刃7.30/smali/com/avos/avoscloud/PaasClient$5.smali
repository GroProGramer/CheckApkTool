.class Lcom/avos/avoscloud/PaasClient$5;
.super Lcom/avos/avoscloud/DNSRetryCallback;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PaasClient;

.field final synthetic val$fetchRetry:Z

.field final synthetic val$inputHeader:Ljava/util/Map;

.field final synthetic val$parameters:Lcom/loopj/android/http/RequestParams;

.field final synthetic val$policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field final synthetic val$relativePath:Ljava/lang/String;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;Z)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$5;->this$0:Lcom/avos/avoscloud/PaasClient;

    iput-object p4, p0, Lcom/avos/avoscloud/PaasClient$5;->val$relativePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/avos/avoscloud/PaasClient$5;->val$parameters:Lcom/loopj/android/http/RequestParams;

    iput-boolean p6, p0, Lcom/avos/avoscloud/PaasClient$5;->val$sync:Z

    iput-object p7, p0, Lcom/avos/avoscloud/PaasClient$5;->val$inputHeader:Ljava/util/Map;

    iput-object p8, p0, Lcom/avos/avoscloud/PaasClient$5;->val$policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-boolean p9, p0, Lcom/avos/avoscloud/PaasClient$5;->val$fetchRetry:Z

    invoke-direct {p0, p2, p3}, Lcom/avos/avoscloud/DNSRetryCallback;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method


# virtual methods
.method public executeRequest()V
    .locals 9

    .prologue
    .line 421
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$5;->this$0:Lcom/avos/avoscloud/PaasClient;

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$5;->val$relativePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient$5;->val$parameters:Lcom/loopj/android/http/RequestParams;

    iget-boolean v3, p0, Lcom/avos/avoscloud/PaasClient$5;->val$sync:Z

    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$5;->val$inputHeader:Ljava/util/Map;

    iget-object v5, p0, Lcom/avos/avoscloud/PaasClient$5;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iget-object v6, p0, Lcom/avos/avoscloud/PaasClient$5;->val$policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-boolean v7, p0, Lcom/avos/avoscloud/PaasClient$5;->val$fetchRetry:Z

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;ZZ)V

    .line 423
    return-void
.end method

.method public isRetryNeeded(ILjava/lang/Throwable;)Z
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 416
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVUtils;->checkDNSException(ILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
