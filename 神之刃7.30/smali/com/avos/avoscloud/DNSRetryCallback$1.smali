.class Lcom/avos/avoscloud/DNSRetryCallback$1;
.super Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;
.source "DNSRetryCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/DNSRetryCallback;->retry(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/DNSRetryCallback;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$error:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/DNSRetryCallback;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/avos/avoscloud/DNSRetryCallback$1;->this$0:Lcom/avos/avoscloud/DNSRetryCallback;

    iput-object p2, p0, Lcom/avos/avoscloud/DNSRetryCallback$1;->val$error:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/avos/avoscloud/DNSRetryCallback$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/avos/avoscloud/DNSRetryCallback$1;->this$0:Lcom/avos/avoscloud/DNSRetryCallback;

    invoke-virtual {v0}, Lcom/avos/avoscloud/DNSRetryCallback;->executeRequest()V

    .line 35
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/DNSRetryCallback$1;->this$0:Lcom/avos/avoscloud/DNSRetryCallback;

    iget-object v0, v0, Lcom/avos/avoscloud/DNSRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/DNSRetryCallback$1;->val$error:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/avos/avoscloud/DNSRetryCallback$1;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
