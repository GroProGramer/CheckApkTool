.class public Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
.super Ljava/lang/Object;
.source "AVIMConversationQuery.java"


# instance fields
.field private client:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field conditions:Lcom/avos/avoscloud/QueryConditions;


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 1
    .param p1, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 43
    new-instance v0, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {v0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->parseQueryResult(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAttributeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attr."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getColumnKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 414
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    .end local p1    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 416
    .restart local p1    # "key":Ljava/lang/String;
    :cond_1
    const-string v0, "attr."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getAttributeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private parseQueryResult(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 11
    .param p1, "content"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 467
    .local v3, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMConversation;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 468
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 469
    .local v8, "o":Lcom/alibaba/fastjson/JSONObject;
    const-string v9, "objectId"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "conversationId":Ljava/lang/String;
    const-string v9, "m"

    const-class v10, Ljava/util/List;

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 471
    .local v5, "m":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {v1, v9, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    .line 472
    .local v1, "c":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    invoke-virtual {v1, v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setMembers(Ljava/util/List;)V

    .line 473
    const-string v9, "c"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreator(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 476
    const-string v9, "name"

    const-string v10, "name"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_0
    const-string v9, "attr"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 480
    const-string v9, "attr"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 481
    .local v6, "moreAttributes":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_1

    .line 482
    const-class v9, Ljava/util/Map;

    invoke-static {v6, v9}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 483
    .local v7, "moreAttributesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 486
    .end local v6    # "moreAttributes":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "moreAttributesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v1, v0, v9}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setAttributes(Ljava/util/Map;Z)V

    .line 487
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v9, "tr"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 489
    const-string v9, "tr"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    .line 491
    :cond_2
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v9, v9, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 494
    .end local v0    # "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "c":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .end local v2    # "conversationId":Ljava/lang/String;
    .end local v5    # "m":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "o":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    return-object v3
.end method


# virtual methods
.method public containsMembers(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    const-string v1, "m"

    const-string v2, "$all"

    invoke-virtual {v0, v1, v2, p1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-object p0
.end method

.method public findInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    .prologue
    .line 425
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 426
    if-eqz p1, :cond_0

    .line 427
    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/AVException;

    const/16 v4, 0x64

    const-string v5, "Connection lost"

    invoke-direct {v3, v4, v5}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    move-result-object v0

    .line 432
    .local v0, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 433
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz p1, :cond_2

    .line 434
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;

    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V

    .line 461
    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0
.end method

.method public limit(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->setLimit(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    move-result-object v0

    return-object v0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    .line 382
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    .line 394
    return-object p0
.end method

.method public setLimit(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    .line 340
    return-object p0
.end method

.method public setSkip(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .param p1, "skip"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    .line 361
    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .param p1, "skip"    # I

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->setSkip(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subString"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContains(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 196
    return-object p0
.end method

.method public whereContainsIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 170
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    return-object p0
.end method

.method public whereGreaterThanOrEqualsTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    return-object p0
.end method

.method public whereLessThanOrEqualsTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "modifiers"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 271
    return-object p0
.end method

.method public whereNotContainsIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 182
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 183
    return-object p0
.end method

.method public whereNotEqualsTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    return-object p0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereSizeEqual(Ljava/lang/String;I)V

    .line 406
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "southwest"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "northeast"    # Lcom/avos/avoscloud/AVGeoPoint;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 285
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D

    .prologue
    .line 300
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 301
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D

    .prologue
    .line 314
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 315
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D

    .prologue
    .line 328
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 329
    return-object p0
.end method

.method public withMembers(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->withMembers(Ljava/util/List;Z)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    move-result-object v0

    return-object v0
.end method

.method public withMembers(Ljava/util/List;Z)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 3
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    .local v0, "targetPeerIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->containsMembers(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    .line 69
    const-string v1, "m"

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    .line 70
    return-object p0
.end method
