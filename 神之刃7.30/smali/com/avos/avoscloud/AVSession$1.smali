.class Lcom/avos/avoscloud/AVSession$1;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;

.field final synthetic val$peerIds:Ljava/util/List;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession$1;->val$peerIds:Ljava/util/List;

    iput p3, p0, Lcom/avos/avoscloud/AVSession$1;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    .prologue
    .line 166
    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$200()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$200()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$1;->val$peerIds:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 6
    .param p1, "sig"    # Lcom/avos/avoscloud/Signature;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    const/4 v0, 0x0

    .line 141
    if-nez p2, :cond_4

    .line 142
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-boolean v1, v1, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-nez v1, :cond_0

    .line 143
    if-eqz p1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$000(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Signature;->getSignedPeerIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 151
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-boolean v1, v1, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v3}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/avos/avoscloud/AVSession$1;->val$requestId:I

    invoke-static {v2, v3, v0, v4}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-boolean v2, v2, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v2, :cond_3

    :goto_1
    const-string v2, "open"

    iget v3, p0, Lcom/avos/avoscloud/AVSession$1;->val$requestId:I

    invoke-static {v1, v0, v2, p1, v3}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 162
    :goto_2
    return-void

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$000(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$1;->val$peerIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$1;->this$0:Lcom/avos/avoscloud/AVSession;

    const/16 v4, 0x2714

    iget v5, p0, Lcom/avos/avoscloud/AVSession$1;->val$requestId:I

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V

    goto :goto_2
.end method
