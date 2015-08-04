.class Lcom/avos/avospush/push/AVPushRouter$2;
.super Lcom/avos/avoscloud/DNSRetryCallback;
.source "AVPushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avospush/push/AVPushRouter;->fetchPushServer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avospush/push/AVPushRouter;

.field final synthetic val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

.field final synthetic val$client:Lcom/loopj/android/http/AsyncHttpClient;

.field final synthetic val$routerUrlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avospush/push/AVPushRouter;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/loopj/android/http/AsyncHttpClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushRouter$2;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    iput-object p4, p0, Lcom/avos/avospush/push/AVPushRouter$2;->val$client:Lcom/loopj/android/http/AsyncHttpClient;

    iput-object p5, p0, Lcom/avos/avospush/push/AVPushRouter$2;->val$routerUrlStr:Ljava/lang/String;

    iput-object p6, p0, Lcom/avos/avospush/push/AVPushRouter$2;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-direct {p0, p2, p3}, Lcom/avos/avoscloud/DNSRetryCallback;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method


# virtual methods
.method public executeRequest()V
    .locals 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter$2;->val$client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter$2;->val$routerUrlStr:Ljava/lang/String;

    new-instance v2, Lcom/avos/avoscloud/GetHttpResponseHandler;

    iget-object v3, p0, Lcom/avos/avospush/push/AVPushRouter$2;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    sget-object v4, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-object v5, p0, Lcom/avos/avospush/push/AVPushRouter$2;->val$routerUrlStr:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 141
    return-void
.end method
