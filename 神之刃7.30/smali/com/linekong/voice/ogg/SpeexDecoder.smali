.class public Lcom/linekong/voice/ogg/SpeexDecoder;
.super Ljava/lang/Object;
.source "SpeexDecoder.java"


# instance fields
.field protected enhanced:Z

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/RecoverySystem$ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeex:Lcom/linekong/voice/core/Speex;

.field private paused:Z

.field protected srcFile:Ljava/lang/String;

.field private srcPath:Ljava/io/File;

.field private track:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "srcPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/linekong/voice/core/Speex;->getInstance()Lcom/linekong/voice/core/Speex;

    move-result-object v0

    iput-object v0, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->mSpeex:Lcom/linekong/voice/core/Speex;

    .line 25
    iput-boolean v1, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->enhanced:Z

    .line 27
    iput-boolean v1, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->paused:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->listenerList:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->srcPath:Ljava/io/File;

    .line 38
    return-void
.end method

.method private initializeAndroidAudio(I)V
    .locals 8
    .param p1, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 41
    invoke-static {p1, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 43
    .local v5, "minBufferSize":I
    if-gez v5, :cond_0

    .line 44
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get minimum buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    .line 50
    iget-object v0, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0, v7, v7}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 51
    return-void
.end method

.method protected static readInt([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 235
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected static readLong([BI)J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 242
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x20

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x28

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x30

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x38

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method protected static readShort([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 251
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readSpeexHeader([BIIZ)Z
    .locals 10
    .param p1, "packet"    # [B
    .param p2, "offset"    # I
    .param p3, "bytes"    # I
    .param p4, "init"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 207
    const/16 v7, 0x50

    if-eq p3, v7, :cond_1

    .line 208
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Oooops"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    return v5

    .line 211
    :cond_1
    const-string v7, "Speex   "

    new-instance v8, Ljava/lang/String;

    const/16 v9, 0x8

    invoke-direct {v8, p1, p2, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 214
    add-int/lit8 v5, p2, 0x28

    aget-byte v5, p1, v5

    and-int/lit16 v2, v5, 0xff

    .line 215
    .local v2, "mode":I
    add-int/lit8 v5, p2, 0x24

    invoke-static {p1, v5}, Lcom/linekong/voice/ogg/SpeexDecoder;->readInt([BI)I

    move-result v4

    .line 216
    .local v4, "sampleRate":I
    add-int/lit8 v5, p2, 0x30

    invoke-static {p1, v5}, Lcom/linekong/voice/ogg/SpeexDecoder;->readInt([BI)I

    move-result v0

    .line 217
    .local v0, "channels":I
    add-int/lit8 v5, p2, 0x40

    invoke-static {p1, v5}, Lcom/linekong/voice/ogg/SpeexDecoder;->readInt([BI)I

    move-result v3

    .line 218
    .local v3, "nframes":I
    add-int/lit8 v5, p2, 0x38

    invoke-static {p1, v5}, Lcom/linekong/voice/ogg/SpeexDecoder;->readInt([BI)I

    move-result v1

    .line 219
    .local v1, "frameSize":I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sampleRate=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " channels="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nframes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "framesize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v4}, Lcom/linekong/voice/ogg/SpeexDecoder;->initializeAndroidAudio(I)V

    .line 223
    if-eqz p4, :cond_2

    move v5, v6

    .line 225
    goto :goto_0

    :cond_2
    move v5, v6

    .line 227
    goto :goto_0
.end method


# virtual methods
.method public addOnMetadataListener(Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .param p1, "l"    # Landroid/os/RecoverySystem$ProgressListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public decode()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    const/16 v17, 0x800

    move/from16 v0, v17

    new-array v12, v0, [B

    .line 68
    .local v12, "header":[B
    const/high16 v17, 0x10000

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 69
    .local v15, "payload":[B
    const/16 v4, 0x1b

    .line 70
    .local v4, "OGG_HEADERSIZE":I
    const/16 v5, 0x1a

    .line 71
    .local v5, "OGG_SEGOFFSET":I
    const-string v3, "OggS"

    .line 72
    .local v3, "OGGID":Ljava/lang/String;
    const/16 v16, 0x0

    .line 73
    .local v16, "segments":I
    const/4 v8, 0x0

    .line 74
    .local v8, "curseg":I
    const/4 v6, 0x0

    .line 75
    .local v6, "bodybytes":I
    const/4 v10, 0x0

    .line 76
    .local v10, "decsize":I
    const/4 v14, 0x0

    .line 78
    .local v14, "packetNo":I
    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->srcPath:Ljava/io/File;

    move-object/from16 v17, v0

    const-string v18, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v11, "dis":Ljava/io/RandomAccessFile;
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 86
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->release()V

    .line 173
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "release............"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 91
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/linekong/voice/ogg/SpeexDecoder;->isPaused()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->release()V

    .line 173
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "release............"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x1b

    :try_start_2
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v12, v0, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 99
    const/16 v17, 0x16

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/linekong/voice/ogg/SpeexDecoder;->readInt([BI)I

    move-result v13

    .line 100
    .local v13, "origchksum":I
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/linekong/voice/ogg/SpeexDecoder;->readLong([BI)J

    .line 101
    const/16 v17, 0x16

    const/16 v18, 0x0

    aput-byte v18, v12, v17

    .line 102
    const/16 v17, 0x17

    const/16 v18, 0x0

    aput-byte v18, v12, v17

    .line 103
    const/16 v17, 0x18

    const/16 v18, 0x0

    aput-byte v18, v12, v17

    .line 104
    const/16 v17, 0x19

    const/16 v18, 0x0

    aput-byte v18, v12, v17

    .line 105
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1b

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lcom/linekong/voice/ogg/OggCrc;->checksum(I[BII)I

    move-result v7

    .line 108
    .local v7, "chksum":I
    const-string v17, "OggS"

    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v12, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 110
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->release()V

    .line 173
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "release............"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_3
    const/16 v17, 0x1a

    :try_start_3
    aget-byte v17, v12, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 116
    const/16 v17, 0x1b

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v11, v12, v0, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 117
    const/16 v17, 0x1b

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v7, v12, v0, v1}, Lcom/linekong/voice/ogg/OggCrc;->checksum(I[BII)I

    move-result v7

    .line 120
    const/4 v8, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v8, v0, :cond_b

    .line 122
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 123
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->release()V

    .line 173
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "release............"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/linekong/voice/ogg/SpeexDecoder;->isPaused()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->release()V

    .line 173
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "release............"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_5
    add-int/lit8 v17, v8, 0x1b

    :try_start_5
    aget-byte v17, v12, v17

    move/from16 v0, v17

    and-int/lit16 v6, v0, 0xff

    .line 136
    const/16 v17, 0xff

    move/from16 v0, v17

    if-ne v6, v0, :cond_6

    .line 138
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->release()V

    .line 173
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "release............"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_6
    const/16 v17, 0x0

    :try_start_6
    move/from16 v0, v17

    invoke-virtual {v11, v15, v0, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 142
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v7, v15, v0, v6}, Lcom/linekong/voice/ogg/OggCrc;->checksum(I[BII)I

    move-result v7

    .line 146
    if-nez v14, :cond_8

    .line 147
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v6, v2}, Lcom/linekong/voice/ogg/SpeexDecoder;->readSpeexHeader([BIIZ)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 148
    add-int/lit8 v14, v14, 0x1

    .line 120
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 150
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 152
    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_9

    .line 153
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 156
    :cond_9
    const/16 v17, 0xa0

    move/from16 v0, v17

    new-array v9, v0, [S

    .line 157
    .local v9, "decoded":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->mSpeex:Lcom/linekong/voice/core/Speex;

    move-object/from16 v17, v0

    const/16 v18, 0xa0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v15, v9, v1}, Lcom/linekong/voice/core/Speex;->decode([B[SI)I

    move-result v10

    if-lez v10, :cond_a

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1, v10}, Landroid/media/AudioTrack;->write([SII)I

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->play()V

    .line 161
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 164
    .end local v9    # "decoded":[S
    :cond_b
    if-eq v7, v13, :cond_0

    .line 165
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 166
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Ogg CheckSums do not match"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    .end local v7    # "chksum":I
    .end local v13    # "origchksum":I
    :catch_0
    move-exception v17

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->stop()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioTrack;->release()V

    .line 173
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v18, "release............"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0

    .line 171
    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioTrack;->stop()V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/linekong/voice/ogg/SpeexDecoder;->track:Landroid/media/AudioTrack;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioTrack;->release()V

    .line 173
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "release............"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v17
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPaused(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/linekong/voice/ogg/SpeexDecoder;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
