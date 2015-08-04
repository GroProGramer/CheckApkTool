.class abstract Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVIMBaseBroadcastReceiver.java"


# instance fields
.field callback:Lcom/avos/avoscloud/AVCallback;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->callback:Lcom/avos/avoscloud/AVCallback;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "callbackException"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 27
    .local v1, "error":Ljava/lang/Throwable;
    invoke-virtual {p0, p2, v1}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->execute(Landroid/content/Intent;Ljava/lang/Throwable;)V

    .line 28
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "error":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->callback:Lcom/avos/avoscloud/AVCallback;

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->callback:Lcom/avos/avoscloud/AVCallback;

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/AVException;

    invoke-direct {v4, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
