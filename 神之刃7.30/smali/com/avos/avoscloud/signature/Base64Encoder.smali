.class public Lcom/avos/avoscloud/signature/Base64Encoder;
.super Ljava/io/FilterOutputStream;
.source "Base64Encoder.java"


# static fields
.field private static final chars:[C


# instance fields
.field private carryOver:I

.field private charCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "unencoded"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "bytes":[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 159
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    int-to-double v3, v3

    const-wide v5, 0x3ff5eb851eb851ecL    # 1.37

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 160
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/avos/avoscloud/signature/Base64Encoder;

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/signature/Base64Encoder;-><init>(Ljava/io/OutputStream;)V

    .line 163
    .local v0, "encodedOut":Lcom/avos/avoscloud/signature/Base64Encoder;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/signature/Base64Encoder;->write([B)V

    .line 164
    invoke-virtual {v0}, Lcom/avos/avoscloud/signature/Base64Encoder;->close()V

    .line 166
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 168
    :goto_0
    return-object v3

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "ignored":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3d

    .line 123
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 124
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v0, v1, 0x3f

    .line 125
    .local v0, "lookup":I
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 126
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 127
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 133
    .end local v0    # "lookup":I
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 134
    return-void

    .line 128
    :cond_1
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 129
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v0, v1, 0x3f

    .line 130
    .restart local v0    # "lookup":I
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 131
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    if-gez p1, :cond_0

    .line 67
    add-int/lit16 p1, p1, 0x100

    .line 71
    :cond_0
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_3

    .line 72
    shr-int/lit8 v0, p1, 0x2

    .line 73
    .local v0, "lookup":I
    and-int/lit8 v1, p1, 0x3

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    .line 74
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 92
    .end local v0    # "lookup":I
    :cond_1
    :goto_0
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    .line 95
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x39

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 98
    :cond_2
    return-void

    .line 78
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 79
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    and-int/lit8 v0, v1, 0x3f

    .line 80
    .restart local v0    # "lookup":I
    and-int/lit8 v1, p1, 0xf

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    .line 81
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 85
    .end local v0    # "lookup":I
    :cond_4
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    iget v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x6

    add-int/2addr v1, v2

    and-int/lit8 v0, v1, 0x3f

    .line 87
    .restart local v0    # "lookup":I
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 88
    and-int/lit8 v0, p1, 0x3f

    .line 89
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 90
    const/4 v1, 0x0

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 111
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/signature/Base64Encoder;->write(I)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method
