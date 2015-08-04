.class public Lcom/avos/avoscloud/im/v2/AVIMMessageManager;
.super Ljava/lang/Object;
.source "AVIMMessageManager.java"


# static fields
.field static conversationEventHandler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

.field static defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

.field static messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/im/v2/MessageHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field static messageTypesRepository:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageTypesRepository:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 36
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 37
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 38
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 39
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 40
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p1, "x1"    # Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V

    return-void
.end method

.method protected static getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->conversationEventHandler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    return-object v0
.end method

.method private static getMessageType(Ljava/lang/String;)I
    .locals 3
    .param p0, "messageContent"    # Ljava/lang/String;

    .prologue
    .line 222
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 223
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "_lctype"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 228
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v2

    .line 228
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 5
    .param p0, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->getMessageType(Ljava/lang/String;)I

    move-result v1

    .line 200
    .local v1, "messageType":I
    if-eqz v1, :cond_0

    .line 201
    sget-object v3, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageTypesRepository:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 202
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;>;"
    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 205
    .local v2, "typedMessage":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setConversationId(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReceiptTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setReceiptTimestamp(J)V

    .line 208
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 209
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 212
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageIOType()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    move-object p0, v2

    .line 217
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;>;"
    .end local v2    # "typedMessage":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    :cond_0
    :goto_0
    return-object p0

    .line 214
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected static processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 3
    .param p0, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p1, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p0

    .line 126
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 127
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v0

    .line 128
    .local v0, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    move-object v1, p0

    .line 130
    .local v1, "finalMessageObject":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$1;

    invoke-direct {v2, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->fetchInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    .line 140
    .end local v1    # "finalMessageObject":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V

    goto :goto_0
.end method

.method protected static processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 3
    .param p0, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p1, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;

    .prologue
    .line 143
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p0

    .line 144
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 145
    move-object v1, p0

    .line 146
    .local v1, "finalMessageObject":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v0

    .line 147
    .local v0, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$2;

    invoke-direct {v2, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->fetchInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V

    goto :goto_0
.end method

.method public static registerAVIMMessageType(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;>;"
    const-class v4, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    .line 50
    .local v3, "type":Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    if-nez v3, :cond_0

    .line 51
    new-instance v4, Ljava/lang/annotation/IncompleteAnnotationException;

    const-class v5, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    const-string v6, "type"

    invoke-direct {v4, v5, v6}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_0
    invoke-interface {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageType;->type()I

    move-result v2

    .line 55
    .local v2, "messageTypeValue":I
    sget-object v4, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageTypesRepository:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    :try_start_0
    const-string v4, "computeFieldAttribute"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 58
    .local v1, "initializeMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "initializeMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    const-string v4, "failed to initialize message Fields"

    invoke-static {v4}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static registerDefaultMessageHandler(Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;)V
    .locals 0
    .param p0, "handler"    # Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    .prologue
    .line 75
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    .line 76
    return-void
.end method

.method public static registerMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/MessageHandler",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    .local p1, "handler":Lcom/avos/avoscloud/im/v2/MessageHandler;, "Lcom/avos/avoscloud/im/v2/MessageHandler<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v0, "handlerSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/avos/avoscloud/im/v2/MessageHandler;>;"
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 89
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/avos/avoscloud/im/v2/MessageHandler;>;"
    if-eqz v1, :cond_0

    .line 90
    move-object v0, v1

    .line 92
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method private static retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V
    .locals 10
    .param p0, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p1, "conversation"    # Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .param p2, "receipt"    # Z

    .prologue
    const v9, 0xc351

    const v8, 0xc350

    const/4 v7, 0x0

    .line 163
    const/4 v5, 0x0

    .line 164
    .local v5, "messageProcessed":Z
    sget-object v6, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 165
    .local v0, "clazzKey":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 166
    sget-object v6, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 167
    .local v2, "handlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/avos/avoscloud/im/v2/MessageHandler;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 168
    const/4 v5, 0x1

    .line 170
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/MessageHandler;

    .line 171
    .local v1, "handler":Lcom/avos/avoscloud/im/v2/MessageHandler;
    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {v1, v9, v7, p0, p1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v1, v8, v7, p0, p1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    .end local v0    # "clazzKey":Ljava/lang/Class;
    .end local v1    # "handler":Lcom/avos/avoscloud/im/v2/MessageHandler;
    .end local v2    # "handlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/avos/avoscloud/im/v2/MessageHandler;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    if-nez v5, :cond_4

    sget-object v6, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    if-eqz v6, :cond_4

    .line 182
    if-eqz p2, :cond_5

    .line 183
    sget-object v6, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    invoke-virtual {v6, v9, v7, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    :cond_4
    :goto_1
    return-void

    .line 186
    :cond_5
    sget-object v6, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    invoke-virtual {v6, v8, v7, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static setConversationEventHandler(Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;)V
    .locals 0
    .param p0, "handler"    # Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    .prologue
    .line 117
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->conversationEventHandler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    .line 118
    return-void
.end method

.method public static unregisterMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/MessageHandler",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    .local p1, "handler":Lcom/avos/avoscloud/im/v2/MessageHandler;, "Lcom/avos/avoscloud/im/v2/MessageHandler<*>;"
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 104
    .local v0, "handlerSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/avos/avoscloud/im/v2/MessageHandler;>;"
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-void
.end method
