.class Lcom/avos/avoscloud/im/v2/AVIMClient$3;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$conversationMembers:Ljava/util/List;

.field final synthetic val$isTransient:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 0
    .param p2, "x0"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationMembers:Ljava/util/List;

    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$attributes:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTransient:Z

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "callbackconversation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "conversationId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 222
    .local v0, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    if-nez p2, :cond_0

    .line 223
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .end local v0    # "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationMembers:Ljava/util/List;

    iget-object v4, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$attributes:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$isTransient:Z

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V

    .line 225
    .restart local v0    # "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setConversationId(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->val$conversationMembers:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setMembers(Ljava/util/List;)V

    .line 227
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v2, v2, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreator(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v2, v2, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;->callback:Lcom/avos/avoscloud/AVCallback;

    if-nez p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v0, v2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 232
    return-void

    .line 230
    :cond_1
    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
