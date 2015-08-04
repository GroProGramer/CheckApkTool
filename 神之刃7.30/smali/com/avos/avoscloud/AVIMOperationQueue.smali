.class Lcom/avos/avoscloud/AVIMOperationQueue;
.super Ljava/lang/Object;
.source "AVIMOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    }
.end annotation


# static fields
.field static timeoutCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static timeoutHandler:Landroid/os/Handler;

.field static timeoutHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/avos/avoscloud/AVIMOperationQueue$Operation;",
            ">;"
        }
    .end annotation
.end field

.field operationQueue:Lcom/avos/avospush/session/MessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avospush/session/MessageQueue",
            "<",
            "Lcom/avos/avoscloud/AVIMOperationQueue$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutCache:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.avos.avoscloud.im.v2.timeoutHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandlerThread:Landroid/os/HandlerThread;

    .line 35
    sget-object v0, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operation.queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    invoke-direct {v0, v1, v2}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    .line 45
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMOperationQueue;->setupCache()V

    .line 46
    return-void
.end method

.method private setupCache()V
    .locals 4

    .prologue
    .line 49
    iget-object v2, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v2}, Lcom/avos/avospush/session/MessageQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 50
    .local v1, "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    iget v2, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    const v3, -0x10001

    if-eq v2, v3, :cond_0

    .line 51
    iget-object v2, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    iget v3, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 54
    .end local v1    # "op":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->clear()V

    .line 98
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 99
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V
    .locals 4
    .param p1, "op"    # Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .prologue
    .line 57
    iget v1, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    const v2, -0x10001

    if-eq v1, v2, :cond_0

    .line 58
    iget-object v1, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    iget v2, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/avos/avoscloud/AVIMOperationQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$1;-><init>(Lcom/avos/avoscloud/AVIMOperationQueue;Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 71
    .local v0, "timeoutTask":Ljava/lang/Runnable;
    sget-object v1, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutCache:Landroid/util/SparseArray;

    iget v2, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v1, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .end local v0    # "timeoutTask":Ljava/lang/Runnable;
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v1, p1}, Lcom/avos/avospush/session/MessageQueue;->offer(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public poll()Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    return-object v0
.end method

.method public poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 78
    const v2, -0x10001

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 80
    .local v0, "returnValue":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    iget-object v2, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    iget-object v2, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v2, v0}, Lcom/avos/avospush/session/MessageQueue;->remove(Ljava/lang/Object;)Z

    .line 82
    sget-object v2, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 83
    .local v1, "timeoutTask":Ljava/lang/Runnable;
    sget-object v2, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 84
    if-eqz v1, :cond_0

    .line 85
    sget-object v2, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    .end local v0    # "returnValue":Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    .end local v1    # "timeoutTask":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll()Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    goto :goto_0
.end method
