.class Lcom/avos/avoscloud/AVSessionWebSocketListener$1;
.super Ljava/lang/Object;
.source "AVSessionWebSocketListener.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSessionWebSocketListener;->onWebSocketOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field peerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSessionWebSocketListener;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->peerIds:Ljava/util/List;

    .line 80
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 84
    .local v0, "sig":Lcom/avos/avoscloud/Signature;
    invoke-virtual {v0}, Lcom/avos/avoscloud/Signature;->getSignedPeerIds()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->peerIds:Ljava/util/List;

    .line 85
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->peerIds:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVSession;->setAllPeerIds(Ljava/util/Set;)V

    .line 89
    .end local v0    # "sig":Lcom/avos/avoscloud/Signature;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 6
    .param p1, "sig"    # Lcom/avos/avoscloud/Signature;
    .param p2, "exception"    # Lcom/avos/avoscloud/AVException;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v0

    .line 64
    .local v0, "requestId":I
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v2, v2, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v2, :cond_1

    move-object v2, v3

    :goto_0
    const-string v5, "open"

    invoke-static {v4, v2, v5, p1}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v1

    .line 69
    .local v1, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/avos/avospush/session/SessionControlPacket;->setReconnectionRequest(Z)V

    .line 70
    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 71
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v5, v5, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v5}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, v0}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 75
    :cond_0
    return-void

    .line 64
    .end local v1    # "scp":Lcom/avos/avospush/session/SessionControlPacket;
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;->peerIds:Ljava/util/List;

    goto :goto_0
.end method
