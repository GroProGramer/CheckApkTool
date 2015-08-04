.class Lcom/avos/avoscloud/AVFriendshipQuery$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVFriendshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFriendshipQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFriendshipQuery;Lcom/avos/avoscloud/callback/AVFriendshipCallback;)V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery$1;, "Lcom/avos/avoscloud/AVFriendshipQuery.1;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 86
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery$1;, "Lcom/avos/avoscloud/AVFriendshipQuery.1;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 17
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 38
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery$1;, "Lcom/avos/avoscloud/AVFriendshipQuery.1;"
    const/4 v9, 0x0

    .line 39
    .local v9, "friendship":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    move-object/from16 v2, p2

    .line 40
    .local v2, "error":Lcom/avos/avoscloud/AVException;
    invoke-static/range {p1 .. p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 41
    const/4 v9, 0x0

    .line 42
    new-instance v2, Lcom/avos/avoscloud/AVException;

    .end local v2    # "error":Lcom/avos/avoscloud/AVException;
    const/16 v14, 0x65

    const-string v15, "Object is not found."

    invoke-direct {v2, v14, v15}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 79
    .restart local v2    # "error":Lcom/avos/avoscloud/AVException;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    if-eqz v14, :cond_1

    .line 80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    invoke-virtual {v14, v9, v2}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 82
    :cond_1
    return-void

    .line 45
    :cond_2
    :try_start_0
    new-instance v10, Lcom/avos/avoscloud/AVFriendship;

    invoke-direct {v10}, Lcom/avos/avoscloud/AVFriendship;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    .end local v9    # "friendship":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    .local v10, "friendship":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    :try_start_1
    const-class v14, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;

    .line 48
    .local v12, "response":Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v14, v14, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    if-eqz v14, :cond_6

    .line 49
    invoke-virtual {v10}, Lcom/avos/avoscloud/AVFriendship;->getFollowers()Ljava/util/List;

    move-result-object v8

    .line 50
    .local v8, "followers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v10}, Lcom/avos/avoscloud/AVFriendship;->getFollowees()Ljava/util/List;

    move-result-object v5

    .line 51
    .local v5, "followees":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v14, v12, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;->followers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 52
    .local v7, "followerShip":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v14, v14, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v6

    .line 53
    .local v6, "follower":Lcom/avos/avoscloud/AVUser;, "TT;"
    const-string v14, "follower"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-static {v14, v6}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 55
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v10}, Lcom/avos/avoscloud/AVFriendship;->getUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v14

    if-nez v14, :cond_3

    .line 57
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v14, v14, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v13

    .line 58
    .local v13, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    const-string v14, "user"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-static {v14, v13}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 60
    invoke-virtual {v10, v13}, Lcom/avos/avoscloud/AVFriendship;->setUser(Lcom/avos/avoscloud/AVUser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 73
    .end local v5    # "followees":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v6    # "follower":Lcom/avos/avoscloud/AVUser;, "TT;"
    .end local v7    # "followerShip":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "followers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "response":Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;
    .end local v13    # "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    :catch_0
    move-exception v1

    move-object v9, v10

    .line 74
    .end local v10    # "friendship":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    .local v1, "e1":Ljava/lang/Exception;
    .restart local v9    # "friendship":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    if-eqz v14, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto/16 :goto_0

    .line 63
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v9    # "friendship":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    .restart local v5    # "followees":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v8    # "followers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v10    # "friendship":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "response":Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;
    :cond_4
    :try_start_2
    invoke-virtual {v10, v8}, Lcom/avos/avoscloud/AVFriendship;->setFollowers(Ljava/util/List;)V

    .line 64
    iget-object v14, v12, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;->followees:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 65
    .local v4, "followeeShip":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v14, v14, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 66
    .local v3, "followee":Lcom/avos/avoscloud/AVUser;, "TT;"
    const-string v14, "followee"

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-static {v14, v3}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 68
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 70
    .end local v3    # "followee":Lcom/avos/avoscloud/AVUser;, "TT;"
    .end local v4    # "followeeShip":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {v10, v5}, Lcom/avos/avoscloud/AVFriendship;->setFollowees(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v5    # "followees":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v8    # "followers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object v9, v10

    .line 77
    .end local v10    # "friendship":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    .restart local v9    # "friendship":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    goto/16 :goto_0

    .line 73
    .end local v12    # "response":Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;
    :catch_1
    move-exception v1

    goto :goto_2
.end method
