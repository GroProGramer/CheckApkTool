.class public Lcom/linekong/voice/core/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static ENCODER_BUFFER_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Encoder"


# instance fields
.field private mCacheData:[S

.field private mCacheSize:I

.field private mConsumer:Lcom/linekong/voice/io/Consumer;

.field private mConsumerThread:Ljava/lang/Thread;

.field private mDataBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/linekong/voice/util/DataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsRunning:Z

.field private final mMutex:Ljava/lang/Object;

.field private mProcessedData:[B

.field private mSpeex:Lcom/linekong/voice/core/Speex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x140

    sput v0, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/linekong/voice/core/Speex;->getInstance()Lcom/linekong/voice/core/Speex;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/core/Encoder;->mSpeex:Lcom/linekong/voice/core/Speex;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    .line 23
    iput-object v1, p0, Lcom/linekong/voice/core/Encoder;->mProcessedData:[B

    .line 25
    iput-object v1, p0, Lcom/linekong/voice/core/Encoder;->mDataBuffers:Ljava/util/List;

    .line 96
    iput-object v1, p0, Lcom/linekong/voice/core/Encoder;->mCacheData:[S

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/core/Encoder;->mDataBuffers:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/linekong/voice/io/FileUploadConsumer;

    invoke-direct {v0, p1, p2}, Lcom/linekong/voice/io/FileUploadConsumer;-><init>(Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/linekong/voice/core/Encoder;->mConsumer:Lcom/linekong/voice/io/Consumer;

    .line 36
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/linekong/voice/core/Encoder;->mConsumer:Lcom/linekong/voice/io/Consumer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/linekong/voice/core/Encoder;->mConsumerThread:Ljava/lang/Thread;

    .line 38
    iget-object v0, p0, Lcom/linekong/voice/core/Encoder;->mSpeex:Lcom/linekong/voice/core/Speex;

    invoke-virtual {v0}, Lcom/linekong/voice/core/Speex;->getEncodeFrameSize()I

    move-result v0

    sput v0, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    .line 39
    sget v0, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/linekong/voice/core/Encoder;->mProcessedData:[B

    .line 40
    sget v0, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/linekong/voice/core/Encoder;->mCacheData:[S

    .line 42
    sget v0, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/linekong/voice/core/Speex;->mEncodeSize:I

    .line 43
    const-string v0, "Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Speex Frame Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "samples!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method private isIdle()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/linekong/voice/core/Encoder;->mDataBuffers:Ljava/util/List;

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
    .locals 4
    .param p1, "isRunning"    # Z

    .prologue
    .line 182
    iget-object v1, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    const-string v0, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoder: set running to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-boolean p1, p0, Lcom/linekong/voice/core/Encoder;->mIsRunning:Z

    .line 185
    iget-object v0, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAudioID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/linekong/voice/core/Encoder;->mConsumer:Lcom/linekong/voice/io/Consumer;

    check-cast v0, Lcom/linekong/voice/io/FileUploadConsumer;

    invoke-virtual {v0}, Lcom/linekong/voice/io/FileUploadConsumer;->getAudioID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-boolean v0, p0, Lcom/linekong/voice/core/Encoder;->mIsRunning:Z

    monitor-exit v1

    return v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putData([SI)V
    .locals 11
    .param p1, "data"    # [S
    .param p2, "size"    # I

    .prologue
    const/4 v10, 0x0

    .line 100
    iget v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    if-nez v4, :cond_2

    .line 101
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    div-int v0, p2, v4

    .line 103
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 104
    new-instance v1, Lcom/linekong/voice/util/DataBuffer;

    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    invoke-direct {v1, v4}, Lcom/linekong/voice/util/DataBuffer;-><init>(I)V

    .line 105
    .local v1, "db":Lcom/linekong/voice/util/DataBuffer;
    iget-object v5, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 106
    :try_start_0
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    mul-int/2addr v4, v2

    iget-object v6, v1, Lcom/linekong/voice/util/DataBuffer;->mData:[S

    const/4 v7, 0x0

    sget v8, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    invoke-static {p1, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mDataBuffers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 110
    monitor-exit v5

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 114
    .end local v1    # "db":Lcom/linekong/voice/util/DataBuffer;
    :cond_0
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    rem-int v4, p2, v4

    iput v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    .line 115
    iget v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    if-lez v4, :cond_1

    .line 116
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/linekong/voice/core/Encoder;->mCacheData:[S

    iget v6, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    invoke-static {p1, v4, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 119
    :cond_2
    iget v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    add-int/2addr v4, p2

    sget v5, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    if-ge v4, v5, :cond_3

    .line 121
    iget v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    .line 122
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheData:[S

    iget v5, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    invoke-static {p1, v10, v4, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 124
    :cond_3
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheData:[S

    iget v5, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    sget v6, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    iget v7, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    sub-int/2addr v6, v7

    invoke-static {p1, v10, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    new-instance v1, Lcom/linekong/voice/util/DataBuffer;

    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    invoke-direct {v1, v4}, Lcom/linekong/voice/util/DataBuffer;-><init>(I)V

    .line 127
    .restart local v1    # "db":Lcom/linekong/voice/util/DataBuffer;
    iget-object v5, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 128
    :try_start_1
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheData:[S

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/linekong/voice/util/DataBuffer;->mData:[S

    const/4 v8, 0x0

    sget v9, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    invoke-static {v4, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mDataBuffers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 132
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    iget v5, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    sub-int/2addr v4, v5

    sub-int/2addr p2, v4

    .line 136
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    iget v5, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    sub-int v3, v4, v5

    .line 137
    .local v3, "offset":I
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    div-int v0, p2, v4

    .line 139
    .restart local v0    # "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 140
    new-instance v1, Lcom/linekong/voice/util/DataBuffer;

    .end local v1    # "db":Lcom/linekong/voice/util/DataBuffer;
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    invoke-direct {v1, v4}, Lcom/linekong/voice/util/DataBuffer;-><init>(I)V

    .line 141
    .restart local v1    # "db":Lcom/linekong/voice/util/DataBuffer;
    iget-object v5, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 142
    :try_start_2
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    iget-object v6, v1, Lcom/linekong/voice/util/DataBuffer;->mData:[S

    const/4 v7, 0x0

    sget v8, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    invoke-static {p1, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mDataBuffers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 146
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 132
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "offset":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 146
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "offset":I
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    .line 150
    :cond_4
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    rem-int v4, p2, v4

    iput v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    .line 151
    iget v4, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    if-lez v4, :cond_1

    .line 152
    sget v4, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/linekong/voice/core/Encoder;->mCacheData:[S

    iget v6, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    invoke-static {p1, v4, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1
.end method

.method public run()V
    .locals 9

    .prologue
    .line 52
    const/16 v3, -0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 55
    const/4 v2, 0x0

    .line 58
    .local v2, "getSize":I
    iget-object v3, p0, Lcom/linekong/voice/core/Encoder;->mConsumer:Lcom/linekong/voice/io/Consumer;

    invoke-virtual {v3}, Lcom/linekong/voice/io/Consumer;->start()V

    .line 59
    iget-object v3, p0, Lcom/linekong/voice/core/Encoder;->mConsumerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 61
    const-string v3, "Encoder"

    const-string v4, "Encoder start to encode!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/linekong/voice/core/Encoder;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/linekong/voice/core/Encoder;->isIdle()Z

    move-result v3

    if-nez v3, :cond_4

    .line 63
    :cond_0
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 64
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/linekong/voice/core/Encoder;->isIdle()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    :try_start_1
    invoke-virtual {p0}, Lcom/linekong/voice/core/Encoder;->isRunning()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    .line 76
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    iget-object v4, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 78
    :try_start_3
    iget-object v3, p0, Lcom/linekong/voice/core/Encoder;->mDataBuffers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/linekong/voice/core/Encoder;->mDataBuffers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linekong/voice/util/DataBuffer;

    .line 81
    .local v0, "db":Lcom/linekong/voice/util/DataBuffer;
    iget-object v3, p0, Lcom/linekong/voice/core/Encoder;->mSpeex:Lcom/linekong/voice/core/Speex;

    iget-object v5, v0, Lcom/linekong/voice/util/DataBuffer;->mData:[S

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/linekong/voice/core/Encoder;->mProcessedData:[B

    iget v8, v0, Lcom/linekong/voice/util/DataBuffer;->mSize:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/linekong/voice/core/Speex;->encode([SI[BI)I

    move-result v2

    .line 82
    sput v2, Lcom/linekong/voice/core/Speex;->mDecodeSize:I

    .line 84
    if-lez v2, :cond_2

    .line 85
    iget-object v3, p0, Lcom/linekong/voice/core/Encoder;->mConsumer:Lcom/linekong/voice/io/Consumer;

    iget-object v5, p0, Lcom/linekong/voice/core/Encoder;->mProcessedData:[B

    invoke-virtual {v3, v5, v2}, Lcom/linekong/voice/io/Consumer;->putData([BI)V

    .line 88
    .end local v0    # "db":Lcom/linekong/voice/util/DataBuffer;
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 71
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 91
    :cond_4
    const-string v3, "Encoder"

    const-string v4, "Encoder finish encoder!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/linekong/voice/core/Encoder;->mConsumer:Lcom/linekong/voice/io/Consumer;

    invoke-virtual {v3}, Lcom/linekong/voice/io/Consumer;->stop()V

    .line 93
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/linekong/voice/core/Encoder;->setRunning(Z)V

    .line 164
    return-void
.end method

.method public stop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 168
    iget v1, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    if-lez v1, :cond_0

    .line 169
    new-instance v0, Lcom/linekong/voice/util/DataBuffer;

    sget v1, Lcom/linekong/voice/core/Encoder;->ENCODER_BUFFER_SIZE:I

    invoke-direct {v0, v1}, Lcom/linekong/voice/util/DataBuffer;-><init>(I)V

    .line 170
    .local v0, "db":Lcom/linekong/voice/util/DataBuffer;
    iget-object v2, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/linekong/voice/core/Encoder;->mCacheData:[S

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/linekong/voice/util/DataBuffer;->mData:[S

    const/4 v5, 0x0

    iget v6, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v1, p0, Lcom/linekong/voice/core/Encoder;->mDataBuffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lcom/linekong/voice/core/Encoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 175
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v0    # "db":Lcom/linekong/voice/util/DataBuffer;
    :cond_0
    iput v7, p0, Lcom/linekong/voice/core/Encoder;->mCacheSize:I

    .line 178
    invoke-direct {p0, v7}, Lcom/linekong/voice/core/Encoder;->setRunning(Z)V

    .line 179
    return-void

    .line 175
    .restart local v0    # "db":Lcom/linekong/voice/util/DataBuffer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
