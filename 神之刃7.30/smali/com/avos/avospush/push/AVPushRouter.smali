.class public Lcom/avos/avospush/push/AVPushRouter;
.super Ljava/lang/Object;
.source "AVPushRouter.java"


# static fields
.field private static final CN_DEFAULT_PUSH_SERVER:Ljava/lang/String; = "ws://push.avoscloud.com/"

.field private static final CN_PUSH_GROUP:Ljava/lang/String; = "g0"

.field private static final CN_ROUTER_SERVICE_FMT:Ljava/lang/String; = "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

.field private static final EXPIRE_AT:Ljava/lang/String; = "expireAt"

.field private static final GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final PUSH_SERVER_CACHE_KEY_FMT:Ljava/lang/String; = "com.avos.push.router.server.cache%s"

.field private static final SECONDARY:Ljava/lang/String; = "secondary"

.field public static final SERVER:Ljava/lang/String; = "server"

.field private static final US_DEFAULT_PUSH_SERVER:Ljava/lang/String; = "ws://push.avoscloud.us/"

.field private static final US_PUSH_GROUP:Ljava/lang/String; = "a0"

.field private static final US_ROUTER_SERVICE_FMT:Ljava/lang/String; = "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

.field private static currentDefaultPushServer:Ljava/lang/String;

.field private static currentPushGroup:Ljava/lang/String;

.field private static currentRouterServiceFMT:Ljava/lang/String;


# instance fields
.field private final connectionResponseHandler:Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

.field private final context:Landroid/content/Context;

.field private final installationId:Ljava/lang/String;

.field private ttlInSecs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "g0"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    .line 43
    const-string v0, "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentRouterServiceFMT:Ljava/lang/String;

    .line 44
    const-string v0, "ws://push.avoscloud.com/"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentDefaultPushServer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installationId"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I

    .line 59
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/avos/avospush/push/AVPushRouter;->installationId:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/avos/avospush/push/AVPushRouter;->connectionResponseHandler:Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

    .line 62
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 25
    sput-object p0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/avos/avospush/push/AVPushRouter;)I
    .locals 1
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;

    .prologue
    .line 25
    iget v0, p0, Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I

    return v0
.end method

.method static synthetic access$102(Lcom/avos/avospush/push/AVPushRouter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/avos/avospush/push/AVPushRouter;->ttlInSecs:I

    return p1
.end method

.method static synthetic access$200(Lcom/avos/avospush/push/AVPushRouter;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/avos/avospush/push/AVPushRouter;->cachePushServer(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/avos/avospush/push/AVPushRouter;ILjava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avospush/push/AVPushRouter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/avos/avospush/push/AVPushRouter;->processRouterInformation(ILjava/util/Map;)V

    return-void
.end method

.method private cachePushServer(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pushServerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 187
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    const-string v3, "com.avos.push.router.server.cache%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 192
    .local v1, "pushServerData":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "groupId"

    const-string v2, "groupId"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v3, "server"

    const-string v2, "server"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v3, "expireAt"

    const-string v2, "expireAt"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v3, "secondary"

    const-string v2, "secondary"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void
.end method

.method private getPushServerFromCache()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v1, "pushServerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    const-string v3, "com.avos.push.router.server.cache%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, "pushServerData":Landroid/content/SharedPreferences;
    const-string v2, "groupId"

    const-string v3, "groupId"

    sget-object v4, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "server"

    const-string v3, "server"

    sget-object v4, Lcom/avos/avospush/push/AVPushRouter;->currentDefaultPushServer:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v2, "expireAt"

    const-string v3, "expireAt"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "secondary"

    const-string v3, "secondary"

    sget-object v4, Lcom/avos/avospush/push/AVPushRouter;->currentDefaultPushServer:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v1
.end method

.method private getRouterUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    sget-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentRouterServiceFMT:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/avos/avospush/push/AVPushRouter;->installationId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processRouterInformation(ILjava/util/Map;)V
    .locals 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->connectionResponseHandler:Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;->onResponse(ILjava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/push/AVPushRouter;->connectionResponseHandler:Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "server"

    :goto_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;->onResponse(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "secondary"

    goto :goto_1
.end method

.method public static useAVOSCloudCN()V
    .locals 1

    .prologue
    .line 201
    const-string v0, "g0"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    .line 202
    const-string v0, "ws://push.avoscloud.com/"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentDefaultPushServer:Ljava/lang/String;

    .line 203
    const-string v0, "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentRouterServiceFMT:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public static useAVOSCloudUS()V
    .locals 1

    .prologue
    .line 207
    const-string v0, "a0"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentPushGroup:Ljava/lang/String;

    .line 208
    const-string v0, "ws://push.avoscloud.us/"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentDefaultPushServer:Ljava/lang/String;

    .line 209
    const-string v0, "http://router.%s.push.avoscloud.com/v1/route?appId=%s&installationId=%s&secure=1"

    sput-object v0, Lcom/avos/avospush/push/AVPushRouter;->currentRouterServiceFMT:Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public cleanPushServerCache()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 164
    iget-object v2, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    const-string v3, "com.avos.push.router.server.cache%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 169
    .local v1, "pushServerData":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public fetchPushServer(I)V
    .locals 9
    .param p1, "code"    # I

    .prologue
    const/4 v8, 0x0

    .line 81
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushRouter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/16 v0, 0xf

    invoke-direct {p0, v0, v8}, Lcom/avos/avospush/push/AVPushRouter;->processRouterInformation(ILjava/util/Map;)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushRouter;->getPushServerFromCache()Ljava/util/HashMap;

    move-result-object v7

    .line 94
    .local v7, "pushServerCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v7, :cond_2

    const-string v0, "expireAt"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    .line 96
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get push server from cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-direct {p0, p1, v7}, Lcom/avos/avospush/push/AVPushRouter;->processRouterInformation(ILjava/util/Map;)V

    .line 146
    :goto_0
    return-void

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/avos/avospush/push/AVPushRouter;->getRouterUrl()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "routerUrlStr":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try to fetch push server from :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 107
    :cond_3
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getDirectlyClientForUse()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v4

    .line 108
    .local v4, "client":Lcom/loopj/android/http/AsyncHttpClient;
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    new-instance v3, Lcom/avos/avospush/push/AVPushRouter$1;

    invoke-direct {v3, p0, p1}, Lcom/avos/avospush/push/AVPushRouter$1;-><init>(Lcom/avos/avospush/push/AVPushRouter;I)V

    .line 135
    .local v3, "callback":Lcom/avos/avoscloud/GenericObjectCallback;
    new-instance v8, Lcom/avos/avoscloud/GetHttpResponseHandler;

    new-instance v0, Lcom/avos/avospush/push/AVPushRouter$2;

    move-object v1, p0

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/avos/avospush/push/AVPushRouter$2;-><init>(Lcom/avos/avospush/push/AVPushRouter;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/loopj/android/http/AsyncHttpClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    sget-object v1, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-direct {v8, v0, v1, v2}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v8}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_0

    .line 144
    .end local v3    # "callback":Lcom/avos/avoscloud/GenericObjectCallback;
    :cond_4
    invoke-direct {p0, p1, v8}, Lcom/avos/avospush/push/AVPushRouter;->processRouterInformation(ILjava/util/Map;)V

    goto :goto_0
.end method
