.class public Lcom/avos/avospush/session/ConversationAckPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationAckPacket.java"


# instance fields
.field conversationId:Ljava/lang/String;

.field messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 10
    const-string v0, "ack"

    invoke-super {p0, v0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->setCmd(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/ConversationAckPacket;
    .locals 2
    .param p0, "peerId"    # Ljava/lang/String;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/avos/avospush/session/ConversationAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationAckPacket;-><init>()V

    .line 43
    .local v0, "cap":Lcom/avos/avospush/session/ConversationAckPacket;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationAckPacket;->setAppId(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationAckPacket;->setPeerId(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationAckPacket;->setConversationId(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationAckPacket;->setMessageId(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method protected genDataMap()Ljava/util/Map;
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
    .line 34
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 35
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "mid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "cid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    .line 30
    return-void
.end method
