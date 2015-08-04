.class Lcom/avos/avoscloud/AVSessionWebSocketListener;
.super Ljava/lang/Object;
.source "AVSessionWebSocketListener.java"

# interfaces
.implements Lcom/avos/avospush/push/AVWebSocketListener;


# static fields
.field private static final CMD_STATUS_OFF:Ljava/lang/String; = "off"

.field private static final CMD_STATUS_ON:Ljava/lang/String; = "on"

.field private static final FROM_PEER_ID:Ljava/lang/String; = "fromPeerId"

.field private static final MSG:Ljava/lang/String; = "msg"

.field private static final ONLINE_SESSION_PEER_IDS:Ljava/lang/String; = "onlineSessionPeerIds"

.field private static final SESSION_MESSASGE_DEPOT:Ljava/lang/String; = "com.avos.push.session.message."

.field private static final SESSION_PEER_IDS:Ljava/lang/String; = "sessionPeerIds"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private final depot:Lcom/avos/avospush/session/StaleMessageDepot;

.field session:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVSession;)V
    .locals 3
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    .line 39
    new-instance v0, Lcom/avos/avospush/session/StaleMessageDepot;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.avos.push.session.message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avospush/session/StaleMessageDepot;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    .line 40
    return-void
.end method

.method private genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 463
    new-instance v0, Lcom/avos/avospush/session/SessionAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/SessionAckPacket;-><init>()V

    .line 464
    .local v0, "sap":Lcom/avos/avospush/session/SessionAckPacket;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionAckPacket;->setAppId(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionAckPacket;->setPeerId(Ljava/lang/String;)V

    .line 466
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/SessionAckPacket;->setMessageId(Ljava/lang/String;)V

    .line 470
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onAckCommand(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/avos/avoscloud/AVSession;->setServerAckReceived(J)V

    .line 320
    const-string v9, "i"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 321
    .local v6, "requestId":I
    const-string v9, "t"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 322
    .local v7, "timestamp":J
    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v9, v9, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 323
    .local v3, "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    iget-object v9, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 324
    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v10, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v0

    .line 325
    .local v0, "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v9, v9, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v9, v6}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 326
    const-string v9, "uid"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 327
    .local v5, "msgId":Ljava/lang/String;
    invoke-virtual {v0, v6, v5, v7, v8}, Lcom/avos/avoscloud/AVInternalConversation;->onMessageSent(ILjava/lang/String;J)V

    .line 328
    iget-boolean v9, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->requestReceipt:Z

    if-eqz v9, :cond_0

    .line 329
    iput-wide v7, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->timestamp:J

    .line 330
    iput-object v5, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    .line 331
    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v9}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5, v3}, Lcom/avos/avospush/session/MessageReceiptCache;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    .end local v0    # "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    .end local v5    # "msgId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v9, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 334
    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v10, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVInternalGroup;

    .line 335
    .local v2, "group":Lcom/avos/avoscloud/AVInternalGroup;
    new-instance v4, Lcom/avos/avoscloud/AVMessage;

    iget-object v9, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Z)V

    .line 336
    .local v4, "msg":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual {v4, v7, v8}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 337
    sget-object v9, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v9, v2, v4}, Lcom/avos/avoscloud/AVInternalGroup;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 340
    .end local v2    # "group":Lcom/avos/avoscloud/AVInternalGroup;
    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    :cond_2
    :try_start_0
    new-instance v4, Lcom/avos/avoscloud/AVMessage;

    iget-object v9, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    iget-object v10, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    const/4 v11, 0x0

    invoke-direct {v4, v9, v10, v11}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 341
    .restart local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual {v4, v7, v8}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 342
    iput-wide v7, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->timestamp:J

    .line 343
    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v9, v9, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v10, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v9, v10, v11, v4}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    .line 344
    iget-boolean v9, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->requestReceipt:Z

    if-eqz v9, :cond_0

    .line 345
    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v9}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v10

    const-string v9, "uid"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v10, v9, v3}, Lcom/avos/avospush/session/MessageReceiptCache;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v4    # "msg":Lcom/avos/avoscloud/AVMessage;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v9, v9, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v10, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v9, v10, v11, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAckReqCommand(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public onConversationCommand(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "cmd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "results"

    const-string v7, "op"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 414
    const-string v6, "i"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 417
    .local v5, "requestId":I
    iget-object v6, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v6, v6, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v6, v5}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v3

    .line 418
    .local v3, "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    iget v6, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v7, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v7}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 419
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVSessionWebSocketListener;->onConversationQuery(Ljava/util/Map;)V

    .line 451
    .end local v3    # "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    :cond_0
    :goto_0
    return-void

    .line 422
    .end local v5    # "requestId":I
    :cond_1
    const/4 v1, 0x0

    .line 423
    .local v1, "conversationId":Ljava/lang/String;
    const v5, -0x10001

    .line 424
    .restart local v5    # "requestId":I
    const-string v6, "i"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 425
    const-string v6, "i"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 427
    :cond_2
    const-string v6, "op"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 429
    .local v2, "conversationOP":Ljava/lang/String;
    const/4 v4, 0x0

    .line 430
    .local v4, "originOperation":Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    const-string v6, "added"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "removed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "updated"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "result"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const v6, -0x10001

    if-eq v5, v6, :cond_4

    .line 436
    iget-object v6, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v6, v6, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v6, v5}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v3

    .line 437
    .restart local v3    # "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    iget v6, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v6}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v4

    .line 438
    iget-object v1, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    .line 446
    .end local v3    # "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    :goto_1
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 447
    iget-object v6, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v6, v1}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v0

    .line 448
    .local v0, "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    invoke-virtual {v0, v4, v5, p1}, Lcom/avos/avoscloud/AVInternalConversation;->processConversationCommandFromServer(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;ILjava/util/Map;)V

    goto :goto_0

    .line 440
    .end local v0    # "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    :cond_4
    const-string v6, "started"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 441
    iget-object v6, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v6, v6, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v6, v5}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 443
    :cond_5
    const-string v6, "cid"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "conversationId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "conversationId":Ljava/lang/String;
    goto :goto_1
.end method

.method public onConversationQuery(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "i"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 456
    .local v0, "requestId":I
    const-string v2, "results"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    .line 458
    .local v1, "resultData":Ljava/io/Serializable;
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 460
    return-void
.end method

.method public onDirectCommand(Ljava/util/HashMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 175
    .local v13, "msg":Ljava/lang/String;
    const-string v4, "fromPeerId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 176
    .local v3, "fromPeerId":Ljava/lang/String;
    const-string v4, "roomId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 177
    .local v15, "roomId":Ljava/lang/String;
    const-string v4, "cid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, "conversationId":Ljava/lang/String;
    const-string v4, "timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 180
    .local v16, "timestamp":Ljava/lang/Long;
    const-string v4, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 181
    .local v12, "messageId":Ljava/lang/String;
    const-string v4, "transient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "transient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 184
    .local v11, "isTransient":Z
    :goto_0
    if-nez v11, :cond_0

    .line 185
    :try_start_0
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v12}, Lcom/avos/avospush/session/ConversationAckPacket;->getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/ConversationAckPacket;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 193
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    invoke-virtual {v4, v12}, Lcom/avos/avospush/session/StaleMessageDepot;->putStableMessage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v8

    .line 196
    .local v8, "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 197
    .local v1, "message":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    const-string v4, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 198
    .local v14, "msgId":Ljava/lang/String;
    invoke-virtual {v1, v13}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 199
    invoke-static {v1, v12}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->setupMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v8, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 220
    .end local v1    # "message":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .end local v8    # "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    .end local v14    # "msgId":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 181
    .end local v11    # "isTransient":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 189
    .restart local v11    # "isTransient":Z
    :cond_3
    const-string v4, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/avos/avoscloud/AVSessionWebSocketListener;->genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v9

    .line 218
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v4, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4, v5, v6, v9}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 202
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-static {v15}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 203
    new-instance v1, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v1, v13}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "message":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/AVMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v4, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4, v5, v6, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_2

    .line 209
    .end local v1    # "message":Lcom/avos/avoscloud/AVMessage;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4, v15}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v10

    check-cast v10, Lcom/avos/avoscloud/AVInternalGroup;

    .line 210
    .local v10, "group":Lcom/avos/avoscloud/AVInternalGroup;
    new-instance v1, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v1, v13}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v1    # "message":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 212
    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/AVMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 213
    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10, v4, v10, v1}, Lcom/avos/avoscloud/AVInternalGroup;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onError(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "i"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "i"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "i"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, -0x10001

    if-eq v5, v6, :cond_1

    .line 478
    const-string v5, "i"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 480
    .local v4, "requestId":I
    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v5, v5, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v5, v4}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    .line 481
    .local v1, "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    iget v5, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v6, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v6}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 482
    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v5, v5, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 484
    :cond_0
    const-string v5, "code"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 485
    .local v0, "code":I
    const-string v5, "reason"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 487
    .local v3, "reason":Ljava/lang/String;
    iget v5, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v5}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v2

    .line 489
    .local v2, "operation":Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v5}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/avos/avoscloud/AVException;

    invoke-direct {v7, v0, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-static {v5, v6, v4, v7, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 492
    .end local v0    # "code":I
    .end local v1    # "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    .end local v2    # "operation":Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "requestId":I
    :cond_1
    return-void
.end method

.method public onGroupCommand(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/util/Map;)V

    .line 369
    :cond_0
    const-string v2, "roomId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 371
    .local v1, "groupId":Ljava/lang/String;
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVInternalGroup;

    .line 372
    .local v0, "group":Lcom/avos/avoscloud/AVInternalGroup;
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVInternalGroup;->processGroupCommand(Ljava/util/Map;)V

    .line 373
    return-void
.end method

.method public onHistoryMessageQuery(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "i"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "i"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "i"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, -0x10001

    if-eq v3, v4, :cond_0

    .line 499
    const-string v3, "i"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 501
    .local v2, "requestId":I
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    .line 502
    .local v1, "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v0

    .line 503
    .local v0, "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    const-string v3, "op"

    const-string v4, "logs"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0, v3, v2, p1}, Lcom/avos/avoscloud/AVInternalConversation;->processConversationCommandFromServer(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;ILjava/util/Map;)V

    .line 508
    .end local v0    # "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    .end local v1    # "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    .end local v2    # "requestId":I
    :cond_0
    return-void
.end method

.method public onListenerAdded(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 355
    if-eqz p1, :cond_1

    .line 356
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "web socket opened, send session open."

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSessionWebSocketListener;->onWebSocketOpen()V

    .line 361
    :cond_1
    return-void
.end method

.method public onListenerRemoved()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public onMessageReceipt(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v3, "t"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 384
    .local v12, "timestamp":Ljava/lang/Long;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    const-string v3, "id"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/avos/avospush/session/MessageReceiptCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 387
    .local v11, "messageCache":Ljava/lang/Object;
    if-nez v11, :cond_0

    .line 408
    .end local v11    # "messageCache":Ljava/lang/Object;
    .end local v12    # "timestamp":Ljava/lang/Long;
    :goto_0
    return-void

    .line 390
    .restart local v11    # "messageCache":Ljava/lang/Object;
    .restart local v12    # "timestamp":Ljava/lang/Long;
    :cond_0
    move-object v0, v11

    check-cast v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-object v10, v0

    .line 391
    .local v10, "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    iget-object v3, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 393
    iget-object v2, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    .line 394
    .local v2, "conversationId":Ljava/lang/String;
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->timestamp:J

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 396
    .local v1, "msg":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    iget-object v3, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 397
    iget-object v3, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 398
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v8

    .line 399
    .local v8, "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    invoke-virtual {v8, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    .end local v1    # "msg":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .end local v2    # "conversationId":Ljava/lang/String;
    .end local v8    # "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    .end local v10    # "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    .end local v11    # "messageCache":Ljava/lang/Object;
    .end local v12    # "timestamp":Ljava/lang/Long;
    :catch_0
    move-exception v9

    .line 406
    .local v9, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v4, v5, v9}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 401
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    .restart local v11    # "messageCache":Ljava/lang/Object;
    .restart local v12    # "timestamp":Ljava/lang/Long;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/avos/avoscloud/AVMessage;

    iget-object v3, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    iget-object v4, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 402
    .local v1, "msg":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/avos/avoscloud/AVMessage;->setReceiptTimestamp(J)V

    .line 403
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v4, v5, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessageDelivered(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onPresenceCommand(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "status"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "status":Ljava/lang/String;
    const-string v3, "sessionPeerIds"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 152
    .local v1, "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v4, v5, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v4, v5, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 164
    :try_start_1
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v4, v5, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 166
    :catch_1
    move-exception v0

    .line 167
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v4, v5, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSessionCommand(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cmd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const v10, -0x10001

    .line 224
    const-string v7, "op"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    .local v2, "op":Ljava/lang/String;
    const-string v7, "opened"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 226
    const-string v7, "onlineSessionPeerIds"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 227
    const-string v7, "onlineSessionPeerIds"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 228
    .local v1, "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 229
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    .line 237
    .end local v1    # "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 238
    const v3, -0x10001

    .line 239
    .local v3, "requestId":I
    const-string v7, "i"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 240
    const-string v7, "i"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 242
    if-eq v3, v10, :cond_1

    .line 243
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v7, v3}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 246
    :cond_1
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9, v3}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    .line 305
    .end local v3    # "requestId":I
    :cond_2
    :goto_0
    return-void

    .line 249
    :cond_3
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 250
    const-string v7, "session resumed"

    invoke-static {v7}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 252
    :cond_4
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v7, "added"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 258
    const-string v7, "i"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 259
    .local v5, "watchId":I
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 261
    .local v6, "watchMessage":Lcom/avos/avoscloud/PendingMessageCache$Message;
    const-string v7, "onlineSessionPeerIds"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 262
    .restart local v1    # "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    :try_start_1
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v10, v6, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    invoke-virtual {v7, v8, v9, v10}, Lcom/avos/avoscloud/AVInternalSessionListener;->onPeersWatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    .line 267
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 269
    :catch_1
    move-exception v0

    .line 270
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "installationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "watchId":I
    .end local v6    # "watchMessage":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :cond_6
    const-string v7, "query-result"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 274
    const-string v7, "onlineSessionPeerIds"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 276
    .local v4, "sessionPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v3, -0x10001

    .line 277
    .restart local v3    # "requestId":I
    const-string v7, "i"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "i"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 278
    const-string v7, "i"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 280
    :cond_7
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9, v4, v3}, Lcom/avos/avoscloud/AVInternalSessionListener;->onOnlineQuery(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 283
    .end local v3    # "requestId":I
    .end local v4    # "sessionPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const-string v7, "removed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 284
    const-string v7, "i"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 285
    .restart local v5    # "watchId":I
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 288
    .restart local v6    # "watchMessage":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :try_start_2
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v10, v6, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    invoke-virtual {v7, v8, v9, v10}, Lcom/avos/avoscloud/AVInternalSessionListener;->onPeersUnwatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    .line 290
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v10, v6, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    invoke-virtual {v7, v8, v9, v10}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 292
    :catch_2
    move-exception v0

    .line 293
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "watchId":I
    .end local v6    # "watchMessage":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :cond_9
    const-string v7, "closed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 296
    const v3, -0x10001

    .line 297
    .restart local v3    # "requestId":I
    const-string v7, "i"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 298
    const-string v7, "i"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 299
    if-eq v3, v10, :cond_a

    .line 300
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v7, v3}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 303
    :cond_a
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9, v3}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    goto/16 :goto_0
.end method

.method public onWebSocketClose()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    .line 108
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7}, Lcom/avos/avoscloud/AVSession;->clearOnlinePeerIds()V

    .line 109
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 111
    :try_start_0
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V

    .line 114
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v7}, Lcom/avos/avoscloud/PendingMessageCache;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 115
    :goto_0
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v7}, Lcom/avos/avoscloud/PendingMessageCache;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 116
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v7}, Lcom/avos/avoscloud/PendingMessageCache;->poll()Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 117
    .local v4, "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    iget-object v7, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 118
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v8, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVInternalGroup;

    .line 119
    .local v2, "group":Lcom/avos/avoscloud/AVInternalGroup;
    sget-object v7, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    new-instance v8, Lcom/avos/avoscloud/AVMessage;

    iget-object v9, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v7, v2, v8}, Lcom/avos/avoscloud/AVInternalGroup;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v2    # "group":Lcom/avos/avoscloud/AVInternalGroup;
    .end local v4    # "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7, v8, v9, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 121
    .restart local v4    # "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :cond_1
    :try_start_1
    iget-object v7, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 122
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v8, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v0

    .line 123
    .local v0, "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v7}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    iget-object v9, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Connection Lost"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0

    .line 127
    .end local v0    # "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    :cond_2
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    new-instance v10, Lcom/avos/avoscloud/AVMessage;

    iget-object v11, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    iget-object v12, v4, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v7, v8, v9, v10}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 132
    .end local v4    # "m":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :cond_3
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v7}, Lcom/avos/avoscloud/AVIMOperationQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 134
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    iget-object v7, v7, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 135
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    iget-object v7, v7, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 136
    .local v6, "requestId":I
    iget-object v7, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v7, v7, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v7, v6}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v5

    .line 137
    .local v5, "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    iget-object v7, v5, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->sessionId:Ljava/lang/String;

    iget-object v8, v5, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Connection Lost"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget v10, v5, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v10}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v10

    invoke-static {v7, v8, v6, v9, v10}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onWebSocketOpen()V
    .locals 5

    .prologue
    .line 53
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "web socket opened, send session open."

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 58
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;-><init>(Lcom/avos/avoscloud/AVSessionWebSocketListener;)V

    .line 93
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;

    invoke-direct {v2, p0, v0}, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;-><init>(Lcom/avos/avoscloud/AVSessionWebSocketListener;Lcom/avos/avoscloud/SignatureCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :cond_1
    :goto_0
    return-void

    .line 101
    .restart local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :cond_2
    new-instance v2, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
