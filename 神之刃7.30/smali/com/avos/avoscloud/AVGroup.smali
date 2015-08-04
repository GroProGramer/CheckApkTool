.class public Lcom/avos/avoscloud/AVGroup;
.super Ljava/lang/Object;
.source "AVGroup.java"

# interfaces
.implements Lcom/avos/avoscloud/Group;


# static fields
.field private static final GROUP_TABLE_NAME:Ljava/lang/String; = "AVOSRealtimeGroups"


# instance fields
.field roomId:Ljava/lang/String;

.field selfId:Ljava/lang/String;

.field session:Lcom/avos/avoscloud/SessionManager;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "selfId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    .line 23
    invoke-static {p2}, Lcom/avos/avoscloud/SessionManager;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVGroup;->session:Lcom/avos/avoscloud/SessionManager;

    .line 24
    return-void
.end method

.method protected static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVGroup;
    .locals 1
    .param p0, "groupId"    # Ljava/lang/String;
    .param p1, "selfId"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/avos/avoscloud/AVGroup;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendErrorBroadcast(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v0, "exceptionIntent":Landroid/content/Intent;
    const-string v2, "com.avoscloud.group.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v1, "extra":Landroid/os/Bundle;
    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 122
    const-string v2, "AV_APPLICATION_ID"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "AV_GROUP_INTENT_STATUS_KEY"

    const/16 v3, 0x7538

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v2, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v3, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method private validatePeerIds(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "peersId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 100
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    const-string v2, "empty peersId Exception in group"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v2, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 102
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "empty peersId Exception in group"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/AVGroup;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 113
    :goto_0
    return v1

    .line 106
    :cond_1
    :try_start_0
    const-string v2, "Null id in session id list."

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v1, 0x1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVGroup;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/avos/avoscloud/AVHistoryMessageQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery;-><init>()V

    .line 148
    .local v0, "query":Lcom/avos/avoscloud/AVHistoryMessageQuery;
    iget-object v1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->setGroupId(Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "There must be groupId before query group members"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVQuery;

    const-string v2, "AVOSRealtimeGroups"

    invoke-direct {v1, v2}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "m"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVQuery;->selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;

    .line 159
    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVQuery;->get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 160
    .local v0, "groupObject":Lcom/avos/avoscloud/AVObject;
    const-string v2, "m"

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVObject;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getMembersInBackground(Lcom/avos/avoscloud/GroupMemberQueryCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/avos/avoscloud/GroupMemberQueryCallback;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 166
    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVException;

    const/4 v3, -0x1

    const-string v4, "There must be groupId before query group members"

    invoke-direct {v2, v3, v4}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/avos/avoscloud/GroupMemberQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 185
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "AVOSRealtimeGroups"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "m"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVQuery;->selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;

    .line 172
    iget-object v1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    new-instance v2, Lcom/avos/avoscloud/AVGroup$1;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/AVGroup$1;-><init>(Lcom/avos/avoscloud/AVGroup;Lcom/avos/avoscloud/GroupMemberQueryCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    goto :goto_0
.end method

.method public getSelfId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method public inviteMember(Ljava/util/List;)V
    .locals 3
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
    .line 78
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVGroup;->validatePeerIds(Ljava/util/List;)Z

    .line 79
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "AV_GROUP_INTENT_TARGET_PEERS"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    return-void
.end method

.method public join()V
    .locals 4

    .prologue
    .line 32
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 33
    .local v1, "roomIdInList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.avoscloud.group.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v2, "AV_GROUP_INTENT_SESSIONID"

    iget-object v3, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    const-string v2, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v3, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :cond_0
    const-string v2, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v3, 0x271a

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method

.method public kickMember(Ljava/util/List;)V
    .locals 3
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
    .line 66
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVGroup;->validatePeerIds(Ljava/util/List;)Z

    .line 67
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "AV_GROUP_INTENT_TARGET_PEERS"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    return-void
.end method

.method public quit()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 47
    iget-boolean v1, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "Message receipt is not supported in group messages"

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Message receipt is not supported in group messages"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/AVGroup;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "AV_GROUP_INTENT_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
