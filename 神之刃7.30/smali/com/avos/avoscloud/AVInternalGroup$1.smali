.class Lcom/avos/avoscloud/AVInternalGroup$1;
.super Ljava/lang/Object;
.source "AVInternalGroup.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVInternalGroup;->join()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVInternalGroup;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVInternalGroup;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

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
    .line 69
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v1, v1, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v2, v2, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const-string v4, "join"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/SignatureFactory;->createGroupSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 73
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
    .line 51
    if-nez p2, :cond_1

    .line 52
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v5

    .line 53
    .local v5, "requestId":I
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v1, v1, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v2, v2, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const-string v3, "join"

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/GroupControlPacket;->genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/GroupControlPacket;

    move-result-object v6

    .line 56
    .local v6, "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 60
    :cond_0
    invoke-static {v6}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 65
    .end local v5    # "requestId":I
    .end local v6    # "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup$1;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    invoke-virtual {v0, v1, v2, p2}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
