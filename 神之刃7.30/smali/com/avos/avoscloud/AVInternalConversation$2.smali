.class Lcom/avos/avoscloud/AVInternalConversation$2;
.super Ljava/lang/Object;
.source "AVInternalConversation.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVInternalConversation;->kickMembers(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVInternalConversation;

.field final synthetic val$members:Ljava/util/List;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVInternalConversation;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->val$members:Ljava/util/List;

    iput p3, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v2, v2, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->val$members:Ljava/util/List;

    const-string v4, "kick"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/SignatureFactory;->createConversationSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 7
    .param p1, "sig"    # Lcom/avos/avoscloud/Signature;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->val$members:Ljava/util/List;

    const-string v3, "remove"

    const/4 v4, 0x0

    iget v6, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->val$requestId:I

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 88
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v2, v2, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v3, v3, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    iget v4, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->val$requestId:I

    invoke-static {v1, v2, v3, v4}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->this$0:Lcom/avos/avoscloud/AVInternalConversation;

    iget-object v1, v1, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    iget v2, p0, Lcom/avos/avoscloud/AVInternalConversation$2;->val$requestId:I

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, v2, p2, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0
.end method
