.class public Lcom/linekong/voice/io/PlayerClient;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerClient"


# instance fields
.field private mAudioID:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field private mType:I

.field private final mutex:Ljava/lang/Object;

.field private speexdec:Lcom/linekong/voice/ogg/SpeexDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "audioID"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/linekong/voice/io/PlayerClient;->mutex:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/linekong/voice/io/PlayerClient;->mType:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linekong/voice/io/PlayerClient;->speexdec:Lcom/linekong/voice/ogg/SpeexDecoder;

    .line 28
    iput-object p3, p0, Lcom/linekong/voice/io/PlayerClient;->mAudioID:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/linekong/voice/io/PlayerClient;->mHandler:Landroid/os/Handler;

    .line 30
    iput p4, p0, Lcom/linekong/voice/io/PlayerClient;->mType:I

    .line 31
    return-void
.end method

.method private isRunning()Z
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/linekong/voice/io/PlayerClient;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/linekong/voice/io/PlayerClient;->mIsRunning:Z

    monitor-exit v1

    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setRunning(Z)V
    .locals 2
    .param p1, "isRunning"    # Z

    .prologue
    .line 113
    iget-object v1, p0, Lcom/linekong/voice/io/PlayerClient;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iput-boolean p1, p0, Lcom/linekong/voice/io/PlayerClient;->mIsRunning:Z

    .line 115
    iget-object v0, p0, Lcom/linekong/voice/io/PlayerClient;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "mCache":Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mAudioID:Ljava/lang/String;

    invoke-static {v5}, Lcom/linekong/voice/util/CacheFile;->openCacheReadStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    const-string v5, "PlayerClient"

    const-string v6, "Not found cache file, download from server!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 43
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mAudioID:Ljava/lang/String;

    iget v6, p0, Lcom/linekong/voice/io/PlayerClient;->mType:I

    invoke-static {v5, v6}, Lcom/linekong/voice/util/CacheFile;->doDownload(Ljava/lang/String;I)I

    move-result v3

    .line 45
    .local v3, "response":I
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 46
    .local v2, "msg":Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 47
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mAudioID:Ljava/lang/String;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    if-nez v3, :cond_2

    .line 51
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mAudioID:Ljava/lang/String;

    invoke-static {v5}, Lcom/linekong/voice/util/CacheFile;->openCacheReadStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 57
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "response":I
    :cond_0
    if-eqz v1, :cond_1

    .line 59
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/linekong/voice/io/PlayerClient;->isRunning()Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    :cond_2
    :goto_1
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const-string v5, "PlayerClient"

    const-string v6, "Play the cache file!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    :try_start_1
    new-instance v5, Lcom/linekong/voice/ogg/SpeexDecoder;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/linekong/voice/io/PlayerClient;->mAudioID:Ljava/lang/String;

    iget v8, p0, Lcom/linekong/voice/io/PlayerClient;->mType:I

    invoke-static {v7, v8}, Lcom/linekong/voice/util/CacheFile;->getCacheFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/linekong/voice/ogg/SpeexDecoder;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->speexdec:Lcom/linekong/voice/ogg/SpeexDecoder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :goto_2
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    :try_start_2
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->speexdec:Lcom/linekong/voice/ogg/SpeexDecoder;

    if-eqz v5, :cond_4

    .line 81
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->speexdec:Lcom/linekong/voice/ogg/SpeexDecoder;

    invoke-virtual {v5}, Lcom/linekong/voice/ogg/SpeexDecoder;->decode()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 88
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mAudioID:Ljava/lang/String;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v5, p0, Lcom/linekong/voice/io/PlayerClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    const-string v5, "PlayerClient"

    const-string v6, "Finish!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 74
    .end local v2    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 84
    .local v4, "t":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public start()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/linekong/voice/io/PlayerClient;->setRunning(Z)V

    .line 96
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/linekong/voice/io/PlayerClient;->setRunning(Z)V

    .line 100
    iget-object v0, p0, Lcom/linekong/voice/io/PlayerClient;->speexdec:Lcom/linekong/voice/ogg/SpeexDecoder;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/linekong/voice/io/PlayerClient;->speexdec:Lcom/linekong/voice/ogg/SpeexDecoder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/linekong/voice/ogg/SpeexDecoder;->setPaused(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/linekong/voice/io/PlayerClient;->stop()V

    .line 110
    return-void
.end method
