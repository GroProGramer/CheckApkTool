.class Lcom/avos/avoscloud/im/v2/AVIMConversation$6;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

.field final synthetic val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

.field final synthetic val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 0
    .param p2, "x0"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    iput-object p5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    .line 519
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v9}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v9

    sget-object v10, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v10}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 520
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v9, v9, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v10, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/im/v2/AVIMClient;->removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    .line 523
    :cond_0
    if-nez p2, :cond_3

    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    if-eqz v9, :cond_3

    .line 524
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    invoke-interface {v9}, Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;->onComplete()V

    .line 529
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    if-eqz v9, :cond_4

    if-nez p2, :cond_4

    .line 530
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "callbackMessageTimeStamp"

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 532
    .local v6, "timestamp":J
    const-string v9, "callbackMessageId"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "messageId":Ljava/lang/String;
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v9, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 534
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    sget-object v10, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 535
    cmp-long v9, v6, v11

    if-eqz v9, :cond_2

    .line 536
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v9, v6, v7}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 542
    .end local v4    # "messageId":Ljava/lang/String;
    .end local v6    # "timestamp":J
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v9}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v9

    sget-object v10, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v10}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v10

    if-ne v9, v10, :cond_7

    .line 543
    const-string v9, "callbackHistoryMessages"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 545
    .local v0, "historyMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 547
    .local v5, "parsedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 548
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 549
    .local v2, "m":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 525
    .end local v0    # "historyMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .end local v5    # "parsedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    :cond_3
    if-eqz p2, :cond_1

    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    if-eqz v9, :cond_1

    .line 526
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$occ:Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;

    invoke-interface {v9}, Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;->onFailure()V

    goto :goto_0

    .line 538
    :cond_4
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    if-eqz v9, :cond_2

    if-eqz p2, :cond_2

    .line 539
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    sget-object v10, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v9, v10}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    goto :goto_1

    .line 552
    .restart local v0    # "historyMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    .restart local v5    # "parsedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    :cond_5
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->callback:Lcom/avos/avoscloud/AVCallback;

    if-nez p2, :cond_6

    :goto_3
    invoke-virtual {v9, v5, v8}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 566
    .end local v0    # "historyMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    .end local v5    # "parsedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    :goto_4
    return-void

    .line 552
    .restart local v0    # "historyMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    .restart local v5    # "parsedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    :cond_6
    new-instance v8, Lcom/avos/avoscloud/AVException;

    invoke-direct {v8, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 558
    .end local v0    # "historyMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    .end local v5    # "parsedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/im/v2/AVIMMessage;>;"
    :cond_7
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->val$operation:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v9}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v9

    sget-object v10, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v10}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v10

    if-ne v9, v10, :cond_9

    .line 559
    const-string v9, "callbackMemberCount"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 560
    .local v3, "memberCount":I
    iget-object v9, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-nez p2, :cond_8

    :goto_5
    invoke-virtual {v9, v10, v8}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_4

    :cond_8
    new-instance v8, Lcom/avos/avoscloud/AVException;

    invoke-direct {v8, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 565
    .end local v3    # "memberCount":I
    :cond_9
    iget-object v10, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;->callback:Lcom/avos/avoscloud/AVCallback;

    if-nez p2, :cond_a

    move-object v9, v8

    :goto_6
    invoke-virtual {v10, v8, v9}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_4

    :cond_a
    new-instance v9, Lcom/avos/avoscloud/AVException;

    invoke-direct {v9, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6
.end method
