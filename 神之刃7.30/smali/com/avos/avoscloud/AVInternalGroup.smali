.class Lcom/avos/avoscloud/AVInternalGroup;
.super Ljava/lang/Object;
.source "AVInternalGroup.java"

# interfaces
.implements Lcom/avos/avoscloud/Group;
.implements Lcom/avos/avoscloud/GroupListener;


# instance fields
.field pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/PendingMessageCache",
            "<",
            "Lcom/avos/avospush/session/GroupControlPacket;",
            ">;"
        }
    .end annotation
.end field

.field roomId:Ljava/lang/String;

.field roomIdAsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selfId:Ljava/lang/String;

.field session:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V
    .locals 3
    .param p1, "selfId"    # Ljava/lang/String;
    .param p2, "roomId"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/avos/avoscloud/AVSession;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p3, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    .line 31
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iput-object p2, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    .line 36
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iput-object p1, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/avos/avoscloud/PendingMessageCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/avos/avospush/session/GroupControlPacket;

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/PendingMessageCache;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    .line 41
    return-void

    .line 34
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please open session first before Group operation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    new-instance v0, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v0}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 210
    .local v0, "se":Lcom/avos/avoscloud/SessionPausedException;
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    throw v0

    .line 212
    :pswitch_0
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->INVITE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 213
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 216
    :pswitch_1
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->JOIN:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 217
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 220
    :pswitch_2
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->KICK:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 221
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 224
    :pswitch_3
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->QUIT:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 225
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 228
    :pswitch_4
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->SEND_MESSAGE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 229
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/SessionPausedException;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .end local v0    # "se":Lcom/avos/avoscloud/SessionPausedException;
    :cond_1
    return-void

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getGroupGeneString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v0, "groupGene":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const-string v1, "groupId"

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 1

    .prologue
    .line 396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 401
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMembersInBackground(Lcom/avos/avoscloud/GroupMemberQueryCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/GroupMemberQueryCallback;

    .prologue
    .line 406
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSelfId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inviteMember(Ljava/util/List;)V
    .locals 6
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
    .line 152
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x271d

    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/avos/avoscloud/AVInternalGroup$3;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVInternalGroup$3;-><init>(Lcom/avos/avoscloud/AVInternalGroup;Ljava/util/List;)V

    .line 181
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v3, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p0, v1}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public join()V
    .locals 6

    .prologue
    .line 46
    const/16 v2, 0x271a

    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/avos/avoscloud/AVInternalGroup$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVInternalGroup$1;-><init>(Lcom/avos/avoscloud/AVInternalGroup;)V

    .line 76
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v3, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p0, v1}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public kickMember(Ljava/util/List;)V
    .locals 6
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
    .line 114
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x271c

    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/avos/avoscloud/AVInternalGroup$2;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVInternalGroup$2;-><init>(Lcom/avos/avoscloud/AVInternalGroup;Ljava/util/List;)V

    .line 142
    .local v0, "callback":Lcom/avos/avoscloud/SignatureCallback;
    new-instance v3, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "callback":Lcom/avos/avoscloud/SignatureCallback;
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p0, v1}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/16 v2, 0x7538

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 376
    return-void
.end method

.method public onInviteToGroup(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "byPeerId"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/16 v2, 0x753d

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 305
    return-void
.end method

.method public onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p3, "invitedPeers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7532

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 299
    return-void
.end method

.method public onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/4 v2, 0x0

    const/16 v3, 0x7531

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 293
    return-void
.end method

.method public onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p3, "kickedPeers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7533

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 311
    return-void
.end method

.method public onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p3, "joinedPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x753b

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 385
    return-void
.end method

.method public onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p3, "leftPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x753c

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 392
    return-void
.end method

.method public onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "message"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "groupGeneString":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v2, "com.avoscloud.group.action"

    const/16 v3, 0x7535

    invoke-static {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 346
    return-void
.end method

.method public onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "message"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "groupGeneString":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v2, "com.avoscloud.group.action"

    const/16 v3, 0x753a

    invoke-static {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 334
    return-void
.end method

.method public onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "message"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "groupGeneString":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "com.avoscloud.group.action"

    const/16 v3, 0x7539

    invoke-static {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 323
    return-void
.end method

.method public onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/avos/avoscloud/Group;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/4 v2, 0x0

    const/16 v3, 0x7534

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 357
    return-void
.end method

.method public onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/avos/avoscloud/Group;
    .param p3, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p4, "targetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v0, "rejectParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "groupOperation"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v1, "GROUP_PARAM_FROMPEERID"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.group.action"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7536

    invoke-static {v1, v2, v3, v4}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 370
    return-void
.end method

.method public processGroupCommand(Ljava/util/Map;)V
    .locals 8
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
    .line 256
    .local p1, "cmd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "op"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 257
    .local v4, "op":Ljava/lang/String;
    const/4 v2, 0x0

    .line 258
    .local v2, "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    const-string v6, "i"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    const-string v6, "i"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "messageId":Ljava/lang/String;
    iget-object v6, p0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v6, v3}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v2

    .end local v2    # "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    check-cast v2, Lcom/avos/avospush/session/GroupControlPacket;

    .line 262
    .end local v3    # "messageId":Ljava/lang/String;
    .restart local v2    # "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    :cond_0
    const-string v6, "joined"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 263
    const-string v6, "byPeerId"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 264
    .local v0, "byPeerId":Ljava/lang/String;
    iget-object v6, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 265
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v6, p0}, Lcom/avos/avoscloud/AVInternalGroup;->onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V

    .line 287
    .end local v0    # "byPeerId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 267
    .restart local v0    # "byPeerId":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v6, p0, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onInviteToGroup(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0    # "byPeerId":Ljava/lang/String;
    :cond_3
    const-string v6, "invited"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 270
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/avos/avospush/session/GroupControlPacket;->getGroupPeerIds()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v6, p0, v7}, Lcom/avos/avoscloud/AVInternalGroup;->onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 271
    :cond_4
    const-string v6, "kicked"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 272
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/avos/avospush/session/GroupControlPacket;->getGroupPeerIds()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v6, p0, v7}, Lcom/avos/avoscloud/AVInternalGroup;->onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 273
    :cond_5
    const-string v6, "reject"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 274
    invoke-virtual {v2}, Lcom/avos/avospush/session/GroupControlPacket;->getGroupPeerIds()Ljava/util/List;

    move-result-object v5

    .line 275
    .local v5, "targetPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/avos/avospush/session/GroupControlPacket;->getOp()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "cmdOP":Ljava/lang/String;
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v6, p0, v1, v5}, Lcom/avos/avoscloud/AVInternalGroup;->onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 277
    .end local v1    # "cmdOP":Ljava/lang/String;
    .end local v5    # "targetPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string v6, "left"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 278
    iget-object v6, p0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v6}, Lcom/avos/avoscloud/PendingMessageCache;->clear()V

    .line 279
    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v6, p0}, Lcom/avos/avoscloud/AVInternalGroup;->onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V

    goto :goto_0

    .line 280
    :cond_7
    const-string v6, "members-joined"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 281
    sget-object v7, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v6, "roomPeerIds"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v7, p0, v6}, Lcom/avos/avoscloud/AVInternalGroup;->onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 283
    :cond_8
    const-string v6, "members-left"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 284
    sget-object v7, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v6, "roomPeerIds"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v7, p0, v6}, Lcom/avos/avoscloud/AVInternalGroup;->onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0
.end method

.method public quit()V
    .locals 8

    .prologue
    .line 190
    const/16 v0, 0x271e

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v5

    .line 192
    .local v5, "requestId":I
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const-string v3, "leave"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/GroupControlPacket;->genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/GroupControlPacket;

    move-result-object v7

    .line 195
    .local v7, "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0, v7}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 196
    invoke-static {v7}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v5    # "requestId":I
    .end local v7    # "gcp":Lcom/avos/avospush/session/GroupControlPacket;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v6

    .line 198
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p0, v6}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 11
    .param p1, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 85
    const/16 v0, 0x271b

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v9

    .line 87
    .local v9, "requestId":I
    new-instance v7, Lcom/avos/avospush/session/DirectMessagePacket;

    invoke-direct {v7}, Lcom/avos/avospush/session/DirectMessagePacket;-><init>()V

    .line 88
    .local v7, "dmp":Lcom/avos/avospush/session/DirectMessagePacket;
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setAppId(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setPeerId(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setMsg(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setTransient(Z)V

    .line 92
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setGroupId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v7, v9}, Lcom/avos/avospush/session/DirectMessagePacket;->setRequestId(I)V

    .line 96
    invoke-virtual {v7}, Lcom/avos/avospush/session/DirectMessagePacket;->toJson()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v6, v0

    .line 97
    .local v6, "commandLength":I
    const/16 v0, 0x1388

    if-le v6, v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Message exceeds message length maximum limit"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v6    # "commandLength":I
    .end local v7    # "dmp":Lcom/avos/avospush/session/DirectMessagePacket;
    .end local v9    # "requestId":I
    :catch_0
    move-exception v8

    .line 107
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p0, v8}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    .line 109
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v6    # "commandLength":I
    .restart local v7    # "dmp":Lcom/avos/avospush/session/DirectMessagePacket;
    .restart local v9    # "requestId":I
    :cond_1
    :try_start_1
    invoke-static {v7}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 102
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v10, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/PendingMessageCache$Message;->getMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/avos/avoscloud/AVSession;->storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
