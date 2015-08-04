.class public Lcom/avos/avospush/session/ConversationControlPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/ConversationControlPacket$ConversationResponseKey;,
        Lcom/avos/avospush/session/ConversationControlPacket$ConversationControlOp;
    }
.end annotation


# static fields
.field public static final CONVERSATION_CMD:Ljava/lang/String; = "conv"


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private conversationId:Ljava/lang/String;

.field isTransient:Z

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 70
    const-string v0, "conv"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationControlPacket;->setCmd(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;
    .locals 8
    .param p0, "selfId"    # Ljava/lang/String;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p5, "signature"    # Lcom/avos/avoscloud/Signature;
    .param p6, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "I)",
            "Lcom/avos/avospush/session/ConversationControlPacket;"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZI)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    return-object v0
.end method

.method public static genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZI)Lcom/avos/avospush/session/ConversationControlPacket;
    .locals 3
    .param p0, "selfId"    # Ljava/lang/String;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p5, "signature"    # Lcom/avos/avoscloud/Signature;
    .param p6, "isTransient"    # Z
    .param p7, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "ZI)",
            "Lcom/avos/avospush/session/ConversationControlPacket;"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/avos/avospush/session/ConversationControlPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationControlPacket;-><init>()V

    .line 172
    .local v0, "ccp":Lcom/avos/avospush/session/ConversationControlPacket;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationControlPacket;->setAppId(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationControlPacket;->setPeerId(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationControlPacket;->setConversationId(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p7}, Lcom/avos/avospush/session/ConversationControlPacket;->setRequestId(I)V

    .line 176
    invoke-virtual {v0, p6}, Lcom/avos/avospush/session/ConversationControlPacket;->setTransient(Z)V

    .line 178
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationControlPacket;->setMembers(Ljava/util/List;)V

    .line 181
    :cond_0
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/ConversationControlPacket;->setOp(Ljava/lang/String;)V

    .line 183
    if-eqz p5, :cond_2

    .line 184
    const-string v1, "add"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "remove"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "start"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    :cond_1
    invoke-virtual {p5}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationControlPacket;->setSignature(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p5}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationControlPacket;->setNonce(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p5}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avospush/session/ConversationControlPacket;->setTimestamp(J)V

    .line 191
    :cond_2
    invoke-virtual {v0, p7}, Lcom/avos/avospush/session/ConversationControlPacket;->setRequestId(I)V

    .line 192
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/ConversationControlPacket;->setAttributes(Ljava/util/Map;)V

    .line 194
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
    .line 139
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 141
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "op"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->op:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const-string v1, "m"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "s"

    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "t"

    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    const-string v1, "attr"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    const-string v1, "cid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_3
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    if-eqz v1, :cond_4

    .line 160
    const-string v1, "transient"

    iget-boolean v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_4
    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
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
    .line 122
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->timestamp:J

    return-wide v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    return v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    .line 127
    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    .line 95
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->nonce:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->op:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->signature:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->timestamp:J

    .line 111
    return-void
.end method

.method public setTransient(Z)V
    .locals 0
    .param p1, "isTransient"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    .line 135
    return-void
.end method
