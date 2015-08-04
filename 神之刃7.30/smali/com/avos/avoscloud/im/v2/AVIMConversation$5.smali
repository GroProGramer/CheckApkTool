.class Lcom/avos/avoscloud/im/v2/AVIMConversation$5;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->fetchInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 11
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    const/4 v9, 0x0

    .line 420
    if-eqz p2, :cond_1

    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    if-eqz v8, :cond_1

    .line 421
    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    invoke-virtual {v8, v9, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    if-nez p2, :cond_0

    .line 423
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "attr"

    invoke-virtual {p1, v8}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 425
    const-string v8, "attr"

    invoke-virtual {p1, v8}, Lcom/avos/avoscloud/AVObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 427
    .local v0, "attr":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 429
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 430
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 432
    .local v5, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 433
    :catch_0
    move-exception v3

    .line 434
    .local v3, "e1":Lorg/json/JSONException;
    goto :goto_1

    .line 440
    .end local v0    # "attr":Lorg/json/JSONObject;
    .end local v3    # "e1":Lorg/json/JSONException;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    const-string v8, "name"

    invoke-virtual {p1, v8}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 441
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 442
    const-string v8, "name"

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_3
    const-string v8, "m"

    invoke-virtual {p1, v8}, Lcom/avos/avoscloud/AVObject;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 446
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v8, v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setMembers(Ljava/util/List;)V

    .line 448
    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v8, v8, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 449
    const-string v8, "c"

    invoke-virtual {p1, v8}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "creator":Ljava/lang/String;
    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v8, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreator(Ljava/lang/String;)V

    .line 451
    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    if-eqz v8, :cond_4

    .line 452
    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    invoke-virtual {v8, v9, v9}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 455
    :cond_4
    iget-object v8, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v8, v8, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v8, v8, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v9, v9, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    iget-object v10, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
