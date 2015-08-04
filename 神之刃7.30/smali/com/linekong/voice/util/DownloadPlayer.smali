.class public Lcom/linekong/voice/util/DownloadPlayer;
.super Ljava/io/BufferedOutputStream;
.source "DownloadPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadPlayer"


# instance fields
.field private CACHE_SIZE:I

.field private mAudioID:Ljava/lang/String;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackHasClose:Z

.field private mCache:[B

.field private mCurrentCacheSize:I

.field private mDecodeInput:[B

.field private mDecodeOuput:[S

.field private mHandler:Landroid/os/Handler;

.field private mIsPlaying:Z

.field private mSpeex:Lcom/linekong/voice/core/Speex;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "audioID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1f40

    const/4 v3, 0x2

    .line 25
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    invoke-static {}, Lcom/linekong/voice/core/Speex;->getInstance()Lcom/linekong/voice/core/Speex;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->mSpeex:Lcom/linekong/voice/core/Speex;

    .line 59
    const/16 v0, 0xc8

    iput v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->CACHE_SIZE:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    .line 61
    iput v1, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    .line 65
    iput-boolean v1, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrackHasClose:Z

    .line 66
    iput-boolean v6, p0, Lcom/linekong/voice/util/DownloadPlayer;->mIsPlaying:Z

    .line 27
    sget v0, Lcom/linekong/voice/core/Speex;->mDecodeSize:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->CACHE_SIZE:I

    .line 28
    iget v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->CACHE_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    .line 30
    sget v0, Lcom/linekong/voice/core/Speex;->mDecodeSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    .line 31
    sget v0, Lcom/linekong/voice/core/Speex;->mEncodeSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    .line 33
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 36
    invoke-static {v2, v3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 40
    .local v5, "bufSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 45
    iget-object v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    .line 46
    iget-object v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 48
    iput-object p2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mHandler:Landroid/os/Handler;

    .line 49
    iget-object v0, p0, Lcom/linekong/voice/util/DownloadPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    iput-object p3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioID:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->close()V

    .line 167
    sget v0, Lcom/linekong/voice/core/Speex;->mDecodeSize:I

    .line 168
    .local v0, "inputSize":I
    const/4 v1, 0x0

    .line 169
    .local v1, "srcPos":I
    :goto_0
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    if-le v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mSpeex:Lcom/linekong/voice/core/Speex;

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    iget-object v4, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    invoke-virtual {v2, v3, v4, v0}, Lcom/linekong/voice/core/Speex;->decode([B[SI)I

    .line 172
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioTrack;->write([SII)I

    .line 174
    add-int/2addr v1, v0

    .line 175
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "inputSize":I
    .end local v1    # "srcPos":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 178
    .restart local v0    # "inputSize":I
    .restart local v1    # "srcPos":I
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrackHasClose:Z

    if-nez v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 180
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 181
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrackHasClose:Z

    .line 184
    :cond_1
    const-string v2, "DownloadPlayer"

    const-string v3, "close"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    monitor-exit p0

    return-void
.end method

.method public stopPlay()V
    .locals 3

    .prologue
    .line 155
    const-string v1, "DownloadPlayer"

    const-string v2, "Stream stop play!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/linekong/voice/util/DownloadPlayer;->mIsPlaying:Z

    .line 158
    iget-object v1, p0, Lcom/linekong/voice/util/DownloadPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 159
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioID:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/linekong/voice/util/DownloadPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 57
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 151
    const-string v0, "DownloadPlayer"

    const-string v1, "write to buffer!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 73
    iget-boolean v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mIsPlaying:Z

    if-nez v2, :cond_1

    .line 74
    iget-boolean v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrackHasClose:Z

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 76
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 77
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrackHasClose:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    const-string v2, "DownloadPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write: offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "srcPos":I
    sget v0, Lcom/linekong/voice/core/Speex;->mDecodeSize:I

    .line 86
    .local v0, "inputSize":I
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->CACHE_SIZE:I

    if-le v2, v3, :cond_6

    .line 87
    :goto_1
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    if-le v2, v0, :cond_2

    .line 88
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    .line 90
    add-int/2addr v1, v0

    .line 92
    iget-boolean v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mSpeex:Lcom/linekong/voice/core/Speex;

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    iget-object v4, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    invoke-virtual {v2, v3, v4, v0}, Lcom/linekong/voice/core/Speex;->decode([B[SI)I

    .line 97
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioTrack;->write([SII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 71
    .end local v0    # "inputSize":I
    .end local v1    # "srcPos":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 100
    .restart local v0    # "inputSize":I
    .restart local v1    # "srcPos":I
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 104
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    if-lez v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :cond_3
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    add-int/2addr v2, p3

    if-le v2, v0, :cond_5

    .line 109
    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    iget v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    iget v4, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    sub-int v4, v0, v4

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mSpeex:Lcom/linekong/voice/core/Speex;

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    iget-object v4, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    invoke-virtual {v2, v3, v4, v0}, Lcom/linekong/voice/core/Speex;->decode([B[SI)I

    .line 113
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioTrack;->write([SII)I

    .line 115
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    .line 116
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    sub-int v2, v0, v2

    sub-int/2addr p3, v2

    .line 117
    :goto_2
    if-le p3, v0, :cond_4

    .line 118
    iget-boolean v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mSpeex:Lcom/linekong/voice/core/Speex;

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeInput:[B

    iget-object v4, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    invoke-virtual {v2, v3, v4, v0}, Lcom/linekong/voice/core/Speex;->decode([B[SI)I

    .line 125
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/linekong/voice/util/DownloadPlayer;->mDecodeOuput:[S

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioTrack;->write([SII)I

    .line 127
    sub-int/2addr p3, v0

    .line 128
    add-int/2addr v1, v0

    goto :goto_2

    .line 131
    :cond_4
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iput p3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    goto/16 :goto_0

    .line 135
    :cond_5
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    iget-object v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    iget v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    goto/16 :goto_0

    .line 142
    :cond_6
    iget-object v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCache:[B

    iget v3, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/linekong/voice/util/DownloadPlayer;->mCurrentCacheSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
