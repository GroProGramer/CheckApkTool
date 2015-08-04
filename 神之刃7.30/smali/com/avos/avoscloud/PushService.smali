.class public Lcom/avos/avoscloud/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/PushService$6;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static connecting:Ljava/lang/Object;

.field private static volatile isStarted:Z

.field static pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

.field private static sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;


# instance fields
.field connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

.field shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-class v0, Lcom/avos/avoscloud/PushService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVPushServiceAppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PushService;->connecting:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 590
    return-void
.end method

.method static synthetic access$000()Lcom/avos/avoscloud/AVPushConnectionManager;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/PushService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processIMRequests(Landroid/content/Intent;)V

    return-void
.end method

.method private static getConnectionManagerInstance(Landroid/content/Context;)Lcom/avos/avoscloud/AVPushConnectionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 595
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-nez v0, :cond_0

    .line 596
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Init push manager"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getInstance(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 601
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    return-object v0
.end method

.method protected static isPushConnectionBroken()Z
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->isConnectedToPushServer()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSessionOpen(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sessionSelfId"    # Ljava/lang/String;

    .prologue
    .line 438
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 439
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v0

    .line 440
    .local v0, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->isOpen()Z

    move-result v1

    .line 444
    .end local v0    # "session":Lcom/avos/avoscloud/AVSession;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processConversationEventsFromClient(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "conversation.operation"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 537
    .local v10, "operationCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "conversation.client"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "clientId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "convesration.id"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, "conversationId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "conversation.requestId"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 540
    .local v12, "requestId":I
    sget-object v14, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v14, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v13

    .line 542
    .local v13, "session":Lcom/avos/avoscloud/AVSession;
    const/4 v2, 0x0

    .line 543
    .local v2, "conversation":Lcom/avos/avoscloud/AVInternalConversation;
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 544
    invoke-virtual {v13, v3}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v2

    .line 547
    :cond_0
    const/4 v11, 0x0

    .line 548
    .local v11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v10}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v9

    .line 549
    .local v9, "operation":Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    sget-object v14, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    if-eq v9, v14, :cond_1

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "conversation.data"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, "intentData":Ljava/lang/String;
    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 552
    const-class v14, Ljava/util/Map;

    invoke-static {v5, v14}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v11, Ljava/util/Map;

    .line 555
    .end local v5    # "intentData":Ljava/lang/String;
    .restart local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    sget-object v14, Lcom/avos/avoscloud/PushService$6;->$SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation:[I

    invoke-virtual {v9}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 590
    invoke-virtual {v2, v10, v11, v12}, Lcom/avos/avoscloud/AVInternalConversation;->processConversationCommandFromClient(ILjava/util/Map;I)V

    .line 592
    :goto_0
    return-void

    .line 557
    :pswitch_0
    const-string v14, "PARAM_SESSION_PEERIDS"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 558
    .local v7, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13, v7, v12}, Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;I)V

    goto :goto_0

    .line 561
    .end local v7    # "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-virtual {v13, v12}, Lcom/avos/avoscloud/AVSession;->close(I)V

    goto :goto_0

    .line 564
    :pswitch_2
    const-string v14, "client.oneline"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 565
    .restart local v7    # "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13, v7, v12}, Lcom/avos/avoscloud/AVSession;->queryOnlinePeers(Ljava/util/List;I)V

    goto :goto_0

    .line 568
    .end local v7    # "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    const-string v14, "conversation.member"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 569
    .restart local v7    # "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 570
    .local v0, "attribute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "conversation.attributes"

    invoke-interface {v11, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 571
    const-string v14, "conversation.attributes"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "attribute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/Map;

    .line 573
    .restart local v0    # "attribute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const/4 v6, 0x0

    .line 574
    .local v6, "isTransient":Z
    const-string v14, "conversation.transient"

    invoke-interface {v11, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 575
    const-string v14, "conversation.transient"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 577
    :cond_3
    invoke-virtual {v13, v7, v0, v6, v12}, Lcom/avos/avoscloud/AVSession;->createConversation(Ljava/util/List;Ljava/util/Map;ZI)V

    goto :goto_0

    .line 580
    .end local v0    # "attribute":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "isTransient":Z
    .end local v7    # "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {v13, v11, v12}, Lcom/avos/avoscloud/AVSession;->conversationQuery(Ljava/util/Map;I)V

    goto :goto_0

    .line 583
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "conversation.data"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 584
    .local v8, "message":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "conversation.message.flag"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 587
    .local v4, "flag":I
    invoke-virtual {v2, v8, v12, v4}, Lcom/avos/avoscloud/AVInternalConversation;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;II)V

    goto :goto_0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private processGroupEventsFromClient(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "AV_GROUP_INTENT_GROUP_ID"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "groupId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "AV_GROUP_INTENT_SESSIONID"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "sessionId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "AV_GROUP_INTENT_OPERATION_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 499
    .local v3, "operation":I
    if-eqz v5, :cond_2

    .line 500
    sget-object v8, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v8, v5}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v4

    .line 501
    .local v4, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v4, :cond_1

    .line 502
    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVInternalGroup;

    .line 503
    .local v0, "group":Lcom/avos/avoscloud/AVInternalGroup;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "AV_GROUP_INTENT_TARGET_PEERS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 505
    .local v7, "targetPeerIdsString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 506
    .local v6, "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 507
    const-class v8, Ljava/util/List;

    invoke-static {v7, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v6, Ljava/util/List;

    .line 509
    .restart local v6    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "AV_GROUP_INTENT_MESSAGE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVMessage;

    .line 511
    .local v2, "message":Lcom/avos/avoscloud/AVMessage;
    packed-switch v3, :pswitch_data_0

    .line 532
    .end local v0    # "group":Lcom/avos/avoscloud/AVInternalGroup;
    .end local v2    # "message":Lcom/avos/avoscloud/AVMessage;
    .end local v4    # "session":Lcom/avos/avoscloud/AVSession;
    .end local v6    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "targetPeerIdsString":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 513
    .restart local v0    # "group":Lcom/avos/avoscloud/AVInternalGroup;
    .restart local v2    # "message":Lcom/avos/avoscloud/AVMessage;
    .restart local v4    # "session":Lcom/avos/avoscloud/AVSession;
    .restart local v6    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "targetPeerIdsString":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInternalGroup;->join()V

    goto :goto_0

    .line 516
    :pswitch_1
    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/AVInternalGroup;->inviteMember(Ljava/util/List;)V

    goto :goto_0

    .line 519
    :pswitch_2
    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/AVInternalGroup;->kickMember(Ljava/util/List;)V

    goto :goto_0

    .line 522
    :pswitch_3
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInternalGroup;->quit()V

    goto :goto_0

    .line 525
    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVInternalGroup;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 530
    .end local v0    # "group":Lcom/avos/avoscloud/AVInternalGroup;
    .end local v2    # "message":Lcom/avos/avoscloud/AVMessage;
    .end local v4    # "session":Lcom/avos/avoscloud/AVSession;
    .end local v6    # "targetPeerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "targetPeerIdsString":Ljava/lang/String;
    :cond_2
    const-string v8, "Session with null selfId is forbidden"

    invoke-static {v8}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private processIMRequests(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    const-string v0, "com.avoscloud.session.action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processSessionEventsFromClient(Landroid/content/Intent;)V

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "com.avoscloud.group.action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processGroupEventsFromClient(Landroid/content/Intent;)V

    .line 166
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "com.avoscloud.im.v2.action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processConversationEventsFromClient(Landroid/content/Intent;)V

    .line 170
    :cond_2
    return-void
.end method

.method private processSessionCloseIntent(Lcom/avos/avoscloud/AVSession;)V
    .locals 0
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->close()V

    .line 174
    return-void
.end method

.method private processSessionEventsFromClient(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, "sessionSelfId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "AV_SESSION_INTENT_OPERATION_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 456
    .local v2, "operation":I
    const/4 v0, 0x0

    .line 457
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .line 458
    .local v1, "msg":Lcom/avos/avoscloud/AVMessage;
    const/16 v5, 0x2710

    if-eq v2, v5, :cond_1

    .line 459
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    :goto_0
    if-eqz v4, :cond_2

    .line 464
    sget-object v5, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v5, v4}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v3

    .line 465
    .local v3, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v3, :cond_0

    .line 466
    packed-switch v2, :pswitch_data_0

    .line 493
    .end local v3    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_0
    :goto_1
    return-void

    .line 461
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "msg":Lcom/avos/avoscloud/AVMessage;
    check-cast v1, Lcom/avos/avoscloud/AVMessage;

    .restart local v1    # "msg":Lcom/avos/avoscloud/AVMessage;
    goto :goto_0

    .line 468
    .restart local v3    # "session":Lcom/avos/avoscloud/AVSession;
    :pswitch_0
    invoke-direct {p0, v3, v0}, Lcom/avos/avoscloud/PushService;->processSessionOpenIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 471
    :pswitch_1
    invoke-direct {p0, v3, v0}, Lcom/avos/avoscloud/PushService;->processSessionWatchInten(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 474
    :pswitch_2
    invoke-direct {p0, v3, v0}, Lcom/avos/avoscloud/PushService;->processSessionUnwatchIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 477
    :pswitch_3
    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/PushService;->processSessionSendMessageIntent(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_1

    .line 480
    :pswitch_4
    invoke-direct {p0, v3, v0}, Lcom/avos/avoscloud/PushService;->processSessionTimoutSetIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 483
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/avos/avoscloud/PushService;->processSessionCloseIntent(Lcom/avos/avoscloud/AVSession;)V

    goto :goto_1

    .line 486
    :pswitch_6
    invoke-direct {p0, v3, v0}, Lcom/avos/avoscloud/PushService;->processSessionOnlineQueryIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 491
    .end local v3    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_2
    const-string v5, "Session with null selfId is forbidden"

    invoke-static {v5}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private processSessionOnlineQueryIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 179
    const-class v1, Ljava/util/List;

    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 180
    .local v0, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVSession;->queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V

    .line 182
    return-void
.end method

.method private processSessionOpenIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 395
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 396
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "PARAM_SESSION_PEERIDS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 397
    .local v1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/avos/avoscloud/AVSession;->open(Ljava/lang/String;Ljava/util/List;)V

    .line 398
    return-void
.end method

.method private processSessionSendMessageIntent(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/AVMessage;)V
    .locals 0
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 191
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVSession;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    .line 192
    return-void
.end method

.method private processSessionTimoutSetIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "timeout":I
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVSession;->setMessageTimeout(I)V

    .line 188
    return-void
.end method

.method private processSessionUnwatchIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 407
    const-class v1, Ljava/util/List;

    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 408
    .local v0, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVSession;->unwatchPeers(Ljava/util/List;)V

    .line 409
    return-void
.end method

.method private processSessionWatchInten(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/avos/avoscloud/AVSession;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 401
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 402
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "PARAM_SESSION_PEERIDS"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 403
    .local v1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/AVSession;->watchPeers(Ljava/util/List;)Z

    .line 404
    return-void
.end method

.method static declared-synchronized sendData(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 2
    .param p0, "packet"    # Lcom/avos/avospush/session/CommandPacket;

    .prologue
    .line 367
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    monitor-exit v1

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {p0, p1}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avospush/push/AVPushServiceAppManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public static setNotificationIcon(I)V
    .locals 1
    .param p0, "icon"    # I

    .prologue
    .line 310
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v0, p0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->setNotificationIcon(I)V

    .line 311
    return-void
.end method

.method protected static setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/avos/avoscloud/SignatureFactory;

    .prologue
    .line 389
    invoke-static {p0}, Lcom/avos/avoscloud/AVSession;->setStaticSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V

    .line 390
    return-void
.end method

.method private static declared-synchronized startService(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 257
    const-class v2, Lcom/avos/avoscloud/PushService;

    monitor-enter v2

    move-object v0, p0

    .line 258
    .local v0, "finalContext":Landroid/content/Context;
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/avos/avoscloud/PushService$4;

    invoke-direct {v3, v0, p1}, Lcom/avos/avoscloud/PushService$4;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit v2

    return-void

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    sget-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 229
    :cond_0
    if-nez p0, :cond_1

    .line 230
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Please add <uses-permission android:name=\"android.permission.INTERNET\"/> in your AndroidManifest file"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 242
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "No network available now"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_3
    const-class v0, Lcom/avos/avoscloud/PushService;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->isPushServiceAvailable(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 247
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Please add <service android:name=\"com.avos.avoscloud.PushService\"/> in your AndroidManifest file"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_4
    invoke-static {p0, p1}, Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static declared-synchronized subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-class v2, Lcom/avos/avoscloud/PushService;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p2}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    move-object v0, p1

    .line 289
    .local v0, "finalChannel":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    const-string v3, "channels"

    invoke-virtual {v1, v3, v0}, Lcom/avos/avoscloud/AVInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->saveEventually()V

    .line 292
    if-eqz p2, :cond_0

    .line 293
    sget-object v1, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/avos/avospush/push/AVPushServiceAppManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v1, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 297
    sget-object v1, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/avos/avospush/push/AVPushServiceAppManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_0
    monitor-exit v2

    return-void

    .line 287
    .end local v0    # "finalChannel":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized triggerReconnect()V
    .locals 2

    .prologue
    .line 373
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->forceTriggerReconnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit v1

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized unbindSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "peerId"    # Ljava/lang/String;

    .prologue
    .line 377
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->removeSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_0
    monitor-exit v1

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 340
    const-class v2, Lcom/avos/avoscloud/PushService;

    monitor-enter v2

    if-nez p1, :cond_0

    .line 364
    :goto_0
    monitor-exit v2

    return-void

    .line 343
    :cond_0
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v1, p1}, Lcom/avos/avospush/push/AVPushServiceAppManager;->removeDefaultPushCallback(Ljava/lang/String;)V

    .line 344
    move-object v0, p1

    .line 345
    .local v0, "finalChannel":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    new-instance v3, Lcom/avos/avoscloud/PushService$5;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/PushService$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    .end local v0    # "finalChannel":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 361
    .restart local v0    # "finalChannel":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    const-string v3, "channels"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/avos/avoscloud/AVInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 362
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->saveEventually()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 219
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "On bind"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "On Create"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    invoke-static {p0}, Lcom/avos/avoscloud/PushService;->getConnectionManagerInstance(Landroid/content/Context;)Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 89
    new-instance v0, Lcom/avos/avospush/push/AVConnectivityReceiver;

    new-instance v1, Lcom/avos/avoscloud/PushService$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/PushService$1;-><init>(Lcom/avos/avoscloud/PushService;)V

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVConnectivityReceiver;-><init>(Lcom/avos/avospush/push/AVConnectivityListener;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    .line 105
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    new-instance v0, Lcom/avos/avospush/push/AVShutdownReceiver;

    new-instance v1, Lcom/avos/avoscloud/PushService$2;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/PushService$2;-><init>(Lcom/avos/avoscloud/PushService;)V

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVShutdownReceiver;-><init>(Lcom/avos/avospush/push/AVShutdownListener;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    .line 114
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 199
    sget-object v1, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v2, "On Destroy"

    invoke-static {v1, v2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->stop()V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v1, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    const/4 v1, 0x0

    sput-boolean v1, Lcom/avos/avoscloud/PushService;->isStarted:Z

    .line 208
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 211
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 212
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/avos/avoscloud/PushService;->isPushConnectionBroken()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    sget-object v4, Lcom/avos/avoscloud/PushService;->connecting:Ljava/lang/Object;

    monitor-enter v4

    .line 125
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    .line 126
    .local v1, "installation":Lcom/avos/avoscloud/AVInstallation;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "installationId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 130
    :cond_0
    sget-object v3, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to connect to push server with installationId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v3, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    new-instance v5, Lcom/avos/avoscloud/PushService$3;

    invoke-direct {v5, p0, v2, p1}, Lcom/avos/avoscloud/PushService$3;-><init>(Lcom/avos/avoscloud/PushService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection(Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v1    # "installation":Lcom/avos/avoscloud/AVInstallation;
    .end local v2    # "installationId":Ljava/lang/String;
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 154
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v5, "Exception when init connection, looks like you have not called AVOSCloud.initialized yet"

    invoke-static {v3, v5, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 151
    :cond_1
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processIMRequests(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 8
    .param p1, "rootIntent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    const-string v3, "try to restart service on task Removed"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 421
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v1, "restartServiceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 427
    .local v2, "restartServicePendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 429
    .local v0, "alarmService":Landroid/app/AlarmManager;
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 432
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 433
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 435
    :cond_1
    return-void
.end method
