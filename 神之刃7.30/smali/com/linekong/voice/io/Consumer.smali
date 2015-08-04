.class public abstract Lcom/linekong/voice/io/Consumer;
.super Ljava/lang/Object;
.source "Consumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mByteBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/linekong/voice/util/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsRunning:Z

.field private final mMutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linekong/voice/io/Consumer;->mByteBuffers:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/linekong/voice/io/Consumer;->mMutex:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linekong/voice/io/Consumer;->mIsRunning:Z

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/io/Consumer;->mByteBuffers:Ljava/util/List;

    .line 18
    return-void
.end method

.method private isIdle()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/linekong/voice/io/Consumer;->mByteBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRunning(Z)V
    .locals 3
    .param p1, "isRunning"    # Z

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/linekong/voice/io/Consumer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRunning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/linekong/voice/io/Consumer;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iput-boolean p1, p0, Lcom/linekong/voice/io/Consumer;->mIsRunning:Z

    .line 113
    iget-object v0, p0, Lcom/linekong/voice/io/Consumer;->mMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract doFinish()V
.end method

.method public abstract doProcess(Lcom/linekong/voice/util/ByteBuffer;)I
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/linekong/voice/io/Consumer;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/linekong/voice/io/Consumer;->mIsRunning:Z

    monitor-exit v1

    return v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putData([BI)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/linekong/voice/util/ByteBuffer;

    invoke-direct {v0, p2}, Lcom/linekong/voice/util/ByteBuffer;-><init>(I)V

    .line 72
    .local v0, "dataBuffer":Lcom/linekong/voice/util/ByteBuffer;
    iget-object v2, p0, Lcom/linekong/voice/io/Consumer;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    const/4 v4, 0x0

    invoke-static {p1, v1, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v1, p0, Lcom/linekong/voice/io/Consumer;->mByteBuffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/linekong/voice/io/Consumer;->mMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 77
    monitor-exit v2

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putData([SI)V
    .locals 5
    .param p1, "data"    # [S
    .param p2, "size"    # I

    .prologue
    .line 81
    mul-int/lit8 v2, p2, 0x2

    new-array v0, v2, [B

    .line 83
    .local v0, "byteDate":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 84
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v3, p1, v1

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 85
    mul-int/lit8 v2, v1, 0x2

    aget-short v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    mul-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/linekong/voice/io/Consumer;->putData([BI)V

    .line 89
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/linekong/voice/io/Consumer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/linekong/voice/io/Consumer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/linekong/voice/io/Consumer;->isIdle()Z

    move-result v2

    if-nez v2, :cond_4

    .line 26
    :cond_0
    iget-object v3, p0, Lcom/linekong/voice/io/Consumer;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 27
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/linekong/voice/io/Consumer;->isIdle()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :try_start_1
    invoke-virtual {p0}, Lcom/linekong/voice/io/Consumer;->isRunning()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    .line 39
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    iget-object v3, p0, Lcom/linekong/voice/io/Consumer;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 41
    :try_start_3
    iget-object v2, p0, Lcom/linekong/voice/io/Consumer;->mByteBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/linekong/voice/io/Consumer;->mByteBuffers:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linekong/voice/util/ByteBuffer;

    .line 43
    .local v0, "byteBuffer":Lcom/linekong/voice/util/ByteBuffer;
    invoke-virtual {p0, v0}, Lcom/linekong/voice/io/Consumer;->doProcess(Lcom/linekong/voice/util/ByteBuffer;)I

    .line 45
    .end local v0    # "byteBuffer":Lcom/linekong/voice/util/ByteBuffer;
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 34
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/linekong/voice/io/Consumer;->mMutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 39
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 48
    :cond_4
    invoke-virtual {p0}, Lcom/linekong/voice/io/Consumer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doFinish "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/linekong/voice/io/Consumer;->doFinish()V

    .line 50
    return-void
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/linekong/voice/io/Consumer;->setRunning(Z)V

    .line 100
    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/linekong/voice/io/Consumer;->setRunning(Z)V

    .line 107
    return-void
.end method
