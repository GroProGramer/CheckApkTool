.class public Lcom/linekong/voice/ogg/OggSpeexWriter;
.super Lcom/linekong/voice/ogg/AudioFileWriter;
.source "OggSpeexWriter.java"


# static fields
.field public static final PACKETS_PER_OGG_PAGE:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "OggSpeexWriter"


# instance fields
.field private channels:I

.field private dataBuffer:[B

.field private dataBufferPtr:I

.field private granulepos:J

.field private headerBuffer:[B

.field private headerBufferPtr:I

.field private mode:I

.field private nframes:I

.field private out:Ljava/io/OutputStream;

.field private packetCount:I

.field private pageCount:I

.field private sampleRate:I

.field private streamSerialNumber:I

.field private vbr:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/linekong/voice/ogg/AudioFileWriter;-><init>()V

    .line 89
    iget v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->streamSerialNumber:I

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->streamSerialNumber:I

    .line 91
    :cond_0
    const v0, 0x1001d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBuffer:[B

    .line 92
    iput v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBufferPtr:I

    .line 93
    const/16 v0, 0xff

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->headerBuffer:[B

    .line 94
    iput v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->headerBufferPtr:I

    .line 95
    iput v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->pageCount:I

    .line 96
    iput v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->packetCount:I

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->granulepos:J

    .line 98
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channels"    # I
    .param p4, "nframes"    # I
    .param p5, "vbr"    # Z

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/linekong/voice/ogg/OggSpeexWriter;-><init>()V

    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/linekong/voice/ogg/OggSpeexWriter;->setFormat(IIIIZ)V

    .line 112
    return-void
.end method

.method private flush(Z)V
    .locals 10
    .param p1, "eos"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 232
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iget-wide v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->granulepos:J

    iget v3, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->streamSerialNumber:I

    iget v4, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->pageCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->pageCount:I

    iget v5, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->packetCount:I

    iget-object v6, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->headerBuffer:[B

    invoke-static/range {v0 .. v6}, Lcom/linekong/voice/ogg/OggSpeexWriter;->buildOggPageHeader(IJIII[B)[B

    move-result-object v8

    .line 233
    .local v8, "header":[B
    array-length v0, v8

    invoke-static {v9, v8, v9, v0}, Lcom/linekong/voice/ogg/OggCrc;->checksum(I[BII)I

    move-result v7

    .line 234
    .local v7, "chksum":I
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBuffer:[B

    iget v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBufferPtr:I

    invoke-static {v7, v0, v9, v1}, Lcom/linekong/voice/ogg/OggCrc;->checksum(I[BII)I

    move-result v7

    .line 235
    const/16 v0, 0x16

    invoke-static {v8, v0, v7}, Lcom/linekong/voice/ogg/OggSpeexWriter;->writeInt([BII)V

    .line 236
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 237
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBuffer:[B

    iget v2, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBufferPtr:I

    invoke-virtual {v0, v1, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 238
    iput v9, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBufferPtr:I

    .line 239
    iput v9, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->headerBufferPtr:I

    .line 240
    iput v9, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->packetCount:I

    .line 241
    return-void

    .end local v7    # "chksum":I
    .end local v8    # "header":[B
    :cond_0
    move v0, v9

    .line 232
    goto :goto_0
.end method

.method private setFormat(IIIIZ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channels"    # I
    .param p4, "nframes"    # I
    .param p5, "vbr"    # Z

    .prologue
    .line 124
    iput p1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->mode:I

    .line 125
    iput p2, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->sampleRate:I

    .line 126
    iput p3, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->channels:I

    .line 127
    iput p4, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->nframes:I

    .line 128
    iput-boolean p5, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->vbr:Z

    .line 129
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/linekong/voice/ogg/OggSpeexWriter;->flush(Z)V

    .line 147
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 148
    return-void
.end method

.method public open(Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->out:Ljava/io/OutputStream;

    .line 159
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/linekong/voice/ogg/OggSpeexWriter;->open(Ljava/io/FileOutputStream;)V

    .line 169
    return-void
.end method

.method public setSerialNumber(I)V
    .locals 0
    .param p1, "serialNumber"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->streamSerialNumber:I

    .line 138
    return-void
.end method

.method public writeHeader(Ljava/lang/String;)V
    .locals 13
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    const/16 v12, 0x16

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 182
    const/4 v0, 0x2

    iget v3, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->streamSerialNumber:I

    iget v4, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->pageCount:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->pageCount:I

    new-array v6, v5, [B

    const/16 v10, 0x50

    aput-byte v10, v6, v11

    invoke-static/range {v0 .. v6}, Lcom/linekong/voice/ogg/OggSpeexWriter;->buildOggPageHeader(IJIII[B)[B

    move-result-object v9

    .line 183
    .local v9, "header":[B
    iget v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->sampleRate:I

    iget v3, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->mode:I

    iget v4, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->channels:I

    iget-boolean v6, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->vbr:Z

    iget v10, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->nframes:I

    invoke-static {v0, v3, v4, v6, v10}, Lcom/linekong/voice/ogg/OggSpeexWriter;->buildSpeexHeader(IIIZI)[B

    move-result-object v8

    .line 184
    .local v8, "data":[B
    array-length v0, v9

    invoke-static {v11, v9, v11, v0}, Lcom/linekong/voice/ogg/OggCrc;->checksum(I[BII)I

    move-result v7

    .line 185
    .local v7, "chksum":I
    array-length v0, v8

    invoke-static {v7, v8, v11, v0}, Lcom/linekong/voice/ogg/OggCrc;->checksum(I[BII)I

    move-result v7

    .line 186
    invoke-static {v9, v12, v7}, Lcom/linekong/voice/ogg/OggSpeexWriter;->writeInt([BII)V

    .line 187
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 188
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 190
    iget v3, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->streamSerialNumber:I

    iget v4, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->pageCount:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->pageCount:I

    new-array v6, v5, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v6, v11

    move v0, v11

    invoke-static/range {v0 .. v6}, Lcom/linekong/voice/ogg/OggSpeexWriter;->buildOggPageHeader(IJIII[B)[B

    move-result-object v9

    .line 191
    invoke-static {p1}, Lcom/linekong/voice/ogg/OggSpeexWriter;->buildSpeexComment(Ljava/lang/String;)[B

    move-result-object v8

    .line 192
    array-length v0, v9

    invoke-static {v11, v9, v11, v0}, Lcom/linekong/voice/ogg/OggCrc;->checksum(I[BII)I

    move-result v7

    .line 193
    array-length v0, v8

    invoke-static {v7, v8, v11, v0}, Lcom/linekong/voice/ogg/OggCrc;->checksum(I[BII)I

    move-result v7

    .line 194
    invoke-static {v9, v12, v7}, Lcom/linekong/voice/ogg/OggSpeexWriter;->writeInt([BII)V

    .line 195
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 196
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 197
    return-void
.end method

.method public writePacket([BII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    if-gtz p3, :cond_0

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    iget v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->packetCount:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/linekong/voice/ogg/OggSpeexWriter;->flush(Z)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBuffer:[B

    iget v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBufferPtr:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBufferPtr:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->dataBufferPtr:I

    .line 217
    iget-object v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->headerBuffer:[B

    iget v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->headerBufferPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->headerBufferPtr:I

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 218
    iget v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->packetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->packetCount:I

    .line 219
    iget-wide v1, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->granulepos:J

    iget v3, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->nframes:I

    iget v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->mode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const/16 v0, 0x280

    :goto_1
    mul-int/2addr v0, v3

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->granulepos:J

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/linekong/voice/ogg/OggSpeexWriter;->mode:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/16 v0, 0x140

    goto :goto_1

    :cond_3
    const/16 v0, 0xa0

    goto :goto_1
.end method
