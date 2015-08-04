.class public Lcom/avos/avospush/session/ConversationMessageQueryPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationMessageQueryPacket.java"


# instance fields
.field conversationId:Ljava/lang/String;

.field limit:I

.field msgId:Ljava/lang/String;

.field requestId:I

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 13
    const-string v0, "logs"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setCmd(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static getConversationMessageQueryPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Lcom/avos/avospush/session/ConversationMessageQueryPacket;
    .locals 2
    .param p0, "peerId"    # Ljava/lang/String;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "limit"    # I
    .param p6, "requestId"    # I

    .prologue
    .line 88
    new-instance v0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;-><init>()V

    .line 89
    .local v0, "cqp":Lcom/avos/avospush/session/ConversationMessageQueryPacket;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setAppId(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setPeerId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setConversationId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setMsgId(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setLimit(I)V

    .line 95
    invoke-virtual {v0, p3, p4}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setTimestamp(J)V

    .line 96
    invoke-virtual {v0, p6}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setRequestId(I)V

    .line 98
    return-object v0
.end method


# virtual methods
.method protected genDataMap()Ljava/util/Map;
    .locals 5
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
    .line 68
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 69
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "cid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "i"

    iget v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 72
    const-string v1, "limit"

    iget v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const-string v1, "mid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1
    iget-wide v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 78
    const-string v1, "t"

    iget-wide v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_2
    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    return v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->requestId:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    return-wide v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->conversationId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    .line 45
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "requestId"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->requestId:I

    .line 63
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    .line 53
    return-void
.end method
