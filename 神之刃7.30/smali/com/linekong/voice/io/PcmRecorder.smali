.class public Lcom/linekong/voice/io/PcmRecorder;
.super Ljava/lang/Object;
.source "PcmRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PcmRecorder"


# instance fields
.field private volatile isRunning:Z

.field private mCache:Ljava/io/FileOutputStream;

.field private mHandler:Landroid/os/Handler;

.field private mType:I

.field private final mutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "type"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linekong/voice/io/PcmRecorder;->isRunning:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/linekong/voice/io/PcmRecorder;->mutex:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/linekong/voice/io/PcmRecorder;->mType:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linekong/voice/io/PcmRecorder;->mCache:Ljava/io/FileOutputStream;

    .line 34
    iput-object p1, p0, Lcom/linekong/voice/io/PcmRecorder;->mHandler:Landroid/os/Handler;

    .line 35
    iput p2, p0, Lcom/linekong/voice/io/PcmRecorder;->mType:I

    .line 36
    return-void
.end method

.method private setRunning(Z)V
    .locals 2
    .param p1, "isRunning"    # Z

    .prologue
    .line 140
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    iput-boolean p1, p0, Lcom/linekong/voice/io/PcmRecorder;->isRunning:Z

    .line 142
    iget-object v0, p0, Lcom/linekong/voice/io/PcmRecorder;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
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
    .line 147
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-boolean v0, p0, Lcom/linekong/voice/io/PcmRecorder;->isRunning:Z

    monitor-exit v1

    return v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 41
    const-string v1, "PcmRecorder"

    const-string v2, "PcmRecorder Start To recording:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 46
    const/4 v10, 0x0

    .line 48
    .local v10, "encoder":Lcom/linekong/voice/core/Encoder;
    :try_start_0
    new-instance v11, Lcom/linekong/voice/core/Encoder;

    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/linekong/voice/io/PcmRecorder;->mType:I

    invoke-direct {v11, v1, v2}, Lcom/linekong/voice/core/Encoder;-><init>(Landroid/os/Handler;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    .end local v10    # "encoder":Lcom/linekong/voice/core/Encoder;
    .local v11, "encoder":Lcom/linekong/voice/core/Encoder;
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 56
    .local v13, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v13, Landroid/os/Message;->what:I

    .line 57
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    const-string v1, "PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/linekong/voice/io/PcmRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "bufferRead":I
    const/16 v1, 0x1f40

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 65
    .local v5, "bufferSize":I
    invoke-static {}, Lcom/linekong/voice/core/Speex;->getInstance()Lcom/linekong/voice/core/Speex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linekong/voice/core/Speex;->getEncodeFrameSize()I

    move-result v12

    .line 68
    .local v12, "frameSize":I
    rem-int v1, v5, v12

    if-lez v1, :cond_0

    .line 69
    add-int/2addr v5, v12

    .line 72
    :cond_0
    div-int v1, v5, v12

    mul-int v5, v1, v12

    .line 74
    div-int/lit8 v1, v5, 0x2

    new-array v14, v1, [S

    .line 75
    .local v14, "tempBuffer":[S
    new-array v7, v5, [B

    .line 76
    .local v7, "byteBuffer":[B
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x1f40

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 80
    .local v0, "recordInstance":Landroid/media/AudioRecord;
    const-string v1, "PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 82
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    .local v9, "encodeThread":Ljava/lang/Thread;
    invoke-virtual {v11}, Lcom/linekong/voice/core/Encoder;->start()V

    .line 84
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 86
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/linekong/voice/io/PcmRecorder;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    const/4 v1, 0x0

    div-int/lit8 v2, v5, 0x2

    invoke-virtual {v0, v14, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v6

    .line 92
    if-lez v6, :cond_1

    .line 94
    invoke-virtual {v11, v14, v6}, Lcom/linekong/voice/core/Encoder;->putData([SI)V

    .line 98
    :try_start_1
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mCache:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 99
    invoke-static {v14, v7, v6}, Lcom/linekong/voice/util/CacheFile;->short2byte([S[BI)V

    .line 100
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mCache:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    mul-int/lit8 v3, v6, 0x2

    invoke-virtual {v1, v7, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v8

    .line 103
    .local v8, "e":Ljava/io/IOException;
    const-string v1, "PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write cache exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    .end local v0    # "recordInstance":Landroid/media/AudioRecord;
    .end local v5    # "bufferSize":I
    .end local v6    # "bufferRead":I
    .end local v7    # "byteBuffer":[B
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "encodeThread":Ljava/lang/Thread;
    .end local v11    # "encoder":Lcom/linekong/voice/core/Encoder;
    .end local v12    # "frameSize":I
    .end local v13    # "message":Landroid/os/Message;
    .end local v14    # "tempBuffer":[S
    .restart local v10    # "encoder":Lcom/linekong/voice/core/Encoder;
    :catch_1
    move-exception v8

    .line 50
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v1, "PcmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v8    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 109
    .end local v10    # "encoder":Lcom/linekong/voice/core/Encoder;
    .restart local v0    # "recordInstance":Landroid/media/AudioRecord;
    .restart local v5    # "bufferSize":I
    .restart local v6    # "bufferRead":I
    .restart local v7    # "byteBuffer":[B
    .restart local v9    # "encodeThread":Ljava/lang/Thread;
    .restart local v11    # "encoder":Lcom/linekong/voice/core/Encoder;
    .restart local v12    # "frameSize":I
    .restart local v13    # "message":Landroid/os/Message;
    .restart local v14    # "tempBuffer":[S
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mCache:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mCache:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 117
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 119
    invoke-virtual {v11}, Lcom/linekong/voice/core/Encoder;->stop()V

    .line 128
    .end local v9    # "encodeThread":Ljava/lang/Thread;
    :goto_3
    const-string v1, "PcmRecorder"

    const-string v2, "Stop Recording!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 129
    .end local v11    # "encoder":Lcom/linekong/voice/core/Encoder;
    .restart local v10    # "encoder":Lcom/linekong/voice/core/Encoder;
    goto :goto_1

    .line 112
    .end local v10    # "encoder":Lcom/linekong/voice/core/Encoder;
    .restart local v9    # "encodeThread":Ljava/lang/Thread;
    .restart local v11    # "encoder":Lcom/linekong/voice/core/Encoder;
    :catch_2
    move-exception v8

    .line 113
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 121
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "encodeThread":Ljava/lang/Thread;
    :cond_4
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 122
    const/4 v1, 0x4

    iput v1, v13, Landroid/os/Message;->what:I

    .line 123
    const/4 v1, 0x0

    iput-object v1, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/linekong/voice/io/PcmRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    const-string v1, "PcmRecorder"

    const-string v2, "init audio recorder failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public start()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/linekong/voice/io/PcmRecorder;->setRunning(Z)V

    .line 133
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/linekong/voice/io/PcmRecorder;->setRunning(Z)V

    .line 137
    return-void
.end method
