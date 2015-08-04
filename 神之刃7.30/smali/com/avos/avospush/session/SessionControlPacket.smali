.class public Lcom/avos/avospush/session/SessionControlPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "SessionControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/SessionControlPacket$SessionControlOp;
    }
.end annotation


# static fields
.field public static final USERAGENT:Ljava/lang/String; = "android/v3.3.4"


# instance fields
.field private nonce:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private reconnectionRequest:Z

.field private sessionPeerIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    .line 42
    const-string v0, "session"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/SessionControlPacket;->setCmd(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 3
    .param p0, "selfId"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "signature"    # Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            ")",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/avos/avospush/session/SessionControlPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/SessionControlPacket;-><init>()V

    .line 136
    .local v0, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setAppId(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/SessionControlPacket;->setPeerId(Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/SessionControlPacket;->setSessionPeerIds(Ljava/util/Collection;)V

    .line 141
    :cond_0
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/SessionControlPacket;->setOp(Ljava/lang/String;)V

    .line 142
    const v1, -0x10001

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setRequestId(I)V

    .line 144
    if-eqz p3, :cond_2

    .line 145
    const-string v1, "open"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "add"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    :cond_1
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setSignature(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setNonce(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avospush/session/SessionControlPacket;->setTimestamp(J)V

    .line 152
    :cond_2
    return-object v0
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 1
    .param p0, "selfId"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "signature"    # Lcom/avos/avoscloud/Signature;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            "I)",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 158
    .local v0, "scp":Lcom/avos/avospush/session/SessionControlPacket;
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/SessionControlPacket;->setRequestId(I)V

    .line 159
    return-object v0
.end method


# virtual methods
.method protected genDataMap()Ljava/util/Map;
    .locals 4
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
    .line 107
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 109
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "op"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "sessionPeerIds"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getRequestId()I

    move-result v1

    const v2, -0x10001

    if-eq v1, v2, :cond_1

    .line 115
    const-string v1, "ua"

    const-string v2, "android/v3.3.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    const-string v1, "s"

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "t"

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    iget-boolean v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    if-eqz v1, :cond_3

    .line 125
    const-string v1, "r"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_3
    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionPeerIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->timestamp:J

    return-wide v0
.end method

.method public isReconnectionRequest()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    return v0
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->nonce:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setReconnectionRequest(Z)V
    .locals 0
    .param p1, "reconnectionRequest"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    .line 103
    return-void
.end method

.method public setSessionPeerIds(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "sessionPeerIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    .line 95
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->signature:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->timestamp:J

    .line 71
    return-void
.end method
