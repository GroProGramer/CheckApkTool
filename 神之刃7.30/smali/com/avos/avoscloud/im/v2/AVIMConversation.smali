.class public Lcom/avos/avoscloud/im/v2/AVIMConversation;
.super Ljava/lang/Object;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;
    }
.end annotation


# static fields
.field static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final NONTRANSIENT_MESSAGE_FLAG:I = 0x1

.field public static final RECEIPT_MESSAGE_FLAG:I = 0x11

.field public static final TRANSIENT_MESSAGE_FLAG:I


# instance fields
.field attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field client:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field conversationId:Ljava/lang/String;

.field creator:Ljava/lang/String;

.field isTransient:Z

.field members:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pendingAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;
    .param p2, "conversationId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V

    .line 86
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 1
    .param p1, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;
    .param p4, "isTransient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    .line 72
    if-eqz p2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    .line 76
    if-eqz p3, :cond_1

    .line 77
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    :cond_1
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    .line 81
    iput-boolean p4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .param p1, "x1"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method private sendCMDToPushService(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V
    .locals 7
    .param p1, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p2, "messageFlag"    # I
    .param p3, "callback"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    const/4 v1, 0x0

    .line 479
    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 481
    return-void
.end method

.method private sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
    .locals 9
    .param p1, "dataInString"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p3, "messageFlag"    # I
    .param p4, "operation"    # Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .param p5, "callback"    # Lcom/avos/avoscloud/AVCallback;
    .param p6, "occ"    # Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    .prologue
    .line 497
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v7

    .line 498
    .local v7, "requestId":I
    new-instance v6, Landroid/content/Intent;

    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v1, Lcom/avos/avoscloud/PushService;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    .local v6, "i":Landroid/content/Intent;
    const-string v0, "com.avoscloud.im.v2.action"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const-string v0, "conversation.data"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    :cond_0
    if-eqz p2, :cond_1

    .line 504
    const-string v0, "conversation.data"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    const-string v0, "conversation.message.flag"

    invoke-virtual {v6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    :cond_1
    const-string v0, "conversation.client"

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v0, "convesration.id"

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v0, "conversation.operation"

    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    const-string v0, "conversation.requestId"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 513
    if-eqz p5, :cond_2

    .line 514
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v8

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 569
    :cond_2
    return-void
.end method

.method private sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V
    .locals 7
    .param p1, "dataInString"    # Ljava/lang/String;
    .param p2, "operation"    # Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .param p3, "callback"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    const/4 v2, 0x0

    .line 491
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 492
    return-void
.end method

.method private sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
    .locals 7
    .param p1, "dataInString"    # Ljava/lang/String;
    .param p2, "operation"    # Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .param p3, "callback"    # Lcom/avos/avoscloud/AVCallback;
    .param p4, "occ"    # Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    .prologue
    .line 486
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 487
    return-void
.end method


# virtual methods
.method public addMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 5
    .param p2, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "friendsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->validateNonEmptyConversationMembers(Ljava/util/List;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 205
    .local v0, "membersCheckException":Lcom/avos/avoscloud/AVException;
    if-eqz v0, :cond_1

    .line 206
    if-eqz p2, :cond_0

    .line 207
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "conversation.member"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v4, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;

    invoke-direct {v4, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    invoke-direct {p0, v2, v3, p2, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    goto :goto_0
.end method

.method public fetchInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    .prologue
    .line 405
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    if-eqz p1, :cond_0

    .line 407
    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVException;

    const/16 v3, 0x66

    const-string v4, "ConversationId is empty"

    invoke-direct {v2, v3, v4}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 459
    :goto_0
    return-void

    .line 410
    :cond_0
    const-string v1, "ConversationId is empty"

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_Conversation"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "conversationQuery":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<Lcom/avos/avoscloud/AVObject;>;"
    const-string v1, "objectId"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 416
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(Lcom/avos/avoscloud/GetCallback;)V

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;

    .prologue
    .line 192
    const/4 v0, 0x0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    .line 193
    return-void
.end method

.method public getMembers()Ljava/util/List;
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
    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    return v0
.end method

.method public join(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    .prologue
    const/4 v1, 0x0

    .line 468
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 470
    return-void
.end method

.method public kickMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 5
    .param p2, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "friendsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->validateNonEmptyConversationMembers(Ljava/util/List;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 239
    .local v0, "membersCheckException":Lcom/avos/avoscloud/AVException;
    if-eqz v0, :cond_1

    .line 240
    if-eqz p2, :cond_0

    .line 241
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "conversation.member"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v4, Lcom/avos/avoscloud/im/v2/AVIMConversation$3;

    invoke-direct {v4, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$3;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    invoke-direct {p0, v2, v3, p2, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    goto :goto_0
.end method

.method protected mute(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    .prologue
    const/4 v1, 0x0

    .line 281
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 283
    return-void
.end method

.method public queryMessages(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 6
    .param p1, "limit"    # I
    .param p2, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    .prologue
    .line 169
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    .line 170
    return-void
.end method

.method public queryMessages(Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    .prologue
    .line 159
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x64

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    .line 160
    return-void
.end method

.method public queryMessages(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "limit"    # I
    .param p5, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;

    .prologue
    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "limit"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "mid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "ts"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, v2, p5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    .line 189
    return-void
.end method

.method public quit(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    .prologue
    const/4 v1, 0x0

    .line 309
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 311
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3
    .param p1, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p2, "messageFlag"    # I
    .param p3, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    .prologue
    .line 132
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    if-eqz p3, :cond_0

    .line 134
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x64

    const-string v2, "Connection lost"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setConversationId(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 140
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 142
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 143
    check-cast v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    invoke-static {v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessageAccessor;->upload(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 1
    .param p1, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p2, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    .line 120
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 1
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
    .line 337
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setAttributes(Ljava/util/Map;Z)V

    .line 338
    return-void
.end method

.method protected setAttributes(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "updated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1

    .line 342
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 343
    if-eqz p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 348
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected setCreator(Ljava/lang/String;)V
    .locals 0
    .param p1, "creator"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    .line 99
    return-void
.end method

.method protected setMembers(Ljava/util/List;)V
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
    .line 296
    .local p1, "m":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 297
    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 300
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    return-void
.end method

.method protected unmute(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    .prologue
    const/4 v1, 0x0

    .line 291
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 293
    return-void
.end method

.method public updateInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    .prologue
    .line 373
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->assembleConversationAttributes(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 377
    .local v0, "assembledAttributes":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 378
    const-string v2, "conversation.attributes"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v4, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;

    invoke-direct {v4, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    .line 396
    .end local v0    # "assembledAttributes":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method
