.class Lcom/avos/avoscloud/im/v2/AVIMClient$2;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->getOnlineClients(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V
    .locals 0
    .param p2, "x0"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 135
    if-eqz p2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;->callback:Lcom/avos/avoscloud/AVCallback;

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3, v2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v1, "callbackOnlineClient"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 140
    .local v0, "onlineClients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {v1, v0, v3}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
