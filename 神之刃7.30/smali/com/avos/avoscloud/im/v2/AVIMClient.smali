.class public Lcom/avos/avoscloud/im/v2/AVIMClient;
.super Ljava/lang/Object;
.source "AVIMClient.java"


# static fields
.field static clientEventHandler:Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

.field static clients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ">;"
        }
    .end annotation
.end field

.field static factory:Lcom/avos/avoscloud/SignatureFactory;


# instance fields
.field clientId:Ljava/lang/String;

.field conversationCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method protected static assembleConversationAttributes(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 365
    .local v0, "assembledAttributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "name"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    const-string v4, "name"

    const-string v5, "name"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v2, "innerAttribute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 371
    .local v3, "k":Ljava/lang/String;
    const-string v4, "attr."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 372
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 373
    :cond_2
    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 374
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    .end local v3    # "k":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 378
    const-string v4, "attr"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 381
    const/4 v4, 0x0

    .line 383
    :goto_1
    return-object v4

    :cond_5
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_1
.end method

.method protected static getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientEventHandler:Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    return-object v0
.end method

.method protected static getConversationWhereQuery(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v0, "assembledAttributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "name"

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    const-string v3, "name"

    const-string v4, "name"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 354
    .local v2, "k":Ljava/lang/String;
    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "attr."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attr."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    .end local v2    # "k":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;
    .locals 3
    .param p0, "clientId"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 85
    .local v0, "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 88
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .end local v0    # "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    invoke-direct {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v0    # "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 90
    .local v1, "elderClient":Lcom/avos/avoscloud/im/v2/AVIMClient;
    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public static setClientEventHandler(Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;)V
    .locals 0
    .param p0, "handler"    # Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    .prologue
    .line 278
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientEventHandler:Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    .line 279
    return-void
.end method

.method public static setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 7
    .param p0, "factory"    # Lcom/avos/avoscloud/SignatureFactory;

    .prologue
    .line 57
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->factory:Lcom/avos/avoscloud/SignatureFactory;

    .line 59
    :try_start_0
    const-string v3, "com.avos.avoscloud.PushService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, "pushService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setSignatureFactory"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/avos/avoscloud/SignatureFactory;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 62
    .local v2, "setSignatureFactoryMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "pushService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setSignatureFactoryMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v3, "error during v2 IM Client signature factory setting"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static validateNonEmptyConversationMembers(Ljava/util/List;)Lcom/avos/avoscloud/AVException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVException;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x3e7

    const-string v3, "Conversation can\'t be created with empty members"

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 339
    :goto_0
    return-object v1

    .line 335
    :cond_1
    :try_start_0
    const-string v1, "Null id in session id list."

    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    const/4 v1, 0x0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public close(Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz p1, :cond_0

    .line 294
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$4;

    .end local v0    # "receiver":Landroid/content/BroadcastReceiver;
    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient$4;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    .line 305
    .restart local v0    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 306
    return-void
.end method

.method public createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "conversationMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    .line 174
    return-void
.end method

.method public createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 10
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "isTransient"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "conversationMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v1, "Null id in session id list."

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v7, "conversationAttributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_0

    .line 198
    invoke-virtual {v7, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 200
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    const-string v1, "name"

    invoke-virtual {v7, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "conversation.member"

    invoke-interface {v9, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 207
    invoke-static {v7}, Lcom/avos/avoscloud/im/v2/AVIMClient;->assembleConversationAttributes(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 208
    .local v6, "assembledAttributes":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_2

    .line 209
    const-string v1, "conversation.attributes"

    invoke-interface {v9, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_2
    const-string v1, "conversation.transient"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v6    # "assembledAttributes":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    const/4 v0, 0x0

    .line 215
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz p5, :cond_4

    .line 216
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;

    .end local v0    # "receiver":Landroid/content/BroadcastReceiver;
    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMClient$3;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;Ljava/util/List;Ljava/util/Map;Z)V

    .line 235
    .restart local v0    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_4
    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 237
    .end local v0    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v7    # "conversationAttributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v8

    .line 190
    .local v8, "e":Ljava/lang/Exception;
    if-eqz p5, :cond_5

    .line 191
    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, v8}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p5, v1, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public createConversation(Ljava/util/List;Ljava/util/Map;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 6
    .param p3, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "conversationMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    .line 169
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 388
    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 391
    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 392
    .local v0, "anotherClient":Lcom/avos/avoscloud/im/v2/AVIMClient;
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 393
    iget-object v2, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    iget-object v2, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 3
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 248
    .local v0, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 254
    :cond_0
    :goto_0
    return-object v1

    .line 251
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .end local v0    # "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    .line 252
    .restart local v0    # "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 254
    .local v1, "elderConversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public getOnlineClients(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;)V
    .locals 4
    .param p2, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "clients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "client.oneline"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz p2, :cond_0

    .line 132
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMClient$2;

    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    invoke-direct {v1, p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    .line 145
    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v2, v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 147
    return-void
.end method

.method public getQuery()Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->factory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method public open(Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "PARAM_SESSION_PEERIDS"

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz p1, :cond_0

    .line 107
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMClient$1;

    .end local v1    # "receiver":Landroid/content/BroadcastReceiver;
    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    .line 114
    .restart local v1    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v2, v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 115
    return-void
.end method

.method protected removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    return-void
.end method

.method protected sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 6
    .param p1, "dataAsString"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "operation"    # Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .prologue
    .line 311
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v1

    .line 313
    .local v1, "requestId":I
    if-eqz p2, :cond_0

    .line 314
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 317
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.avoscloud.im.v2.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    const-string v2, "conversation.data"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    :cond_1
    const-string v2, "conversation.client"

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v2, "conversation.requestId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v2, "conversation.operation"

    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 327
    return-void
.end method
