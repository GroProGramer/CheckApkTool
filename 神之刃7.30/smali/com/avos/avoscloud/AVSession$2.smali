.class Lcom/avos/avoscloud/AVSession$2;
.super Ljava/lang/Object;
.source "AVSession.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;->watchPeers(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;

.field final synthetic val$peerIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    iput-object p2, p0, Lcom/avos/avoscloud/AVSession$2;->val$peerIds:Ljava/util/List;

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
    .line 341
    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$200()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    # getter for: Lcom/avos/avoscloud/AVSession;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$200()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$2;->val$peerIds:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 344
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
    .line 317
    if-nez p2, :cond_1

    .line 318
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$2;->val$peerIds:Ljava/util/List;

    .line 319
    .local v0, "peerIdsToWatch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/avos/avoscloud/Signature;->getSignedPeerIds()Ljava/util/List;

    move-result-object v0

    .line 323
    :cond_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->allPeerIdSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$000(Lcom/avos/avoscloud/AVSession;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 324
    new-instance v3, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {v3}, Lcom/avos/avoscloud/PendingMessageCache$Message;-><init>()V

    .line 325
    .local v3, "watchMessage":Lcom/avos/avoscloud/PendingMessageCache$Message;
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v2

    .line 326
    .local v2, "watchId":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    .line 327
    iput-object v0, v3, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    .line 328
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v4, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v4, v3}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 329
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    # getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v4}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "add"

    invoke-static {v4, v0, v5, p1, v2}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v1

    .line 333
    .local v1, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    invoke-static {v1}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 337
    .end local v0    # "peerIdsToWatch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "scp":Lcom/avos/avospush/session/SessionControlPacket;
    .end local v2    # "watchId":I
    .end local v3    # "watchMessage":Lcom/avos/avoscloud/PendingMessageCache$Message;
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v4, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/avos/avoscloud/AVSession$2;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4, v5, v6, p2}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
