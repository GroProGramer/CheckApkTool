.class public abstract Lcom/avos/avoscloud/AVMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVMessageReceiver.java"

# interfaces
.implements Lcom/avos/avoscloud/SessionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/avos/avoscloud/Session;
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v4

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "msgDataString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 160
    .local v2, "msg":Lcom/avos/avoscloud/AVMessage;
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    :try_start_0
    const-class v4, Lcom/avos/avoscloud/AVMessage;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/avos/avoscloud/AVMessage;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    return-object v2

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, p2, v1}, Lcom/avos/avoscloud/AVMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/avos/avoscloud/Session;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "removeAfterRead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 137
    if-eqz p4, :cond_1

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v4

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p3, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "watchingIdString":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 143
    .local v2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 145
    :try_start_0
    const-class v4, Ljava/util/List;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_1
    return-object v2

    .line 137
    .end local v2    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "watchingIdString":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v4

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p3, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 146
    .restart local v2    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "watchingIdString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, p2, v1}, Lcom/avos/avoscloud/AVMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    sget-object v11, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    if-eqz v11, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_APPLICATION_ID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 30
    .local v4, "messageAppId":Ljava/lang/String;
    sget-object v11, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "com.avoscloud.session.action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_SESSION_INTENT_STATUS_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 33
    .local v10, "statusCode":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, "selfId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "data":Ljava/lang/String;
    invoke-static {v7}, Lcom/avos/avoscloud/SessionManager;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;

    move-result-object v8

    .line 37
    .local v8, "session":Lcom/avos/avoscloud/SessionManager;
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 39
    :pswitch_0
    :try_start_1
    const-string v11, "AV_SESSION_INTENT_SELFID_KEY"

    const/4 v12, 0x0

    invoke-direct {p0, p1, v8, v11, v12}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 42
    .local v6, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 43
    iget-object v11, v8, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0, p1, v8}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 127
    .end local v6    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 129
    const-string v11, "on Message Receiver"

    invoke-static {v11, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 25
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "messageAppId":Ljava/lang/String;
    .end local v7    # "selfId":Ljava/lang/String;
    .end local v8    # "session":Lcom/avos/avoscloud/SessionManager;
    .end local v10    # "statusCode":I
    :catch_1
    move-exception v1

    .line 26
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "Receive other apps custom exception"

    invoke-static {v11, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v4    # "messageAppId":Ljava/lang/String;
    .restart local v7    # "selfId":Ljava/lang/String;
    .restart local v8    # "session":Lcom/avos/avoscloud/SessionManager;
    .restart local v10    # "statusCode":I
    :pswitch_1
    :try_start_2
    sget-object v11, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    invoke-interface {v11}, Ljava/util/Queue;->clear()V

    .line 49
    iget-object v11, v8, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->clear()V

    .line 50
    invoke-virtual {p0, p1, v8}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {p0, p1, v8}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V

    goto :goto_0

    .line 56
    :pswitch_3
    invoke-direct {p0, p1, v8, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v5

    .line 57
    .local v5, "msg":Lcom/avos/avoscloud/AVMessage;
    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {p0, p1, v8, v5}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 62
    .end local v5    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_4
    invoke-direct {p0, p1, v8, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v5

    .line 63
    .restart local v5    # "msg":Lcom/avos/avoscloud/AVMessage;
    invoke-virtual {v8}, Lcom/avos/avoscloud/SessionManager;->getSelfPeerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/avos/avoscloud/AVMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 64
    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {p0, p1, v8, v5}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 69
    .end local v5    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_5
    invoke-direct {p0, p1, v8, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v5

    .line 70
    .restart local v5    # "msg":Lcom/avos/avoscloud/AVMessage;
    if-eqz v5, :cond_0

    .line 71
    invoke-virtual {p0, p1, v8, v5}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 75
    .end local v5    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_6
    const/4 v11, 0x1

    invoke-direct {p0, p1, v8, v0, v11}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 76
    .restart local v6    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 77
    iget-object v11, v8, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-virtual {p0, p1, v8, v6}, Lcom/avos/avoscloud/AVMessageReceiver;->onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto/16 :goto_0

    .line 82
    .end local v6    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    const/4 v11, 0x1

    invoke-direct {p0, p1, v8, v0, v11}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 83
    .restart local v6    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 84
    iget-object v11, v8, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 85
    invoke-virtual {p0, p1, v8, v6}, Lcom/avos/avoscloud/AVMessageReceiver;->onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto/16 :goto_0

    .line 89
    .end local v6    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 92
    .local v2, "error":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v8, v2}, Lcom/avos/avoscloud/AVMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 95
    .end local v2    # "error":Ljava/lang/Throwable;
    :pswitch_9
    const-class v11, Ljava/util/List;

    invoke-static {v0, v11}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 96
    .local v9, "sessionPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    if-eqz v11, :cond_0

    .line 97
    sget-object v11, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    invoke-interface {v11}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/OnlinePeerQueryListener;

    .line 98
    .local v3, "l":Lcom/avos/avoscloud/OnlinePeerQueryListener;
    if-eqz v3, :cond_0

    .line 99
    invoke-interface {v3, v9}, Lcom/avos/avoscloud/OnlinePeerQueryListener;->onResults(Ljava/util/List;)V

    goto/16 :goto_0

    .line 104
    .end local v3    # "l":Lcom/avos/avoscloud/OnlinePeerQueryListener;
    .end local v9    # "sessionPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    const/4 v11, 0x1

    invoke-direct {p0, p1, v8, v0, v11}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 105
    .restart local v6    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, v8, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    if-eqz v6, :cond_0

    .line 107
    invoke-virtual {p0, p1, v8, v6}, Lcom/avos/avoscloud/AVMessageReceiver;->onPeersWatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto/16 :goto_0

    .line 111
    .end local v6    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    const/4 v11, 0x1

    invoke-direct {p0, p1, v8, v0, v11}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 112
    .restart local v6    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, v8, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 113
    if-eqz v6, :cond_0

    .line 114
    invoke-virtual {p0, p1, v8, v6}, Lcom/avos/avoscloud/AVMessageReceiver;->onPeersUnwatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto/16 :goto_0

    .line 118
    .end local v6    # "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-direct {p0, p1, v8, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v5

    .line 119
    .restart local v5    # "msg":Lcom/avos/avoscloud/AVMessage;
    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {p0, p1, v8, v5}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessageDelivered(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 124
    .end local v5    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_d
    invoke-virtual {p0, p1, v8}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x4e20
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
