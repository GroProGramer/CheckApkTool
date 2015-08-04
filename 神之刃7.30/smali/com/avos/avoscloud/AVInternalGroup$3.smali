.class Lcom/avos/avoscloud/AVInternalGroup$3;
.super Ljava/lang/Object;
.source "AVInternalGroup.java"

# interfaces
.implements Lcom/avos/avoscloud/SignatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVInternalGroup;->inviteMember(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVInternalGroup;

.field final synthetic val$peerIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVInternalGroup;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iput-object p2, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->val$peerIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "sig":Lcom/avos/avoscloud/Signature;
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v1, v1, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v1, v1, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v2, v2, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v3, v3, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->val$peerIds:Ljava/util/List;

    const-string v5, "invite"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/avos/avoscloud/SignatureFactory;->createGroupSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 178
    :cond_0
    return-object v0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 7
    .param p1, "sig"    # Lcom/avos/avoscloud/Signature;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 158
    if-nez p2, :cond_0

    .line 159
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v5

    .line 160
    .local v5, "requestId":I
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v1, v1, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->val$peerIds:Ljava/util/List;

    const-string v3, "invite"

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/GroupControlPacket;->genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/GroupControlPacket;

    move-result-object v6

    .line 163
    .local v6, "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    iget-object v0, v0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 164
    invoke-static {v6}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 168
    .end local v5    # "requestId":I
    .end local v6    # "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup$3;->this$0:Lcom/avos/avoscloud/AVInternalGroup;

    invoke-virtual {v0, v1, v2, p2}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
