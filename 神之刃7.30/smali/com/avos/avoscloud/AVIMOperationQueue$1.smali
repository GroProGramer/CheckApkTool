.class Lcom/avos/avoscloud/AVIMOperationQueue$1;
.super Ljava/lang/Object;
.source "AVIMOperationQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVIMOperationQueue;

.field final synthetic val$op:Lcom/avos/avoscloud/AVIMOperationQueue$Operation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVIMOperationQueue;Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/avos/avoscloud/AVIMOperationQueue$1;->this$0:Lcom/avos/avoscloud/AVIMOperationQueue;

    iput-object p2, p0, Lcom/avos/avoscloud/AVIMOperationQueue$1;->val$op:Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 63
    iget-object v1, p0, Lcom/avos/avoscloud/AVIMOperationQueue$1;->this$0:Lcom/avos/avoscloud/AVIMOperationQueue;

    iget-object v2, p0, Lcom/avos/avoscloud/AVIMOperationQueue$1;->val$op:Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    iget v2, v2, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    .line 64
    .local v0, "polledOP":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    if-eqz v0, :cond_0

    .line 65
    iget-object v1, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->sessionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    iget v3, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    new-instance v4, Lcom/avos/avoscloud/AVException;

    const/16 v5, 0x7c

    const-string v6, "Timeout Exception"

    invoke-direct {v4, v5, v6}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    iget v5, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v5}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 69
    :cond_0
    return-void
.end method
