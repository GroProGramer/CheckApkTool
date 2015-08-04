.class public Lcom/avos/avoscloud/PushConnectionRetryController;
.super Ljava/lang/Object;
.source "PushConnectionRetryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;
    }
.end annotation


# static fields
.field public static final CODE_CONNECTION_INIT:I = 0x0

.field public static final CODE_MASTER_SERVER:I = 0x1

.field public static final CODE_ROUTER_ERROR:I = 0xf

.field public static final CODE_SECONDARY_SERVER:I = 0x2

.field static final MAX_RETRY_TIMES:I = 0xa

.field static final RETRY_INTERVAL:I = 0xea60


# instance fields
.field failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

.field handler:Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

.field private volatile nextRequestCode:I

.field private final reconnectTaskHandler:Landroid/os/Handler;

.field retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avospush/session/MessageQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field router:Lcom/avos/avospush/push/AVPushRouter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installationId"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    .line 62
    new-instance v0, Lcom/avos/avoscloud/PushConnectionRetryController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/PushConnectionRetryController$2;-><init>(Lcom/avos/avoscloud/PushConnectionRetryController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, p2, v1}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    .line 35
    iput-object p3, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->handler:Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    new-instance v0, Lcom/avos/avospush/push/AVPushRouter;

    new-instance v1, Lcom/avos/avoscloud/PushConnectionRetryController$1;

    invoke-direct {v1, p0, p3}, Lcom/avos/avoscloud/PushConnectionRetryController$1;-><init>(Lcom/avos/avoscloud/PushConnectionRetryController;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/avos/avospush/push/AVPushRouter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->router:Lcom/avos/avospush/push/AVPushRouter;

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/PushConnectionRetryController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/PushConnectionRetryController;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    return p1
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/PushConnectionRetryController;)J
    .locals 2
    .param p0, "x0"    # Lcom/avos/avoscloud/PushConnectionRetryController;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/PushConnectionRetryController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/PushConnectionRetryController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getInterval()J
    .locals 7

    .prologue
    const/16 v1, 0x8

    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 117
    .local v0, "failures":I
    if-gt v0, v1, :cond_0

    .line 118
    :goto_0
    const-wide v1, 0x408f400000000000L    # 1000.0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-long v1, v1

    monitor-exit p0

    return-wide v1

    :cond_0
    move v0, v1

    .line 117
    goto :goto_0

    .line 116
    .end local v0    # "failures":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private triggerRouterRequest(J)V
    .locals 2
    .param p1, "currentTS"    # J

    .prologue
    .line 106
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/MessageQueue;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->router:Lcom/avos/avospush/push/AVPushRouter;

    iget v1, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    invoke-virtual {v0, v1}, Lcom/avos/avospush/push/AVPushRouter;->fetchPushServer(I)V

    .line 109
    return-void
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->clear()V

    .line 125
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSocketFailure()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 134
    iget v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    xor-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    .line 135
    return-void
.end method

.method public onSocketSuccess()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 130
    return-void
.end method

.method public tryConnect()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect(I)V

    .line 113
    return-void
.end method

.method public tryConnect(I)V
    .locals 14
    .param p1, "code"    # I

    .prologue
    const/4 v13, 0x1

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    .local v0, "currentTS":J
    if-eqz p1, :cond_4

    .line 73
    const-wide/32 v10, 0xea60

    sub-long v5, v0, v10

    .line 74
    .local v5, "lastTS":J
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 75
    .local v7, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v10, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v10}, Lcom/avos/avospush/session/MessageQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 76
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v10, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v10}, Lcom/avos/avospush/session/MessageQueue;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 78
    .local v3, "lastRetryTimestamp":J
    invoke-direct {p0}, Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J

    move-result-wide v10

    sub-long v10, v0, v10

    cmp-long v10, v3, v10

    if-lez v10, :cond_2

    .line 79
    iget-object v10, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    invoke-virtual {v10, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "try to reconnect to push server in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J

    move-result-wide v11

    add-long/2addr v11, v3

    sub-long/2addr v11, v0

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v10, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    invoke-virtual {v11, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-direct {p0}, Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J

    move-result-wide v12

    add-long/2addr v12, v3

    sub-long/2addr v12, v0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 103
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v3    # "lastRetryTimestamp":J
    .end local v5    # "lastTS":J
    .end local v7    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :goto_0
    return-void

    .line 90
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v5    # "lastTS":J
    .restart local v7    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 92
    .local v8, "ts":J
    cmp-long v10, v8, v5

    if-gez v10, :cond_2

    .line 93
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    .end local v8    # "ts":J
    :cond_3
    iget-object v10, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v10, v7}, Lcom/avos/avospush/session/MessageQueue;->removeAll(Ljava/util/Collection;)Z

    .line 97
    iget-object v10, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v10}, Lcom/avos/avospush/session/MessageQueue;->size()I

    move-result v10

    const/16 v11, 0xa

    if-gt v10, v11, :cond_1

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->triggerRouterRequest(J)V

    goto :goto_0

    .line 101
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v5    # "lastTS":J
    .end local v7    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->triggerRouterRequest(J)V

    goto :goto_0
.end method
