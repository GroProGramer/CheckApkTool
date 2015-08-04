.class public Lcom/linekong/voice/io/FilePlayerConsumer;
.super Lcom/linekong/voice/io/Consumer;
.source "FilePlayerConsumer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilePlayerConsumer"


# instance fields
.field private mAudioID:Ljava/lang/String;

.field private mCache:Ljava/io/FileOutputStream;

.field private mFilename:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mIsPlaying:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "audioID"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/linekong/voice/io/Consumer;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mCache:Ljava/io/FileOutputStream;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mIsPlaying:Z

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mFilename:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mAudioID:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mFilename:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/linekong/voice/util/CacheFile;->openCacheWriteStream(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mCache:Ljava/io/FileOutputStream;

    .line 30
    iput-object p1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method


# virtual methods
.method public doFinish()V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mCache:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 55
    invoke-virtual {p0}, Lcom/linekong/voice/io/FilePlayerConsumer;->playSound()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public doProcess(Lcom/linekong/voice/util/ByteBuffer;)I
    .locals 6
    .param p1, "byteBuffer"    # Lcom/linekong/voice/util/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mCache:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mCache:Ljava/io/FileOutputStream;

    iget-object v2, p1, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    const/4 v3, 0x0

    iget v4, p1, Lcom/linekong/voice/util/ByteBuffer;->mSize:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return v5

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "FilePlayerConsumer"

    return-object v0
.end method

.method public playSound()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    .line 63
    const/4 v11, 0x0

    .line 64
    .local v11, "mFileInputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 65
    .local v7, "atrack":Landroid/media/AudioTrack;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mIsPlaying:Z

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/linekong/voice/util/CacheFile;->openCacheReadStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v11

    .line 69
    const/16 v1, 0x400

    new-array v8, v1, [B

    .line 70
    .local v8, "buffer":[B
    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 73
    const/16 v1, 0x1f40

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 77
    .local v5, "bufSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x1f40

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v7    # "atrack":Landroid/media/AudioTrack;
    .local v0, "atrack":Landroid/media/AudioTrack;
    const/16 v1, 0x1f40

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    .line 83
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 85
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    const/4 v9, 0x0

    .line 88
    .local v9, "count":I
    :goto_0
    iget-boolean v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mIsPlaying:Z

    if-eqz v1, :cond_1

    invoke-virtual {v11, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_1

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1, v9}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 91
    .end local v9    # "count":I
    :catch_0
    move-exception v1

    .line 94
    .end local v5    # "bufSize":I
    .end local v8    # "buffer":[B
    :goto_1
    if-eqz v11, :cond_0

    .line 96
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 102
    :cond_0
    :goto_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 103
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 106
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/linekong/voice/util/CacheFile;->deleteCacheFile(Ljava/lang/String;)Z

    .line 109
    const-wide/16 v1, 0x1f4

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 115
    :goto_3
    iput-boolean v13, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mIsPlaying:Z

    .line 117
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 118
    .local v12, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mAudioID:Ljava/lang/String;

    iput-object v1, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    :goto_4
    return-void

    .line 94
    .end local v12    # "msg":Landroid/os/Message;
    .restart local v5    # "bufSize":I
    .restart local v8    # "buffer":[B
    .restart local v9    # "count":I
    :cond_1
    if-eqz v11, :cond_2

    .line 96
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 102
    :cond_2
    :goto_5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 103
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 106
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/linekong/voice/util/CacheFile;->deleteCacheFile(Ljava/lang/String;)Z

    .line 109
    const-wide/16 v1, 0x1f4

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 115
    :goto_6
    iput-boolean v13, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mIsPlaying:Z

    .line 117
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 118
    .restart local v12    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mAudioID:Ljava/lang/String;

    iput-object v1, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 97
    .end local v12    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v10

    .line 98
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 110
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 111
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 97
    .end local v5    # "bufSize":I
    .end local v8    # "buffer":[B
    .end local v9    # "count":I
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v10

    .line 98
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 110
    .end local v10    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 111
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 94
    .end local v0    # "atrack":Landroid/media/AudioTrack;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v7    # "atrack":Landroid/media/AudioTrack;
    :catchall_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "atrack":Landroid/media/AudioTrack;
    .restart local v0    # "atrack":Landroid/media/AudioTrack;
    :goto_7
    if-eqz v11, :cond_3

    .line 96
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 102
    :cond_3
    :goto_8
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 103
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 106
    iget-object v2, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mFilename:Ljava/lang/String;

    invoke-static {v2}, Lcom/linekong/voice/util/CacheFile;->deleteCacheFile(Ljava/lang/String;)Z

    .line 109
    const-wide/16 v2, 0x1f4

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6

    .line 115
    :goto_9
    iput-boolean v13, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mIsPlaying:Z

    .line 117
    iget-object v2, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 118
    .restart local v12    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mAudioID:Ljava/lang/String;

    iput-object v2, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v2, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    throw v1

    .line 97
    .end local v12    # "msg":Landroid/os/Message;
    :catch_5
    move-exception v10

    .line 98
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 110
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    .line 111
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 94
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v5    # "bufSize":I
    .restart local v8    # "buffer":[B
    :catchall_1
    move-exception v1

    goto :goto_7

    .line 91
    .end local v0    # "atrack":Landroid/media/AudioTrack;
    .end local v5    # "bufSize":I
    .end local v8    # "buffer":[B
    .restart local v7    # "atrack":Landroid/media/AudioTrack;
    :catch_7
    move-exception v1

    move-object v0, v7

    .end local v7    # "atrack":Landroid/media/AudioTrack;
    .restart local v0    # "atrack":Landroid/media/AudioTrack;
    goto/16 :goto_1
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linekong/voice/io/FilePlayerConsumer;->mIsPlaying:Z

    .line 36
    return-void
.end method
