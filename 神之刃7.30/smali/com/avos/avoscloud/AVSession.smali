.class public Lcom/avos/avoscloud/AVSession;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/Session;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVSession$SignatureTask;,
        Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;
    }
.end annotation


# static fields
.field static final MAX_DIRECT_MESSAGE_LENGTH:I = 0x1388

.field private static signatureFactory:Lcom/avos/avoscloud/SignatureFactory;


# instance fields
.field private allPeerIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

.field private final currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

.field private final messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field final onlinePeerIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/PendingMessageCache",
            "<",
            "Lcom/avos/avoscloud/PendingMessageCache$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final selfId:Ljava/lang/String;

.field final sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVInternalConversation;",
            ">;"
        }
    .end annotation
.end field

.field final sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Group;",
            ">;"
        }
    .end annotation
.end field

.field final sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

.field final sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final timeoutInSecs:I

.field v2Session:Z

.field private final websocketListener:Lcom/avos/avoscloud/AVSessionWebSocketListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/AVInternalSessionListener;)V
    .locals 4
    .param p1, "selfId"    # Ljava/lang/String;
    .param p2, "sessionListener"    # Lcom/avos/avoscloud/AVInternalSessionListener;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lcom/avos/avoscloud/AVSession;->timeoutInSecs:I

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    .line 86
    new-instance v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVSessionWebSocketListener;-><init>(Lcom/avos/avoscloud/AVSession;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->websocketListener:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    .line 89
    new-instance v0, Lcom/avos/avoscloud/PendingMessageCache;

    const-class v1, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/PendingMessageCache;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    .line 90
    new-instance v0, Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVIMOperationQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    .line 91
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVSession;->messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/AVSession;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private genSessionCommand(Ljava/util/List;Ljava/lang/String;)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 2
    .param p2, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    return-object v0
.end method

.method static setStaticSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/avos/avoscloud/SignatureFactory;

    .prologue
    .line 79
    sput-object p0, Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    .line 80
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->clear()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->clear()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avospush/session/MessageReceiptCache;->clean(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method protected clearOnlinePeerIds()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 431
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 182
    const v0, -0x10001

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVSession;->close(I)V

    .line 183
    return-void
.end method

.method protected close(I)V
    .locals 6
    .param p1, "requestId"    # I

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    .line 226
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "close"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, p1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/16 v4, 0x2715

    move-object v2, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    goto :goto_0

    .line 214
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected conversationQuery(Ljava/util/Map;I)V
    .locals 9
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 450
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v0, "Connection Lost"

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 452
    .local v6, "se":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v8, p2, v6, v5}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 472
    .end local v6    # "se":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string v0, "where"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 458
    .local v1, "whereParams":Lcom/alibaba/fastjson/JSONObject;
    const-string v0, "order"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    .local v2, "sortParams":Ljava/lang/String;
    const-string v0, "skip"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "skip"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 463
    .local v3, "offset":I
    :goto_1
    const-string v0, "limit"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "limit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 467
    .local v4, "limit":I
    :goto_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v5, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v5}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v5

    iget-object v7, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-static {v5, v7, v8, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 470
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/ConversationQueryPacket;->getConversationQueryPacket(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;III)Lcom/avos/avospush/session/ConversationQueryPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0

    .line 459
    .end local v3    # "offset":I
    .end local v4    # "limit":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 463
    .restart local v3    # "offset":I
    :cond_2
    const/16 v4, 0xa

    goto :goto_2
.end method

.method public createConversation(Ljava/util/List;Ljava/util/Map;ZI)V
    .locals 10
    .param p3, "isTransient"    # Z
    .param p4, "requestId"    # I
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
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v0, "Connection Lost"

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 540
    .local v3, "se":Ljava/lang/RuntimeException;
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    move-object v2, p0

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    .line 569
    .end local v3    # "se":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v4, Lcom/avos/avoscloud/AVSession$3;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/avos/avoscloud/AVSession$3;-><init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;Ljava/util/Map;ZI)V

    .line 568
    .local v4, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v4}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getAllPeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;
    .locals 3
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVInternalConversation;

    .line 521
    .local v0, "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 527
    :cond_0
    :goto_0
    return-object v1

    .line 524
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVInternalConversation;

    .end local v0    # "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    invoke-direct {v0, p1, p0}, Lcom/avos/avoscloud/AVInternalConversation;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V

    .line 525
    .restart local v0    # "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVInternalConversation;

    .line 527
    .local v1, "elderObject":Lcom/avos/avoscloud/AVInternalConversation;
    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public getGroup()Lcom/avos/avoscloud/Group;
    .locals 3

    .prologue
    .line 515
    new-instance v0, Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/avos/avoscloud/AVInternalGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V

    .line 516
    .local v0, "group":Lcom/avos/avoscloud/AVInternalGroup;
    return-object v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getGroup()Lcom/avos/avoscloud/Group;

    move-result-object v2

    .line 509
    :goto_0
    return-object v2

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/Group;

    goto :goto_0

    .line 507
    :cond_1
    new-instance v1, Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p0}, Lcom/avos/avoscloud/AVInternalGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V

    .line 508
    .local v1, "group":Lcom/avos/avoscloud/Group;
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Group;

    .line 509
    .local v0, "elderObject":Lcom/avos/avoscloud/Group;
    if-nez v0, :cond_2

    .end local v1    # "group":Lcom/avos/avoscloud/Group;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "group":Lcom/avos/avoscloud/Group;
    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 1

    .prologue
    .line 597
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getOnlinePeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v0, "onlineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 395
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSelfPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method public getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->websocketListener:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    return-object v0
.end method

.method public isOnline(Ljava/lang/String;)Z
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWatching(Ljava/lang/String;)Z
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "selfId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;)V

    .line 107
    return-void
.end method

.method public open(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v0, -0x10001

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;I)V

    .line 112
    return-void
.end method

.method protected open(Ljava/util/List;I)V
    .locals 8
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v7, 0x2714

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    :try_start_0
    const-string v2, "Null id in session id list."

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 118
    const v2, -0x10001

    if-eq p2, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    .line 120
    invoke-static {}, Lcom/avos/avoscloud/PushService;->isPushConnectionBroken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v2, "Connection Lost"

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2714

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    .line 178
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 118
    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVSession;->watchPeers(Ljava/util/List;)Z

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p2}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    move-object v2, p0

    move v4, v7

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    goto :goto_1

    .line 136
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    new-instance v6, Lcom/avos/avoscloud/AVSession$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/avos/avoscloud/AVSession$1;-><init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;I)V

    .line 172
    .local v6, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v6}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected queryOnlinePeers(Ljava/util/List;I)V
    .locals 4
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const-string v2, "query"

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3, p2}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 446
    .local v0, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 447
    return-void
.end method

.method public queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/avos/avoscloud/OnlinePeerQueryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/OnlinePeerQueryListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v0, -0x10001

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVSession;->queryOnlinePeers(Ljava/util/List;I)V

    .line 440
    return-void
.end method

.method protected removeConversation(Ljava/lang/String;)V
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionConversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 11
    .param p1, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 238
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v0

    const-string v1, "Null id in session id list."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is not open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :catch_0
    move-exception v8

    .line 277
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, v8}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    .line 279
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    new-instance v10, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v10}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 246
    .local v10, "se":Lcom/avos/avoscloud/SessionPausedException;
    sget-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->SEND_MESSAGE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v10, v0}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 247
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    .line 248
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/avos/avoscloud/SessionPausedException;->setMessage(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    .line 250
    throw v10

    .line 254
    .end local v10    # "se":Lcom/avos/avoscloud/SessionPausedException;
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v9

    .line 256
    .local v9, "requestId":I
    new-instance v7, Lcom/avos/avospush/session/DirectMessagePacket;

    invoke-direct {v7}, Lcom/avos/avospush/session/DirectMessagePacket;-><init>()V

    .line 257
    .local v7, "dmp":Lcom/avos/avospush/session/DirectMessagePacket;
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setAppId(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setPeerId(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setMsg(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setTransient(Z)V

    .line 261
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setToPeerIds(Ljava/util/Collection;)V

    .line 262
    invoke-virtual {v7, v9}, Lcom/avos/avospush/session/DirectMessagePacket;->setRequestId(I)V

    .line 263
    iget-boolean v0, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setReceipt(Z)V

    .line 264
    invoke-virtual {v7}, Lcom/avos/avospush/session/DirectMessagePacket;->toJson()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v6, v0

    .line 265
    .local v6, "commandLength":I
    const/16 v0, 0x1388

    if-le v6, v0, :cond_3

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Message exceeds message length maximum limit"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_3
    invoke-static {v7}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 269
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/PendingMessageCache$Message;->getMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lcom/avos/avoscloud/AVSession;->storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected setAllPeerIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "allPeerIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 423
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    .line 425
    :cond_0
    return-void
.end method

.method public setMessageTimeout(I)V
    .locals 0
    .param p1, "timeoutSecs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    return-void
.end method

.method protected setServerAckReceived(J)V
    .locals 1
    .param p1, "lastAckReceivedTimestamp"    # J

    .prologue
    .line 434
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->lastServerAckReceived:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 435
    return-void
.end method

.method protected storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;)V
    .locals 1
    .param p1, "cacheMessage"    # Lcom/avos/avoscloud/PendingMessageCache$Message;

    .prologue
    .line 282
    const v0, -0x10001

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVSession;->storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V

    .line 283
    return-void
.end method

.method protected storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V
    .locals 5
    .param p1, "cacheMessage"    # Lcom/avos/avoscloud/PendingMessageCache$Message;
    .param p2, "requestId"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 287
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->messageTimeoutScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession;->currentSwitcher:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/avos/avoscloud/AVSession$SendMessageTimeoutCheck;-><init>(Lcom/avos/avoscloud/AVSession;Z)V

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v1, v2, v3, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    goto :goto_0
.end method

.method public declared-synchronized unwatchPeers(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    :goto_0
    monitor-exit p0

    return-void

    .line 363
    :cond_0
    :try_start_1
    const-string v5, "Null id in session id list."

    invoke-static {p1, v5}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 364
    iget-object v5, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    new-instance v2, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v2}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 366
    .local v2, "se":Lcom/avos/avoscloud/SessionPausedException;
    sget-object v5, Lcom/avos/avoscloud/SessionPausedException$Actions;->UNWATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v2, v5}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 367
    invoke-virtual {v2, p1}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    .line 369
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    .end local v2    # "se":Lcom/avos/avoscloud/SessionPausedException;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p0, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 372
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 373
    iget-object v5, p0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 375
    new-instance v4, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {v4}, Lcom/avos/avoscloud/PendingMessageCache$Message;-><init>()V

    .line 376
    .local v4, "watchMessage":Lcom/avos/avoscloud/PendingMessageCache$Message;
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v3

    .line 377
    .local v3, "watchId":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    .line 378
    iput-object p1, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    .line 379
    iget-object v5, p0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v5, v4}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 381
    iget-object v5, p0, Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;

    const-string v6, "remove"

    const/4 v7, 0x0

    invoke-static {v5, p1, v6, v7, v3}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v1

    .line 384
    .local v1, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized watchPeers(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 352
    :goto_0
    monitor-exit p0

    return v3

    .line 305
    :cond_0
    :try_start_1
    const-string v3, "Null id in session id list."

    invoke-static {p1, v3}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    new-instance v2, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v2}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 309
    .local v2, "se":Lcom/avos/avoscloud/SessionPausedException;
    sget-object v3, Lcom/avos/avoscloud/SessionPausedException$Actions;->WATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 310
    invoke-virtual {v2, p1}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    .line 311
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .end local v2    # "se":Lcom/avos/avoscloud/SessionPausedException;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3, v5, p0, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    .line 352
    goto :goto_0

    .line 313
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    new-instance v0, Lcom/avos/avoscloud/AVSession$2;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVSession$2;-><init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;)V

    .line 347
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v6, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v6, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Void;

    const/4 v8, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v7, v8

    invoke-virtual {v6, v7}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v5

    .line 349
    goto :goto_0

    .line 300
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
