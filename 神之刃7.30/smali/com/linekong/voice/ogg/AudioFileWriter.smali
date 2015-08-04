.class public abstract Lcom/linekong/voice/ogg/AudioFileWriter;
.super Ljava/lang/Object;
.source "AudioFileWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildOggPageHeader(IJIII[B)[B
    .locals 9
    .param p0, "headerType"    # I
    .param p1, "granulepos"    # J
    .param p3, "streamSerialNumber"    # I
    .param p4, "pageCount"    # I
    .param p5, "packetCount"    # I
    .param p6, "packetSizes"    # [B

    .prologue
    .line 140
    add-int/lit8 v1, p5, 0x1b

    new-array v0, v1, [B

    .line 141
    .local v0, "data":[B
    const/4 v1, 0x0

    move v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeOggPageHeader([BIIJIII[B)I

    .line 143
    return-object v0
.end method

.method public static buildSpeexComment(Ljava/lang/String;)[B
    .locals 2
    .param p0, "comment"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 221
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeSpeexComment([BILjava/lang/String;)I

    .line 222
    return-object v0
.end method

.method public static buildSpeexHeader(IIIZI)[B
    .locals 7
    .param p0, "sampleRate"    # I
    .param p1, "mode"    # I
    .param p2, "channels"    # I
    .param p3, "vbr"    # Z
    .param p4, "nframes"    # I

    .prologue
    .line 192
    const/16 v1, 0x50

    new-array v0, v1, [B

    .line 193
    .local v0, "data":[B
    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeSpeexHeader([BIIIIZI)I

    .line 194
    return-object v0
.end method

.method public static writeInt(Ljava/io/DataOutput;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 248
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 249
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 250
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 251
    return-void
.end method

.method public static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 276
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 277
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 278
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 279
    return-void
.end method

.method public static writeInt([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "v"    # I

    .prologue
    .line 320
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 321
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 322
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 323
    add-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 324
    return-void
.end method

.method public static writeLong(Ljava/io/OutputStream;J)V
    .locals 4
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0xff

    .line 290
    and-long v0, v2, p1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 291
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 292
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 293
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 294
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 295
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 296
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 297
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 298
    return-void
.end method

.method public static writeLong([BIJ)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "v"    # J

    .prologue
    const-wide/16 v3, 0xff

    .line 334
    and-long v0, v3, p2

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 335
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 336
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 337
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 338
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 339
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 340
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 341
    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 342
    return-void
.end method

.method public static writeOggPageHeader([BIIJIII[B)I
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "headerType"    # I
    .param p3, "granulepos"    # J
    .param p5, "streamSerialNumber"    # I
    .param p6, "pageCount"    # I
    .param p7, "packetCount"    # I
    .param p8, "packetSizes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string v0, "OggS"

    invoke-static {p0, p1, v0}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeString([BILjava/lang/String;)V

    .line 113
    add-int/lit8 v0, p1, 0x4

    aput-byte v2, p0, v0

    .line 114
    add-int/lit8 v0, p1, 0x5

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 115
    add-int/lit8 v0, p1, 0x6

    invoke-static {p0, v0, p3, p4}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeLong([BIJ)V

    .line 116
    add-int/lit8 v0, p1, 0xe

    invoke-static {p0, v0, p5}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 117
    add-int/lit8 v0, p1, 0x12

    invoke-static {p0, v0, p6}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 118
    add-int/lit8 v0, p1, 0x16

    invoke-static {p0, v0, v2}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 119
    add-int/lit8 v0, p1, 0x1a

    int-to-byte v1, p7

    aput-byte v1, p0, v0

    .line 120
    add-int/lit8 v0, p1, 0x1b

    invoke-static {p8, v2, p0, v0, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    add-int/lit8 v0, p7, 0x1b

    return v0
.end method

.method public static writeShort(Ljava/io/DataOutput;S)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "v"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 235
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 236
    return-void
.end method

.method public static writeShort(Ljava/io/OutputStream;S)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "v"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 263
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 264
    return-void
.end method

.method public static writeShort([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "v"    # I

    .prologue
    .line 308
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 309
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 310
    return-void
.end method

.method public static writeSpeexComment([BILjava/lang/String;)I
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 207
    .local v0, "length":I
    invoke-static {p0, p1, v0}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 208
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1, p2}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeString([BILjava/lang/String;)V

    .line 209
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 210
    add-int/lit8 v1, v0, 0x8

    return v1
.end method

.method public static writeSpeexHeader([BIIIIZI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "sampleRate"    # I
    .param p3, "mode"    # I
    .param p4, "channels"    # I
    .param p5, "vbr"    # Z
    .param p6, "nframes"    # I

    .prologue
    const/16 v5, 0x50

    const/16 v4, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    const-string v2, "Speex   "

    invoke-static {p0, p1, v2}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeString([BILjava/lang/String;)V

    .line 162
    add-int/lit8 v2, p1, 0x8

    const-string v3, "speex-1.2rc"

    invoke-static {p0, v2, v3}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeString([BILjava/lang/String;)V

    .line 163
    new-array v2, v4, [B

    add-int/lit8 v3, p1, 0x11

    invoke-static {v2, v1, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    add-int/lit8 v2, p1, 0x1c

    invoke-static {p0, v2, v0}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 165
    add-int/lit8 v2, p1, 0x20

    invoke-static {p0, v2, v5}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 166
    add-int/lit8 v2, p1, 0x24

    invoke-static {p0, v2, p2}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 167
    add-int/lit8 v2, p1, 0x28

    invoke-static {p0, v2, p3}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 168
    add-int/lit8 v2, p1, 0x2c

    const/4 v3, 0x4

    invoke-static {p0, v2, v3}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 169
    add-int/lit8 v2, p1, 0x30

    invoke-static {p0, v2, p4}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 170
    add-int/lit8 v2, p1, 0x34

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 171
    add-int/lit8 v2, p1, 0x38

    const/16 v3, 0xa0

    shl-int/2addr v3, p3

    invoke-static {p0, v2, v3}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 172
    add-int/lit8 v2, p1, 0x3c

    if-eqz p5, :cond_0

    :goto_0
    invoke-static {p0, v2, v0}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 173
    add-int/lit8 v0, p1, 0x40

    invoke-static {p0, v0, p6}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 174
    add-int/lit8 v0, p1, 0x44

    invoke-static {p0, v0, v1}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 175
    add-int/lit8 v0, p1, 0x48

    invoke-static {p0, v0, v1}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 176
    add-int/lit8 v0, p1, 0x4c

    invoke-static {p0, v0, v1}, Lcom/linekong/voice/ogg/AudioFileWriter;->writeInt([BII)V

    .line 177
    return v5

    :cond_0
    move v0, v1

    .line 172
    goto :goto_0
.end method

.method public static writeString([BILjava/lang/String;)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 353
    .local v0, "str":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/io/FileOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeHeader(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writePacket([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
