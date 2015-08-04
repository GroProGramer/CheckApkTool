.class Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "AVPushConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVPushConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AVPushWebSocketClient"
.end annotation


# static fields
.field private static final HEADER_SUB_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"


# instance fields
.field private appId:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field final synthetic this$0:Lcom/avos/avoscloud/AVPushConnectionManager;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/net/URI;)V
    .locals 2
    .param p2, "serverURI"    # Ljava/net/URI;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 222
    invoke-direct {p0, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 223
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "AVPushConnectionManager"

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setSocket()V

    .line 227
    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/net/URI;Ljava/lang/String;)V
    .locals 3
    .param p2, "serverURI"    # Ljava/net/URI;
    .param p3, "subProtocol"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 230
    new-instance v0, Lorg/java_websocket/drafts/Draft_17;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_17;-><init>()V

    new-instance v1, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$1;

    invoke-direct {v1, p1, p3}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$1;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    .line 235
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "AVPushConnectionManager"

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setSocket()V

    .line 239
    return-void
.end method

.method private setSocket()V
    .locals 4

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 244
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 245
    .local v2, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "AVPushConnectionManager"

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "AVPushConnectionManager"

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    const/16 v6, 0x1387

    const/16 v5, 0xfa0

    .line 380
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    if-gt p1, v6, :cond_1

    if-lt p1, v5, :cond_1

    .line 381
    :cond_0
    const-string v2, "AVPushConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on websocket closed for reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVSession;

    .line 385
    .local v1, "session":Lcom/avos/avoscloud/AVSession;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    if-gt p1, v6, :cond_4

    if-lt p1, v5, :cond_4

    .line 386
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|watchPeerIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getAllPeers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 388
    :cond_4
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 389
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/avos/avospush/push/AVWebSocketListener;->onWebSocketClose()V

    goto :goto_0

    .line 394
    .end local v1    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_5
    if-eqz p3, :cond_6

    .line 395
    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;
    invoke-static {v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$200(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()V

    .line 397
    :cond_6
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 401
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "AVPushConnectionManager"

    const-string v1, "Client error."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 406
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$200(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->onSocketFailure()V

    .line 407
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$200(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()V

    .line 408
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 297
    const-string v9, "AVPushConnectionManager"

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v9, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;
    invoke-static {v9}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$200(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/avos/avoscloud/PushConnectionRetryController;->onSocketSuccess()V

    .line 305
    :try_start_0
    const-class v9, Ljava/util/HashMap;

    invoke-static {p1, v9}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 306
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "cmd"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    .local v1, "cmd":Ljava/lang/String;
    const-string v9, "data"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 309
    const-string v9, "appId"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, "appId":Ljava/lang/String;
    const-string v9, "ids"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 311
    .local v5, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "msg"

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    .line 312
    .local v6, "msgArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 313
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 314
    iget-object v10, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    # invokes: Lcom/avos/avoscloud/AVPushConnectionManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v0, v11, v9}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$300(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    :cond_2
    new-instance v7, Lcom/avos/avospush/session/PushAckPacket;

    invoke-direct {v7}, Lcom/avos/avospush/session/PushAckPacket;-><init>()V

    .line 318
    .local v7, "pap":Lcom/avos/avospush/session/PushAckPacket;
    invoke-virtual {v7, v0}, Lcom/avos/avospush/session/PushAckPacket;->setAppId(Ljava/lang/String;)V

    .line 319
    iget-object v9, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/avos/avospush/session/PushAckPacket;->setInstallationId(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v7, v5}, Lcom/avos/avospush/session/PushAckPacket;->setMessageIds(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0, v7}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 376
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "msgArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "pap":Lcom/avos/avospush/session/PushAckPacket;
    :cond_3
    :goto_1
    return-void

    .line 322
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 323
    const-string v9, "presence"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 324
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 325
    .local v8, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 326
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onPresenceCommand(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 373
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Exception during message parse"

    invoke-static {v9, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 328
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    :try_start_1
    const-string v9, "direct"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 329
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 330
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 331
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onDirectCommand(Ljava/util/HashMap;)V

    goto :goto_1

    .line 333
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_6
    const-string v9, "session"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 334
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 335
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 336
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onSessionCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 338
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_7
    const-string v9, "ackreq"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 339
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 340
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 341
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onAckReqCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 343
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_8
    const-string v9, "ack"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 344
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 345
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 346
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onAckCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 348
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_9
    const-string v9, "room"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 349
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 350
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 351
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onGroupCommand(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 353
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_a
    const-string v9, "rcp"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 354
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 355
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 356
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onMessageReceipt(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 358
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_b
    const-string v9, "conv"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 359
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 360
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 361
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onConversationCommand(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 363
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_c
    const-string v9, "error"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 364
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 365
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 366
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onError(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 368
    .end local v8    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_d
    const-string v9, "logs"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 369
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v9

    const-string v10, "peerId"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/AVSession;

    .line 370
    .restart local v8    # "session":Lcom/avos/avoscloud/AVSession;
    invoke-virtual {v8}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/avos/avospush/push/AVWebSocketListener;->onHistoryMessageQuery(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 5
    .param p1, "serverHandshake"    # Lorg/java_websocket/handshake/ServerHandshake;

    .prologue
    .line 276
    new-instance v1, Lcom/avos/avospush/session/LoginPacket;

    invoke-direct {v1}, Lcom/avos/avospush/session/LoginPacket;-><init>()V

    .line 277
    .local v1, "lp":Lcom/avos/avospush/session/LoginPacket;
    iget-object v3, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/avos/avospush/session/LoginPacket;->setAppId(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/avos/avospush/session/LoginPacket;->setInstallationId(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 281
    # getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;
    invoke-static {}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$100()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVSession;

    .line 282
    .local v2, "session":Lcom/avos/avoscloud/AVSession;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const-string v3, "AVPushConnectionManager"

    const-string v4, "websocket opened, notifying listeners"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/avos/avospush/push/AVWebSocketListener;->onWebSocketOpen()V

    goto :goto_0

    .line 288
    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_1
    iget-object v3, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iget-object v3, v3, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionInitListener:Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;

    if-eqz v3, :cond_2

    .line 289
    iget-object v3, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iget-object v3, v3, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionInitListener:Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;

    invoke-interface {v3}, Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;->onConnected()V

    .line 291
    :cond_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionInitListener:Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;

    .line 292
    return-void
.end method

.method public onWebsocketPong(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    .locals 3
    .param p1, "conn"    # Lorg/java_websocket/WebSocket;
    .param p2, "f"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 412
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "AVPushConnectionManager"

    const-string v1, "on pong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J
    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$402(Lcom/avos/avoscloud/AVPushConnectionManager;J)J

    .line 416
    invoke-super {p0, p1, p2}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketPong(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    .line 417
    return-void
.end method

.method public send(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 3
    .param p1, "packet"    # Lcom/avos/avospush/session/CommandPacket;

    .prologue
    .line 264
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "AVPushConnectionManager"

    invoke-virtual {p1}, Lcom/avos/avospush/session/CommandPacket;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/avos/avospush/session/CommandPacket;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->appId:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setInstallationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "installationId"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->installationId:Ljava/lang/String;

    .line 261
    return-void
.end method
