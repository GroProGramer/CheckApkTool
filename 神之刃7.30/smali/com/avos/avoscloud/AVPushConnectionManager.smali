.class Lcom/avos/avoscloud/AVPushConnectionManager;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;,
        Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;,
        Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AVPushConnectionManager"

.field public static final PUSH_INTENT_KEY:Ljava/lang/String; = "com.avoscloud.push"

.field private static final PUSH_MESSAGE_DEPOT:Ljava/lang/String; = "com.avos.push.message"

.field private static final THREE_MINUTES:J = 0x2bf20L

.field private static instance:Lcom/avos/avoscloud/AVPushConnectionManager;

.field private static final peerIdEnabledSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final random:Ljava/util/Random;


# instance fields
.field connectionInitListener:Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;

.field private final ctx:Landroid/content/Context;

.field private final depot:Lcom/avos/avospush/session/StaleMessageDepot;

.field private volatile lastPongTimestamps:J

.field private pingAlarmIntent:Landroid/content/Intent;

.field private pingAlarmPendingIntent:Landroid/app/PendingIntent;

.field pingAlarmReceiver:Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

.field private final pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

.field private final retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

.field private socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->random:Ljava/util/Random;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pushServiceAppManager"    # Lcom/avos/avospush/push/AVPushServiceAppManager;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "installationId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    .line 86
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    .line 89
    new-instance v0, Lcom/avos/avospush/session/StaleMessageDepot;

    const-string v1, "com.avos.push.message"

    invoke-direct {v0, v1}, Lcom/avos/avospush/session/StaleMessageDepot;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    .line 90
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initAlarmReciever()V

    .line 91
    new-instance v0, Lcom/avos/avoscloud/PushConnectionRetryController;

    new-instance v1, Lcom/avos/avoscloud/AVPushConnectionManager$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/avos/avoscloud/AVPushConnectionManager$1;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, p4, v1}, Lcom/avos/avoscloud/PushConnectionRetryController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    .line 99
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initSessionsIfExists()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVPushConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPushConnectionManager;->createNewWebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVPushConnectionManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVPushConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPushConnectionManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/avos/avoscloud/AVPushConnectionManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVPushConnectionManager;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/AVPushConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVPushConnectionManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendPing()V

    return-void
.end method

.method private buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 523
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 524
    .local v0, "updateIntent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 525
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    :cond_0
    const-string v1, "com.avoscloud.push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    const-string v1, "com.avos.avoscloud.Channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string v1, "com.avoscloud.Channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v1, "com.parse.Channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v1, "com.avos.avoscloud.Data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v1, "com.avoscloud.Data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v1, "com.parse.Data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    return-object v0
.end method

.method private declared-synchronized createNewWebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "installationId"    # Ljava/lang/String;
    .param p3, "pushServer"    # Ljava/lang/String;

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/net/URI;)V

    iput-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    .line 196
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setAppId(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1, p2}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setInstallationId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const-string v1, "AVPushConnectionManager"

    const-string v2, "About to connect to server."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 206
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->onSocketFailure()V

    .line 207
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()V

    .line 208
    const-string v1, "AVPushConnectionManager"

    const-string v2, "Create socket client failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 621
    const-string v0, "action"

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 444
    iget-object v4, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 447
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 451
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 448
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 451
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v4, "Notification"

    goto :goto_1
.end method

.method private getChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 616
    const-string v0, "_channel"

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExpiration(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 634
    const-string v2, ""

    .line 636
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 637
    .local v1, "object":Lorg/json/JSONObject;
    const-string v3, "_expiration_time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 643
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 647
    :goto_1
    return-object v0

    .line 646
    :cond_0
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 647
    .local v0, "date":Ljava/util/Date;
    goto :goto_1

    .line 638
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVPushConnectionManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pushServiceAppManager"    # Lcom/avos/avospush/push/AVPushServiceAppManager;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "installationId"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v1, Lcom/avos/avoscloud/AVPushConnectionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPushConnectionManager;-><init>(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 119
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 626
    const-class v3, Ljava/util/HashMap;

    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 627
    .local v1, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-object v2

    .line 629
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 630
    .local v0, "action":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getSound(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 462
    const-string v0, "sound"

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 423
    const-string v5, "alert"

    invoke-direct {p0, p1, v5}, Lcom/avos/avoscloud/AVPushConnectionManager;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 438
    .end local v2    # "text":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 427
    .restart local v2    # "text":Ljava/lang/String;
    :cond_0
    const-class v5, Ljava/util/HashMap;

    invoke-static {p1, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 428
    .local v1, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v2, v4

    goto :goto_0

    .line 430
    :cond_2
    const-string v5, "data"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 431
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v2, v4

    .line 432
    goto :goto_0

    .line 434
    :cond_4
    const-string v5, "message"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 435
    .local v3, "val":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 436
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v4

    .line 438
    goto :goto_0
.end method

.method private getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 458
    const-string v0, "title"

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 482
    .end local v2    # "title":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 471
    .restart local v2    # "title":Ljava/lang/String;
    :cond_0
    const-class v4, Ljava/util/HashMap;

    invoke-static {p1, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 472
    .local v1, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 474
    :cond_2
    const-string v4, "data"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 475
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 476
    :cond_3
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 478
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 479
    .local v3, "val":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 480
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 482
    :cond_5
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initAlarmReciever()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x2bf20

    const/4 v1, 0x0

    .line 680
    new-instance v2, Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V

    iput-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

    .line 681
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmIntent:Landroid/content/Intent;

    .line 682
    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmIntent:Landroid/content/Intent;

    const/high16 v6, 0x8000000

    invoke-static {v2, v1, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 685
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-class v7, Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 690
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 692
    return-void

    .line 686
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initSessionsIfExists()V
    .locals 6

    .prologue
    .line 103
    invoke-static {}, Lcom/avos/avoscloud/AVSessionCacheHelper;->getAllSession()Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "cachedSessions":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/Session;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/Session;

    .line 105
    .local v3, "session":Lcom/avos/avoscloud/Session;
    invoke-interface {v3}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v2

    .line 107
    .local v2, "s":Lcom/avos/avoscloud/AVSession;
    iget-object v4, v2, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 109
    .end local v2    # "s":Lcom/avos/avoscloud/AVSession;
    .end local v3    # "session":Lcom/avos/avoscloud/Session;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sessions recovered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private processMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    .line 652
    :try_start_0
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "channel":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v4, v1}, Lcom/avos/avospush/push/AVPushServiceAppManager;->containsDefaultPushCallback(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 654
    :cond_0
    move-object v1, p1

    .line 657
    :cond_1
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getExpiration(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 658
    .local v3, "expiration":Ljava/util/Date;
    if-eqz v3, :cond_3

    .line 659
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 660
    const-string v4, "AVPushConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message expired:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v1    # "channel":Ljava/lang/String;
    .end local v3    # "expiration":Ljava/util/Date;
    :cond_2
    :goto_0
    return-void

    .line 665
    .restart local v1    # "channel":Ljava/lang/String;
    .restart local v3    # "expiration":Ljava/util/Date;
    :cond_3
    iget-object v4, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    invoke-virtual {v4, p3}, Lcom/avos/avospush/session/StaleMessageDepot;->putStableMessage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 666
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 668
    invoke-direct {p0, v1, p2, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "channel":Ljava/lang/String;
    .end local v3    # "expiration":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "AVPushConnectionManager"

    const-string v5, "Process notification failed."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 670
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "channel":Ljava/lang/String;
    .restart local v3    # "expiration":Ljava/util/Date;
    :cond_4
    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPushConnectionManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 539
    .local v0, "updateIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    const-string v1, "AVPushConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 543
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    const-string v1, "AVPushConnectionManager"

    const-string v2, "sent broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_1
    return-void
.end method

.method public static sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 3
    .param p0, "clientId"    # Ljava/lang/String;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "operation"    # Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .prologue
    .line 604
    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "keyHeader":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 608
    const-string v2, "callbackclient"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 610
    const-string v2, "callbackconversation"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    :cond_0
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 613
    return-void
.end method

.method public static sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 3
    .param p0, "clientId"    # Ljava/lang/String;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "operation"    # Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .prologue
    .line 575
    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "keyHeader":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, "callbackIntent":Landroid/content/Intent;
    const-string v2, "callbackclient"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    const-string v2, "callbackconversation"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    :cond_0
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 584
    return-void
.end method

.method public static sendLocalBroadCast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 3
    .param p0, "clientId"    # Ljava/lang/String;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "data"    # Ljava/io/Serializable;
    .param p4, "operation"    # Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .prologue
    .line 588
    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "keyHeader":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "callbackIntent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 592
    const-string v2, "callbackException"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 594
    :cond_0
    const-string v2, "callbackclient"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 596
    const-string v2, "callbackconversation"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 599
    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v10, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v10, p1}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "clsName":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 490
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Do default callback found, did you forget to invoke setDefaultPushCallback?"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 493
    :cond_0
    const-string v10, "."

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 494
    .local v3, "lastIndex":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_2

    .line 497
    sget-object v10, Lcom/avos/avoscloud/AVPushConnectionManager;->random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v7

    .line 499
    .local v7, "notificationId":I
    const/4 v10, 0x0

    invoke-direct {p0, p1, p2, v10}, Lcom/avos/avoscloud/AVPushConnectionManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 500
    .local v8, "resultIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v10, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-direct {v1, v10, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 501
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 502
    iget-object v10, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v7, v8, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 503
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getSound(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 504
    .local v9, "sound":Ljava/lang/String;
    new-instance v10, Lcom/avos/avospush/notification/NotificationCompat$Builder;

    iget-object v11, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/avos/avospush/notification/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v11}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getNotificationIcon()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setSmallIcon(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v10

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setDefaults(I)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v10

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/avos/avospush/notification/NotificationCompat$Builder;

    move-result-object v4

    .line 510
    .local v4, "mBuilder":Lcom/avos/avospush/notification/NotificationCompat$Builder;
    iget-object v10, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 512
    .local v5, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v4}, Lcom/avos/avospush/notification/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 513
    .local v6, "notification":Landroid/app/Notification;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 514
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "android.resource://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 516
    :cond_1
    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 520
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "mBuilder":Lcom/avos/avospush/notification/NotificationCompat$Builder;
    .end local v5    # "manager":Landroid/app/NotificationManager;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "notificationId":I
    .end local v8    # "resultIntent":Landroid/content/Intent;
    .end local v9    # "sound":Ljava/lang/String;
    :goto_0
    return-void

    .line 518
    :cond_2
    const-string v10, "AVPushConnectionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class name is invalid, which must contain \'.\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized sendPing()V
    .locals 5

    .prologue
    .line 704
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    new-instance v0, Lorg/java_websocket/framing/FramedataImpl1;

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-direct {v0, v1}, Lorg/java_websocket/framing/FramedataImpl1;-><init>(Lorg/java_websocket/framing/Framedata$Opcode;)V

    .line 706
    .local v0, "frame":Lorg/java_websocket/framing/FramedataImpl1;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/java_websocket/framing/FramedataImpl1;->setFin(Z)V

    .line 707
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->sendFrame(Lorg/java_websocket/framing/Framedata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    .end local v0    # "frame":Lorg/java_websocket/framing/FramedataImpl1;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 708
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x41107ac000000000L    # 270000.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 711
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->onSocketFailure()V

    .line 712
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 5
    .param p0, "selfId"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/io/Serializable;
    .param p3, "status"    # I

    .prologue
    .line 550
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 551
    .local v1, "sessionIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v0, "extra":Landroid/os/Bundle;
    if-nez p2, :cond_3

    .line 560
    .end local p2    # "data":Ljava/io/Serializable;
    :cond_0
    :goto_0
    const-string v2, "AV_APPLICATION_ID"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v2, "AV_SESSION_INTENT_STATUS_KEY"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 564
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    const-string v2, "AVPushConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 568
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    const-string v2, "AVPushConnectionManager"

    const-string v3, "sent broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_2
    return-void

    .line 555
    .restart local p2    # "data":Ljava/io/Serializable;
    :cond_3
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 556
    const-string v2, "AV_SESSION_INTENT_DATA_KEY"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "data":Ljava/io/Serializable;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    .restart local p2    # "data":Ljava/io/Serializable;
    :cond_4
    instance-of v2, p2, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 558
    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cleanupSocketConnection()V
    .locals 3

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->close()V

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "AVPushConnectionManager"

    const-string v2, "Close socket client failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 188
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public forceTriggerReconnection()V
    .locals 2

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 718
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect(I)V

    .line 719
    return-void
.end method

.method public getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;
    .locals 7
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 152
    :try_start_0
    sget-object v5, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 153
    .local v1, "newAdded":Z
    :goto_0
    const/4 v2, 0x0

    .line 154
    .local v2, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v1, :cond_2

    .line 155
    new-instance v2, Lcom/avos/avoscloud/AVSession;

    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    new-instance v5, Lcom/avos/avoscloud/AVDefaultSessionListener;

    invoke-direct {v5, p0}, Lcom/avos/avoscloud/AVDefaultSessionListener;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V

    invoke-direct {v2, p1, v5}, Lcom/avos/avoscloud/AVSession;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/AVInternalSessionListener;)V

    .line 156
    .restart local v2    # "session":Lcom/avos/avoscloud/AVSession;
    sget-object v5, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v5

    iget-object v6, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v6}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-interface {v5, v3}, Lcom/avos/avospush/push/AVWebSocketListener;->onListenerAdded(Z)V

    .line 164
    .end local v1    # "newAdded":Z
    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    :goto_2
    return-object v2

    :cond_0
    move v1, v4

    .line 152
    goto :goto_0

    .restart local v1    # "newAdded":Z
    .restart local v2    # "session":Lcom/avos/avoscloud/AVSession;
    :cond_1
    move v3, v4

    .line 157
    goto :goto_1

    .line 160
    :cond_2
    sget-object v3, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    check-cast v2, Lcom/avos/avoscloud/AVSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "session":Lcom/avos/avoscloud/AVSession;
    goto :goto_2

    .line 163
    .end local v1    # "newAdded":Z
    .end local v2    # "session":Lcom/avos/avoscloud/AVSession;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public hookPingReceiver()V
    .locals 4

    .prologue
    .line 698
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-class v3, Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 701
    :cond_0
    return-void
.end method

.method public declared-synchronized initConnection()V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection(Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initConnection(Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;)V
    .locals 2
    .param p1, "cl"    # Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "push connection is open"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    if-eqz p1, :cond_1

    .line 133
    :try_start_1
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionInitListener:Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectedToPushServer()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-object v1, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVSession;

    .line 170
    .local v0, "session":Lcom/avos/avoscloud/AVSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/avos/avospush/push/AVWebSocketListener;->onListenerRemoved()V

    .line 173
    :cond_0
    return-void
.end method

.method public sendData(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/avos/avospush/session/CommandPacket;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 179
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmReceiver:Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method
