.class public Lcom/linekong/voice/core/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static DECODER_BUFFER_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Decorder"


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

.field private mCacheData:[B

.field private mCacheSize:I

.field private mConsumer:Lcom/linekong/voice/io/FilePlayerConsumer;

.field private mConsumerThread:Ljava/lang/Thread;

.field private volatile mIsRunning:Z

.field private final mMutex:Ljava/lang/Object;

.field private mSpeex:Lcom/linekong/voice/core/Speex;

.field private processedData:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xa0

    sput v0, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "audioID"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/linekong/voice/core/Speex;->getInstance()Lcom/linekong/voice/core/Speex;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/core/Decoder;->mSpeex:Lcom/linekong/voice/core/Speex;

    .line 22
    iput-object v1, p0, Lcom/linekong/voice/core/Decoder;->mByteBuffers:Ljava/util/List;

    .line 26
    iput-object v1, p0, Lcom/linekong/voice/core/Decoder;->processedData:[S

    .line 89
    iput-object v1, p0, Lcom/linekong/voice/core/Decoder;->mCacheData:[B

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/core/Decoder;->mByteBuffers:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/linekong/voice/io/FilePlayerConsumer;

    invoke-direct {v0, p1, p2, p3}, Lcom/linekong/voice/io/FilePlayerConsumer;-><init>(Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/linekong/voice/core/Decoder;->mConsumer:Lcom/linekong/voice/io/FilePlayerConsumer;

    .line 35
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/linekong/voice/core/Decoder;->mConsumer:Lcom/linekong/voice/io/FilePlayerConsumer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/linekong/voice/core/Decoder;->mConsumerThread:Ljava/lang/Thread;

    .line 37
    sget v0, Lcom/linekong/voice/core/Speex;->mDecodeSize:I

    sput v0, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    .line 38
    sget v0, Lcom/linekong/voice/core/Speex;->mEncodeSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/linekong/voice/core/Decoder;->processedData:[S

    .line 40
    sget v0, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/linekong/voice/core/Decoder;->mCacheData:[B

    .line 41
    const-string v0, "Decorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/linekong/voice/core/Speex;->mEncodeSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/linekong/voice/core/Speex;->mDecodeSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method private isIdle()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/linekong/voice/core/Decoder;->mByteBuffers:Ljava/util/List;

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
    .locals 2
    .param p1, "isRunning"    # Z

    .prologue
    .line 181
    iget-object v1, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iput-boolean p1, p0, Lcom/linekong/voice/core/Decoder;->mIsRunning:Z

    .line 183
    iget-object v0, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-boolean v0, p0, Lcom/linekong/voice/core/Decoder;->mIsRunning:Z

    monitor-exit v1

    return v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putData([BI)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v10, 0x0

    .line 93
    iget v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    if-nez v4, :cond_2

    .line 94
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    div-int v0, p2, v4

    .line 96
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 97
    new-instance v1, Lcom/linekong/voice/util/ByteBuffer;

    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    invoke-direct {v1, v4}, Lcom/linekong/voice/util/ByteBuffer;-><init>(I)V

    .line 98
    .local v1, "db":Lcom/linekong/voice/util/ByteBuffer;
    iget-object v5, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 99
    :try_start_0
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    mul-int/2addr v4, v2

    iget-object v6, v1, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    const/4 v7, 0x0

    sget v8, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    invoke-static {p1, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mByteBuffers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 103
    monitor-exit v5

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 107
    .end local v1    # "db":Lcom/linekong/voice/util/ByteBuffer;
    :cond_0
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    rem-int v4, p2, v4

    iput v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    .line 108
    iget v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    if-lez v4, :cond_1

    .line 109
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/linekong/voice/core/Decoder;->mCacheData:[B

    iget v6, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    invoke-static {p1, v4, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 112
    :cond_2
    iget v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    add-int/2addr v4, p2

    sget v5, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    if-ge v4, v5, :cond_3

    .line 114
    iget v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    .line 115
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheData:[B

    iget v5, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    invoke-static {p1, v10, v4, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheData:[B

    iget v5, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    sget v6, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    iget v7, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    sub-int/2addr v6, v7

    invoke-static {p1, v10, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    new-instance v1, Lcom/linekong/voice/util/ByteBuffer;

    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    invoke-direct {v1, v4}, Lcom/linekong/voice/util/ByteBuffer;-><init>(I)V

    .line 120
    .restart local v1    # "db":Lcom/linekong/voice/util/ByteBuffer;
    iget-object v5, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 121
    :try_start_1
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheData:[B

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    const/4 v8, 0x0

    sget v9, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    invoke-static {v4, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mByteBuffers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 125
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    iget v5, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    sub-int/2addr v4, v5

    sub-int/2addr p2, v4

    .line 129
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    iget v5, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    sub-int v3, v4, v5

    .line 130
    .local v3, "offset":I
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    div-int v0, p2, v4

    .line 132
    .restart local v0    # "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 133
    new-instance v1, Lcom/linekong/voice/util/ByteBuffer;

    .end local v1    # "db":Lcom/linekong/voice/util/ByteBuffer;
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    invoke-direct {v1, v4}, Lcom/linekong/voice/util/ByteBuffer;-><init>(I)V

    .line 134
    .restart local v1    # "db":Lcom/linekong/voice/util/ByteBuffer;
    iget-object v5, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 135
    :try_start_2
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    iget-object v6, v1, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    const/4 v7, 0x0

    sget v8, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    invoke-static {p1, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mByteBuffers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 139
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
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

    .line 139
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

    .line 143
    :cond_4
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    rem-int v4, p2, v4

    iput v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    .line 144
    iget v4, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    if-lez v4, :cond_1

    .line 145
    sget v4, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/linekong/voice/core/Decoder;->mCacheData:[B

    iget v6, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    invoke-static {p1, v4, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1
.end method

.method public run()V
    .locals 8

    .prologue
    .line 46
    const/16 v3, -0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 49
    const/4 v2, 0x0

    .line 52
    .local v2, "getSize":I
    iget-object v3, p0, Lcom/linekong/voice/core/Decoder;->mConsumer:Lcom/linekong/voice/io/FilePlayerConsumer;

    invoke-virtual {v3}, Lcom/linekong/voice/io/FilePlayerConsumer;->start()V

    .line 53
    iget-object v3, p0, Lcom/linekong/voice/core/Decoder;->mConsumerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 54
    const-string v3, "Decorder"

    const-string v4, "Start FilePlayerConsumer!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/linekong/voice/core/Decoder;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/linekong/voice/core/Decoder;->isIdle()Z

    move-result v3

    if-nez v3, :cond_4

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 58
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/linekong/voice/core/Decoder;->isIdle()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    :try_start_1
    invoke-virtual {p0}, Lcom/linekong/voice/core/Decoder;->isRunning()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    .line 69
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    iget-object v4, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 72
    :try_start_3
    iget-object v3, p0, Lcom/linekong/voice/core/Decoder;->mByteBuffers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/linekong/voice/core/Decoder;->mByteBuffers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linekong/voice/util/ByteBuffer;

    .line 75
    .local v0, "db":Lcom/linekong/voice/util/ByteBuffer;
    iget-object v3, p0, Lcom/linekong/voice/core/Decoder;->mSpeex:Lcom/linekong/voice/core/Speex;

    iget-object v5, v0, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    iget-object v6, p0, Lcom/linekong/voice/core/Decoder;->processedData:[S

    iget v7, v0, Lcom/linekong/voice/util/ByteBuffer;->mSize:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/linekong/voice/core/Speex;->decode([B[SI)I

    move-result v2

    .line 76
    if-lez v2, :cond_2

    .line 77
    iget-object v3, p0, Lcom/linekong/voice/core/Decoder;->mConsumer:Lcom/linekong/voice/io/FilePlayerConsumer;

    iget-object v5, p0, Lcom/linekong/voice/core/Decoder;->processedData:[S

    invoke-virtual {v3, v5, v2}, Lcom/linekong/voice/io/FilePlayerConsumer;->putData([SI)V

    .line 80
    .end local v0    # "db":Lcom/linekong/voice/util/ByteBuffer;
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 64
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 83
    :cond_4
    const-string v3, "Decorder"

    const-string v4, "Decode Finish!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lcom/linekong/voice/core/Decoder;->mConsumer:Lcom/linekong/voice/io/FilePlayerConsumer;

    invoke-virtual {v3}, Lcom/linekong/voice/io/FilePlayerConsumer;->stop()V

    .line 85
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/linekong/voice/core/Decoder;->setRunning(Z)V

    .line 157
    return-void
.end method

.method public stop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 161
    iget v1, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    if-lez v1, :cond_0

    .line 162
    new-instance v0, Lcom/linekong/voice/util/ByteBuffer;

    sget v1, Lcom/linekong/voice/core/Decoder;->DECODER_BUFFER_SIZE:I

    invoke-direct {v0, v1}, Lcom/linekong/voice/util/ByteBuffer;-><init>(I)V

    .line 163
    .local v0, "db":Lcom/linekong/voice/util/ByteBuffer;
    iget-object v2, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/linekong/voice/core/Decoder;->mCacheData:[B

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    const/4 v5, 0x0

    iget v6, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v1, p0, Lcom/linekong/voice/core/Decoder;->mByteBuffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/linekong/voice/core/Decoder;->mMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 168
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v0    # "db":Lcom/linekong/voice/util/ByteBuffer;
    :cond_0
    iput v7, p0, Lcom/linekong/voice/core/Decoder;->mCacheSize:I

    .line 172
    invoke-direct {p0, v7}, Lcom/linekong/voice/core/Decoder;->setRunning(Z)V

    .line 173
    return-void

    .line 168
    .restart local v0    # "db":Lcom/linekong/voice/util/ByteBuffer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/linekong/voice/core/Decoder;->setRunning(Z)V

    .line 177
    iget-object v0, p0, Lcom/linekong/voice/core/Decoder;->mConsumer:Lcom/linekong/voice/io/FilePlayerConsumer;

    invoke-virtual {v0}, Lcom/linekong/voice/io/FilePlayerConsumer;->stopPlay()V

    .line 178
    return-void
.end method
