.class public Lcom/avos/avospush/session/ConversationDirectMessagePacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationDirectMessagePacket.java"


# instance fields
.field conversationId:Ljava/lang/String;

.field isReceipt:Z

.field isTransient:Z

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 14
    const-string v0, "direct"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setCmd(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/avos/avospush/session/ConversationDirectMessagePacket;
    .locals 2
    .param p0, "peerId"    # Ljava/lang/String;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "isReceipt"    # Z
    .param p4, "isTransient"    # Z
    .param p5, "requestId"    # I

    .prologue
    .line 65
    new-instance v0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;-><init>()V

    .line 66
    .local v0, "cdmp":Lcom/avos/avospush/session/ConversationDirectMessagePacket;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setAppId(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setPeerId(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setConversationId(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setRequestId(I)V

    .line 70
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setTransient(Z)V

    .line 71
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setReceipt(Z)V

    .line 72
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setMessage(Ljava/lang/String;)V

    .line 73
    return-object v0
.end method


# virtual methods
.method public genDataMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 52
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isReceipt:Z

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "r"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isTransient:Z

    if-eqz v1, :cond_1

    .line 56
    const-string v1, "transient"

    iget-boolean v2, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isTransient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_1
    const-string v1, "msg"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "cid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isReceipt()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isReceipt:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isTransient:Z

    return v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->conversationId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setReceipt(Z)V
    .locals 0
    .param p1, "isReceipt"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isReceipt:Z

    .line 31
    return-void
.end method

.method public setTransient(Z)V
    .locals 0
    .param p1, "isTransient"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isTransient:Z

    .line 39
    return-void
.end method
