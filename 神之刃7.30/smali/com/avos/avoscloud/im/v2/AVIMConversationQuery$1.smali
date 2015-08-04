.class Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;
.super Landroid/content/BroadcastReceiver;
.source "AVIMConversationQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->findInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 439
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "callbackException"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 441
    .local v3, "data":Ljava/io/Serializable;
    const/4 v2, 0x0

    .line 442
    .local v2, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMConversation;>;"
    const/4 v5, 0x0

    .line 443
    .local v5, "error":Ljava/lang/Throwable;
    instance-of v6, v3, Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 444
    move-object v0, v3

    check-cast v0, Ljava/lang/Throwable;

    move-object v5, v0

    .line 450
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    if-nez v5, :cond_2

    .end local v2    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMConversation;>;"
    :goto_1
    if-nez v5, :cond_3

    move-object v6, v7

    :goto_2
    invoke-virtual {v8, v2, v6}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 453
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 458
    .end local v3    # "data":Ljava/io/Serializable;
    .end local v5    # "error":Ljava/lang/Throwable;
    :goto_3
    return-void

    .line 445
    .restart local v2    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMConversation;>;"
    .restart local v3    # "data":Ljava/io/Serializable;
    .restart local v5    # "error":Ljava/lang/Throwable;
    :cond_1
    instance-of v6, v3, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v6, :cond_0

    .line 446
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    move-object v1, v0

    .line 447
    .local v1, "content":Lcom/alibaba/fastjson/JSONArray;
    iget-object v6, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    # invokes: Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->parseQueryResult(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    invoke-static {v6, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->access$000(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .end local v1    # "content":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    move-object v2, v7

    .line 450
    goto :goto_1

    .end local v2    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMConversation;>;"
    :cond_3
    new-instance v6, Lcom/avos/avoscloud/AVException;

    invoke-direct {v6, v5}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 455
    .end local v3    # "data":Ljava/io/Serializable;
    .end local v5    # "error":Ljava/lang/Throwable;
    :catch_0
    move-exception v4

    .line 456
    .local v4, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    new-instance v8, Lcom/avos/avoscloud/AVException;

    invoke-direct {v8, v4}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7, v8}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_3
.end method
