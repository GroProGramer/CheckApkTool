.class Lcom/avos/avoscloud/AVInternalConversation;
.super Ljava/lang/Object;
.source "AVInternalConversation.java"


# instance fields
.field private conversationGene:Ljava/lang/String;

.field conversationId:Ljava/lang/String;

.field session:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    .line 38
    iput-object p1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalConversation;->getConversationGeneString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z
    .locals 3
    .param p1, "operation"    # Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .param p2, "requestId"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection Lost"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "se":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v2, p2, v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 239
    const/4 v1, 0x0

    .line 241
    .end local v0    # "se":Ljava/lang/RuntimeException;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getConversationGeneString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 470
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 472
    .local v0, "conversationGeneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "conversation.client"

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v1, "convesration.id"

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    .line 476
    .end local v0    # "conversationGeneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    return-object v1
.end method

.method private onInfoUpdated(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 379
    return-void
.end method


# virtual methods
.method public addMembers(Ljava/util/List;I)V
    .locals 5
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
    .line 43
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, p2}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVInternalConversation$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVInternalConversation$1;-><init>(Lcom/avos/avoscloud/AVInternalConversation;Ljava/util/List;I)V

    .line 73
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
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

.method public getMemberCount(I)V
    .locals 7
    .param p1, "requestId"    # I

    .prologue
    const/4 v2, 0x0

    .line 223
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v3, v4, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 230
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-string v3, "count"

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method

.method public join(I)V
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 112
    new-instance v0, Lcom/avos/avoscloud/AVInternalConversation$3;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVInternalConversation$3;-><init>(Lcom/avos/avoscloud/AVInternalConversation;I)V

    .line 140
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v2, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void
.end method

.method public kickMembers(Ljava/util/List;I)V
    .locals 5
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
    .line 77
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, p2}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVInternalConversation$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVInternalConversation$2;-><init>(Lcom/avos/avoscloud/AVInternalConversation;Ljava/util/List;I)V

    .line 107
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
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

.method public mute(I)V
    .locals 7
    .param p1, "requestId"    # I

    .prologue
    const/4 v2, 0x0

    .line 201
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v3, v4, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 207
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-string v3, "mute"

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method

.method onConversationCreated(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 354
    return-void
.end method

.method onHistoryMessageQuery(Ljava/util/ArrayList;I)V
    .locals 4
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callbackHistoryMessages"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 409
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v2, p2, v0, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 411
    return-void
.end method

.method onInvited(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 364
    return-void
.end method

.method onInvitedToConversation(Ljava/lang/String;)V
    .locals 5
    .param p1, "invitedBy"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    .line 416
    .local v2, "handler":Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    if-eqz v2, :cond_0

    .line 417
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 418
    .local v0, "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 420
    .local v1, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    const v3, 0xc358

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    .end local v0    # "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    .end local v1    # "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    :cond_0
    return-void
.end method

.method onJoined(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 359
    return-void
.end method

.method onKicked(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 369
    return-void
.end method

.method onKickedFromConversation(Ljava/lang/String;)V
    .locals 5
    .param p1, "invitedBy"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    .line 426
    .local v2, "handler":Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    if-eqz v2, :cond_0

    .line 427
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 428
    .local v0, "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 429
    .local v1, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    const v3, 0xc359

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    .end local v0    # "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    .end local v1    # "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    :cond_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession;->removeConversation(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method onMemberCount(II)V
    .locals 4
    .param p1, "count"    # I
    .param p2, "requestId"    # I

    .prologue
    .line 392
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 393
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callbackMemberCount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v2, p2, v0, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 396
    return-void
.end method

.method onMembersJoined(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "invitedBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    .line 438
    .local v2, "handler":Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    if-eqz v2, :cond_0

    .line 439
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 440
    .local v0, "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 441
    .local v1, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    const v3, 0xc355

    invoke-virtual {v2, v3, p2, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    .end local v0    # "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    .end local v1    # "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    :cond_0
    return-void
.end method

.method onMembersLeft(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "removedBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v2

    .line 448
    .local v2, "handler":Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    if-eqz v2, :cond_0

    .line 449
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 450
    .local v0, "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 452
    .local v1, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    const v3, 0xc354

    invoke-virtual {v2, v3, p2, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 454
    .end local v0    # "client":Lcom/avos/avoscloud/im/v2/AVIMClient;
    .end local v1    # "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    :cond_0
    return-void
.end method

.method onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .prologue
    .line 457
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeIn:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V

    .line 458
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    .line 460
    return-void
.end method

.method onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    .line 465
    return-void
.end method

.method onMessageSent(ILjava/lang/String;J)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .prologue
    .line 399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callbackMessageTimeStamp"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 401
    const-string v1, "callbackMessageId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v2, p1, v0, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 404
    return-void
.end method

.method onMuted(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 384
    return-void
.end method

.method onQuit(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 374
    return-void
.end method

.method onUnmuted(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 389
    return-void
.end method

.method public processConversationCommandFromClient(ILjava/util/Map;I)V
    .locals 8
    .param p1, "operationCode"    # I
    .param p3, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 248
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->join(I)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 250
    const-string v0, "conversation.member"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 251
    .local v7, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v7, p3}, Lcom/avos/avoscloud/AVInternalConversation;->addMembers(Ljava/util/List;I)V

    goto :goto_0

    .line 252
    .end local v7    # "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 253
    const-string v0, "conversation.member"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 254
    .restart local v7    # "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v7, p3}, Lcom/avos/avoscloud/AVInternalConversation;->kickMembers(Ljava/util/List;I)V

    goto :goto_0

    .line 255
    .end local v7    # "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 256
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->quit(I)V

    goto :goto_0

    .line 257
    :cond_4
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 258
    const-string v0, "conversation.attributes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 260
    .local v6, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v6, p3}, Lcom/avos/avoscloud/AVInternalConversation;->updateInfo(Ljava/util/Map;I)V

    goto :goto_0

    .line 261
    .end local v6    # "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 262
    const-string v0, "mid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v0, "ts"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "limit"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalConversation;->queryHistoryMessages(Ljava/lang/String;JII)V

    goto :goto_0

    .line 265
    :cond_6
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 266
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->mute(I)V

    goto/16 :goto_0

    .line 267
    :cond_7
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 268
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->unmute(I)V

    goto/16 :goto_0

    .line 269
    :cond_8
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 270
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->getMemberCount(I)V

    goto/16 :goto_0
.end method

.method public processConversationCommandFromServer(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;ILjava/util/Map;)V
    .locals 22
    .param p1, "imop"    # Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p3, "cmd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "op"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 278
    .local v19, "operation":Ljava/lang/String;
    const-string v4, "started"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onConversationCreated(I)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v4, "joined"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    const-string v4, "initBy"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 283
    .local v12, "invitedBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/avos/avoscloud/AVInternalConversation;->onInvitedToConversation(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v12    # "invitedBy":Ljava/lang/String;
    :cond_2
    const-string v4, "removed"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 289
    const v4, -0x10001

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    sget-object v8, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v8}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v8

    if-ne v4, v8, :cond_3

    .line 291
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onQuit(I)V

    goto :goto_0

    .line 292
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    sget-object v8, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v8}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v8

    if-ne v4, v8, :cond_0

    .line 293
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onKicked(I)V

    goto :goto_0

    .line 296
    :cond_4
    const-string v4, "added"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 298
    const v4, -0x10001

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    sget-object v8, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v8}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v8

    if-ne v4, v8, :cond_5

    .line 300
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onJoined(I)V

    goto/16 :goto_0

    .line 301
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    sget-object v8, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v8}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v8

    if-ne v4, v8, :cond_0

    .line 302
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onInvited(I)V

    goto/16 :goto_0

    .line 305
    :cond_6
    const-string v4, "left"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 306
    const-string v4, "initBy"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 307
    .restart local v12    # "invitedBy":Ljava/lang/String;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 308
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/avos/avoscloud/AVInternalConversation;->onKickedFromConversation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    .end local v12    # "invitedBy":Ljava/lang/String;
    :cond_7
    const-string v4, "updated"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 311
    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v8

    if-ne v4, v8, :cond_8

    .line 312
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onMuted(I)V

    goto/16 :goto_0

    .line 313
    :cond_8
    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v8

    if-ne v4, v8, :cond_9

    .line 314
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onUnmuted(I)V

    goto/16 :goto_0

    .line 315
    :cond_9
    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v8

    if-ne v4, v8, :cond_0

    .line 316
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onInfoUpdated(I)V

    goto/16 :goto_0

    .line 318
    :cond_a
    const-string v4, "result"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 319
    const-string v4, "count"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 320
    .local v16, "memberCount":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInternalConversation;->onMemberCount(II)V

    goto/16 :goto_0

    .line 323
    .end local v16    # "memberCount":I
    :cond_b
    const-string v4, "members-joined"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 324
    const-string v4, "initBy"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 325
    .restart local v12    # "invitedBy":Ljava/lang/String;
    const-string v4, "m"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 327
    .local v13, "joinedMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/avos/avoscloud/AVInternalConversation;->onMembersJoined(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    .end local v12    # "invitedBy":Ljava/lang/String;
    .end local v13    # "joinedMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    const-string v4, "members-left"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 329
    const-string v4, "initBy"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 330
    .local v20, "removedBy":Ljava/lang/String;
    const-string v4, "m"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 332
    .local v14, "leftMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onMembersLeft(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    .end local v14    # "leftMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "removedBy":Ljava/lang/String;
    :cond_d
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    sget-object v8, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v8}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v8

    if-ne v4, v8, :cond_0

    .line 334
    const-string v4, "logs"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 335
    .local v17, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    .local v21, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    .line 337
    .local v15, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "from"

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 338
    .local v5, "from":Ljava/lang/String;
    const-string v4, "data"

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 339
    .local v10, "data":Ljava/lang/String;
    const-string v4, "timestamp"

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 340
    .local v6, "timestamp":J
    const-string v4, "msgId"

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 341
    .local v18, "msgId":Ljava/lang/String;
    new-instance v3, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-wide/16 v8, -0x1

    invoke-direct/range {v3 .. v9}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 342
    .local v3, "message":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    invoke-virtual {v3, v10}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->processHistoryMessages(Lcom/avos/avoscloud/im/v2/AVIMMessage;Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 346
    .end local v3    # "message":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .end local v5    # "from":Ljava/lang/String;
    .end local v6    # "timestamp":J
    .end local v10    # "data":Ljava/lang/String;
    .end local v15    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "msgId":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInternalConversation;->onHistoryMessageQuery(Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method

.method public queryHistoryMessages(Ljava/lang/String;JII)V
    .locals 7
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "limit"    # I
    .param p5, "requestId"    # I

    .prologue
    .line 190
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p5}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v2, v3, p5}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 196
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->getConversationMessageQueryPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Lcom/avos/avospush/session/ConversationMessageQueryPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method

.method public quit(I)V
    .locals 7
    .param p1, "requestId"    # I

    .prologue
    const/4 v4, 0x0

    .line 178
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v5}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "remove"

    move-object v5, v4

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 184
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;II)V
    .locals 11
    .param p1, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p2, "requestId"    # I
    .param p3, "flag"    # I

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x11

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 155
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v3, p3, 0x11

    if-ne v3, v9, :cond_1

    move v3, v6

    :goto_1
    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_2

    move v4, v6

    :goto_2
    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/avos/avospush/session/ConversationDirectMessagePacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 166
    and-int/lit8 v0, p3, 0x1

    if-lez v0, :cond_4

    .line 167
    iget-object v8, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v1, p3, 0x11

    if-ne v1, v9, :cond_3

    move v4, v6

    :goto_3
    iget-object v5, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    move-object v1, v10

    move-object v2, v10

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/PendingMessageCache$Message;->getMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v0

    invoke-virtual {v8, v0, p2}, Lcom/avos/avoscloud/AVSession;->storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V

    goto :goto_0

    :cond_1
    move v3, v7

    .line 158
    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_2

    :cond_3
    move v4, v7

    .line 167
    goto :goto_3

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p2, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0
.end method

.method public unmute(I)V
    .locals 7
    .param p1, "requestId"    # I

    .prologue
    const/4 v2, 0x0

    .line 212
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v3, v4, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 218
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-string v3, "unmute"

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method

.method public updateInfo(Ljava/util/Map;I)V
    .locals 7
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
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 144
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-string v3, "update"

    move-object v4, p1

    move-object v5, v2

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 149
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v2, v3, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    goto :goto_0
.end method
