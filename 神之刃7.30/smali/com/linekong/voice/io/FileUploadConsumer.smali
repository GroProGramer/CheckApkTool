.class public Lcom/linekong/voice/io/FileUploadConsumer;
.super Lcom/linekong/voice/io/Consumer;
.source "FileUploadConsumer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUploadConsumer"


# instance fields
.field private mAudioID:Ljava/lang/String;

.field mFileOutputStream:Ljava/io/FileOutputStream;

.field private mHandler:Landroid/os/Handler;

.field speexWriter:Lcom/linekong/voice/ogg/OggSpeexWriter;


# direct methods
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
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/linekong/voice/io/Consumer;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 97
    iput-object v0, p0, Lcom/linekong/voice/io/FileUploadConsumer;->speexWriter:Lcom/linekong/voice/ogg/OggSpeexWriter;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/linekong/voice/util/Params;->mGameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/linekong/voice/util/Params;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mAudioID:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mHandler:Landroid/os/Handler;

    .line 29
    iget-object v0, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mAudioID:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/linekong/voice/util/CacheFile;->openCacheWriteStream(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/linekong/voice/io/FileUploadConsumer;->initOggWrite(Ljava/io/FileOutputStream;)V

    .line 30
    return-void
.end method

.method private initOggWrite(Ljava/io/FileOutputStream;)V
    .locals 7
    .param p1, "fos"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 99
    new-instance v0, Lcom/linekong/voice/ogg/OggSpeexWriter;

    const/16 v2, 0x1f40

    move v4, v3

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/linekong/voice/ogg/OggSpeexWriter;-><init>(IIIIZ)V

    iput-object v0, p0, Lcom/linekong/voice/io/FileUploadConsumer;->speexWriter:Lcom/linekong/voice/ogg/OggSpeexWriter;

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/linekong/voice/io/FileUploadConsumer;->speexWriter:Lcom/linekong/voice/ogg/OggSpeexWriter;

    invoke-virtual {v0, p1}, Lcom/linekong/voice/ogg/OggSpeexWriter;->open(Ljava/io/FileOutputStream;)V

    .line 102
    iget-object v0, p0, Lcom/linekong/voice/io/FileUploadConsumer;->speexWriter:Lcom/linekong/voice/ogg/OggSpeexWriter;

    const-string v1, "Encoded with:test by gauss "

    invoke-virtual {v0, v1}, Lcom/linekong/voice/ogg/OggSpeexWriter;->writeHeader(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v6

    .line 104
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private writeTag([BI)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "size"    # I

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/linekong/voice/io/FileUploadConsumer;->speexWriter:Lcom/linekong/voice/ogg/OggSpeexWriter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/linekong/voice/ogg/OggSpeexWriter;->writePacket([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public doFinish()V
    .locals 8

    .prologue
    .line 50
    :try_start_0
    const-string v5, "FileUploadConsumer"

    const-string v6, "FileOutputStream: doFinish"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_0

    .line 52
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 56
    :cond_0
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->speexWriter:Lcom/linekong/voice/ogg/OggSpeexWriter;

    invoke-virtual {v5}, Lcom/linekong/voice/ogg/OggSpeexWriter;->close()V

    .line 61
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mAudioID:Ljava/lang/String;

    invoke-static {v5}, Lcom/linekong/voice/util/CacheFile;->getFileSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 62
    .local v3, "size":J
    const-wide/16 v5, 0x64

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 63
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 64
    .local v1, "message":Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, v1, Landroid/os/Message;->what:I

    .line 65
    long-to-float v5, v3

    const/high16 v6, 0x42480000    # 50.0f

    sget v7, Lcom/linekong/voice/core/Speex;->mDecodeSize:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 66
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mAudioID:Ljava/lang/String;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    const-string v5, "FileUploadConsumer"

    const-string v6, "sendMessage doFinish:4"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mAudioID:Ljava/lang/String;

    invoke-static {v5}, Lcom/linekong/voice/util/CacheFile;->doUpload(Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, "response":I
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 78
    .restart local v1    # "message":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 79
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mAudioID:Ljava/lang/String;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    const-string v5, "FileUploadConsumer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMessage UPLOAD_FINISH:9 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "response":I
    .end local v3    # "size":J
    :goto_1
    return-void

    .line 70
    .restart local v3    # "size":J
    :cond_1
    iget-object v5, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v3    # "size":J
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "FileUploadConsumer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileUpload Consumer doFinish:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doProcess(Lcom/linekong/voice/util/ByteBuffer;)I
    .locals 6
    .param p1, "byteBuffer"    # Lcom/linekong/voice/util/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v2, p1, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    const/4 v3, 0x0

    iget v4, p1, Lcom/linekong/voice/util/ByteBuffer;->mSize:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 39
    :cond_0
    iget-object v1, p1, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    iget v2, p1, Lcom/linekong/voice/util/ByteBuffer;->mSize:I

    invoke-direct {p0, v1, v2}, Lcom/linekong/voice/io/FileUploadConsumer;->writeTag([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return v5

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FileUploadConsumer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consumer doProcess exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAudioID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/linekong/voice/io/FileUploadConsumer;->mAudioID:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "FileUploadConsumer"

    return-object v0
.end method
