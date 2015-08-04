.class public abstract Lcom/avos/avoscloud/AVGroupMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVGroupMessageReceiver.java"

# interfaces
.implements Lcom/avos/avoscloud/GroupListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private readInformation(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;)Ljava/util/Map;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "group"    # Lcom/avos/avoscloud/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Group;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    const-class v2, Ljava/util/Map;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, p3, v0}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    .line 132
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupGeneString"    # Ljava/lang/String;
    .param p3, "group"    # Lcom/avos/avoscloud/Group;
    .param p4, "messageId"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v4

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p4, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "msgDataString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 115
    .local v2, "msgData":Lcom/avos/avoscloud/AVMessage;
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    :try_start_0
    const-class v4, Lcom/avos/avoscloud/AVMessage;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/avos/avoscloud/AVMessage;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-object v2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, p3, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    sget-object v20, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    if-eqz v20, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    if-eqz v20, :cond_0

    sget-object v20, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "AV_APPLICATION_ID"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "com.avoscloud.group.action"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 25
    .local v8, "groupGeneString":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "AV_SESSION_INTENT_STATUS_KEY"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 26
    .local v19, "statusCode":I
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 27
    const-class v20, Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 28
    .local v7, "groupGene":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v20, "sessionId"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 29
    .local v18, "sessionId":Ljava/lang/String;
    const-string v20, "groupId"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 30
    .local v9, "groupId":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/avos/avoscloud/SessionManager;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;

    move-result-object v17

    .line 31
    .local v17, "session":Lcom/avos/avoscloud/SessionManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/avos/avoscloud/SessionManager;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/AVGroup;

    .line 32
    .local v6, "group":Lcom/avos/avoscloud/AVGroup;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "data":Ljava/lang/String;
    packed-switch v19, :pswitch_data_0

    .line 106
    .end local v4    # "data":Ljava/lang/String;
    .end local v6    # "group":Lcom/avos/avoscloud/AVGroup;
    .end local v7    # "groupGene":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "groupGeneString":Ljava/lang/String;
    .end local v9    # "groupId":Ljava/lang/String;
    .end local v17    # "session":Lcom/avos/avoscloud/SessionManager;
    .end local v18    # "sessionId":Ljava/lang/String;
    .end local v19    # "statusCode":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 37
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v6    # "group":Lcom/avos/avoscloud/AVGroup;
    .restart local v7    # "groupGene":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "groupGeneString":Ljava/lang/String;
    .restart local v9    # "groupId":Ljava/lang/String;
    .restart local v17    # "session":Lcom/avos/avoscloud/SessionManager;
    .restart local v18    # "sessionId":Ljava/lang/String;
    .restart local v19    # "statusCode":I
    :pswitch_1
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v5

    .line 98
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 99
    const-string v20, "on Group Message Receiver"

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 40
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_2
    const/4 v10, 0x0

    .line 42
    .local v10, "invitedPeers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    const-class v20, Ljava/util/List;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/util/List;

    move-object v10, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v10}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 43
    :catch_1
    move-exception v5

    .line 44
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 49
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "invitedPeers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    const/4 v12, 0x0

    .line 51
    .local v12, "kickedPeers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3
    const-class v20, Ljava/util/List;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/util/List;

    move-object v12, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v12}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 52
    :catch_2
    move-exception v5

    .line 53
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 59
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "kickedPeers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v6, v4}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v15

    .line 60
    .local v15, "msg":Lcom/avos/avoscloud/AVMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v15}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 63
    .end local v15    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v6, v4}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v15

    .line 65
    .restart local v15    # "msg":Lcom/avos/avoscloud/AVMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v15}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 68
    .end local v15    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_6
    move-object v14, v4

    .line 69
    .local v14, "messageId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v6, v14}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v15

    .line 70
    .restart local v15    # "msg":Lcom/avos/avoscloud/AVMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v15}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 73
    .end local v14    # "messageId":Ljava/lang/String;
    .end local v15    # "msg":Lcom/avos/avoscloud/AVMessage;
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V

    goto/16 :goto_0

    .line 76
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readInformation(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;)Ljava/util/Map;

    move-result-object v16

    .line 77
    .local v16, "rejectionInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v16, :cond_1

    const/16 v20, 0x0

    :goto_3
    check-cast v20, Ljava/lang/String;

    check-cast v20, Ljava/lang/String;

    if-nez v16, :cond_2

    const/16 v21, 0x0

    :goto_4
    check-cast v21, Ljava/util/List;

    check-cast v21, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_1
    const-string v20, "groupOperation"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_3

    :cond_2
    const-string v21, "GROUP_PARAM_FROMPEERID"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto :goto_4

    .line 86
    .end local v16    # "rejectionInformation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_9
    const-class v20, Ljava/util/List;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 87
    .local v11, "joinedPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v11}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto/16 :goto_0

    .line 90
    .end local v11    # "joinedPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    const-class v20, Ljava/util/List;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 91
    .local v13, "leftPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v13}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto/16 :goto_0

    .line 94
    .end local v13    # "leftPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v4}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onInviteToGroup(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
