.class public Lcom/avos/avoscloud/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/avos/avoscloud/Session;


# static fields
.field static cachedSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field static final peerQueryListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/avos/avoscloud/OnlinePeerQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field static final signatureFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/SignatureFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allPeersId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field onlinePeersId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selfId:Ljava/lang/String;

.field signatureFactory:Lcom/avos/avoscloud/SignatureFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/SessionManager;->signatureFactoryMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "selfId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "onlinePeersIdString":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    const-class v2, Ljava/util/List;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AV_SESSION_PREFERENCE_PEERIDS_KEY"

    invoke-virtual {v2, v3, v4, v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "watchingPeerIds":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    .line 44
    if-eqz v1, :cond_1

    .line 45
    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    const-class v2, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/SessionManager;->signatureFactoryMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/SignatureFactory;

    iput-object v2, p0, Lcom/avos/avoscloud/SessionManager;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    .line 48
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;
    .locals 2
    .param p0, "selfId"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/SessionManager;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/SessionManager;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "sm":Lcom/avos/avoscloud/SessionManager;
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v0    # "sm":Lcom/avos/avoscloud/SessionManager;
    :cond_1
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/SessionManager;

    return-object v1
.end method

.method private sendErrorBroadcast(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v0, "exceptionIntent":Landroid/content/Intent;
    const-string v2, "com.avoscloud.session.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v1, "extra":Landroid/os/Bundle;
    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 346
    const-string v2, "AV_APPLICATION_ID"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v2, "AV_SESSION_INTENT_STATUS_KEY"

    const/16 v3, 0x4e28

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 351
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    return-void
.end method

.method private validateNullablePeerIds(Ljava/util/List;)Z
    .locals 2
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
    .line 356
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "Null id in session id list."

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 359
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 360
    const/4 v1, 0x0

    goto :goto_0
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

    .line 367
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    :cond_0
    const-string v2, "empty peersId Exception"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v2, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 369
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "empty peersId Exception"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 380
    :goto_0
    return v1

    .line 373
    :cond_1
    :try_start_0
    const-string v2, "Null id in session id list."

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    const/4 v1, 0x1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 376
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2715

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    return-void
.end method

.method public getAllPeers()Ljava/util/List;
    .locals 2
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
    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v0, "allPeersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getGroup()Lcom/avos/avoscloud/Group;
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVGroup;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVGroup;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/avos/avoscloud/AVHistoryMessageQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery;-><init>()V

    return-object v0
.end method

.method public getOnlinePeers()Ljava/util/List;
    .locals 2
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
    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "onlineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSelfPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method public isOnline(Ljava/lang/String;)Z
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->isSessionOpen(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWatching(Ljava/lang/String;)Z
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "selfId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    .local p2, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/SessionManager;->open(Ljava/util/List;)V

    .line 66
    return-void
.end method

.method public open(Ljava/util/List;)V
    .locals 12
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
    .line 70
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/SessionManager;->validateNullablePeerIds(Ljava/util/List;)Z

    move-result v6

    .line 71
    .local v6, "peersIdValidation":Z
    if-nez v6, :cond_0

    .line 127
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v8, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 76
    iget-object v8, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    .line 79
    new-instance v0, Ljava/lang/Exception;

    const-string v8, "too many peers to watch.Maximum is 100"

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "too many peers to watch.Maximum is 100"

    invoke-static {v8}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v8

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getSelfPeerId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "PARAM_SESSION_PEERIDS"

    invoke-interface {v5, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v8, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v9

    const-string v10, "open"

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "packetString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 98
    .local v3, "packetLength":I
    :try_start_0
    const-string v8, "utf-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v3, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "open packet lenght is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 105
    :cond_2
    const/16 v8, 0x1388

    if-le v3, v8, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 109
    .local v1, "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 110
    .local v7, "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v8, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {p0, v8, v1}, Lcom/avos/avoscloud/SessionManager;->open(Ljava/lang/String;Ljava/util/List;)V

    .line 113
    invoke-virtual {p0, v7}, Lcom/avos/avoscloud/SessionManager;->watchPeers(Ljava/util/List;)Z

    goto/16 :goto_0

    .line 99
    .end local v1    # "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v8, "Your peerId is too long for session."

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v9, Lcom/avos/avoscloud/PushService;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v2, "i":Landroid/content/Intent;
    const-string v8, "com.avoscloud.session.action"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v8, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v8, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v9, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v8, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v9, 0x2714

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    sget-object v8, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/avos/avoscloud/OnlinePeerQueryListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/OnlinePeerQueryListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Listener cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2716

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 292
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/avos/avoscloud/AVMessage;

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/SessionManager;->validatePeerIds(Ljava/util/List;)Z

    move-result v1

    .line 162
    .local v1, "peersIdValidation":Z
    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    const-string v2, "msg is empty"

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 167
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "can\'t send empty msg"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    iget-boolean v2, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    if-eqz v2, :cond_2

    .line 172
    const-string v2, "Message receipt only support for one receiver message"

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 173
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Message receipt only support for one receiver message"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-boolean v2, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    if-eqz v2, :cond_3

    .line 179
    const-string v2, "Message receipt only support for non-transient message"

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Message receipt only support for non-transient message"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 185
    :cond_3
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.avoscloud.session.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v2, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v2, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v3, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected setAllPeers(Ljava/util/List;)V
    .locals 1
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
    .line 306
    .local p1, "peers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 308
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 310
    :cond_0
    return-void
.end method

.method public setMessageTimeout(I)V
    .locals 3
    .param p1, "timeoutSecs"    # I

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2713

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    return-void
.end method

.method public setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 1
    .param p1, "signatureFactory"    # Lcom/avos/avoscloud/SignatureFactory;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/avos/avoscloud/SessionManager;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    .line 330
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 331
    invoke-static {p1}, Lcom/avos/avoscloud/AVSession;->setStaticSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V

    .line 333
    :cond_0
    return-void
.end method

.method public unwatchPeers(Ljava/util/List;)V
    .locals 4
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
    .line 261
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/SessionManager;->validatePeerIds(Ljava/util/List;)Z

    move-result v1

    .line 262
    .local v1, "peersIdValidation":Z
    if-nez v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.avoscloud.session.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v2, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v2, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v3, 0x2712

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 271
    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public watchPeers(Ljava/util/List;)Z
    .locals 13
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
    .line 200
    .local p1, "peerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/SessionManager;->validatePeerIds(Ljava/util/List;)Z

    move-result v6

    .line 201
    .local v6, "peersIdValidation":Z
    if-nez v6, :cond_0

    .line 202
    const/4 v10, 0x0

    .line 255
    :goto_0
    return v10

    .line 204
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 205
    .local v9, "tempPeersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v9, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-interface {v9, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 207
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    const/16 v11, 0x64

    if-le v10, v11, :cond_1

    .line 208
    new-instance v0, Ljava/lang/Exception;

    const-string v10, "too many peers to watch.Maximum is 100"

    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "too many peers to watch.Maximum is 100"

    invoke-static {v10}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 212
    const/4 v10, 0x0

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 216
    .local v7, "sig":Lcom/avos/avoscloud/Signature;
    const-string v10, "PARAM_SESSION_PEERIDS"

    invoke-interface {v5, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v10, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v10, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v10, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v11

    const-string v12, "add"

    invoke-static {v10, v11, v12, v7}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "packetString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 226
    .local v3, "packetLength":I
    :try_start_0
    const-string v10, "utf-8"

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v3, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 232
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "watch packet lenght is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 234
    :cond_2
    const/16 v10, 0x1388

    if-le v3, v10, :cond_5

    .line 236
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 237
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 238
    .local v1, "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 239
    .local v8, "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-interface {p1, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {p1, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/SessionManager;->watchPeers(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v8}, Lcom/avos/avoscloud/SessionManager;->watchPeers(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 227
    .end local v1    # "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 228
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_1

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 244
    .end local v1    # "headHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "tailHalf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v10, "Your peerId is too long for session."

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 246
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    sget-object v10, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v11, Lcom/avos/avoscloud/PushService;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v2, "i":Landroid/content/Intent;
    const-string v10, "com.avoscloud.session.action"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v10, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v10, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v11, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v10, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v11, 0x2711

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    sget-object v10, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 255
    const/4 v10, 0x1

    goto/16 :goto_0
.end method
