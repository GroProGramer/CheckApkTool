.class public Lcom/linekong/voice/ogg/OggCrc;
.super Ljava/lang/Object;
.source "OggCrc.java"


# static fields
.field private static crc_lookup:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 75
    const/16 v3, 0x100

    new-array v3, v3, [I

    sput-object v3, Lcom/linekong/voice/ogg/OggCrc;->crc_lookup:[I

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/linekong/voice/ogg/OggCrc;->crc_lookup:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 77
    shl-int/lit8 v2, v0, 0x18

    .line 78
    .local v2, "r":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 79
    const/high16 v3, -0x80000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 83
    shl-int/lit8 v3, v2, 0x1

    const v4, 0x4c11db7

    xor-int v2, v3, v4

    .line 78
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88
    :cond_1
    sget-object v3, Lcom/linekong/voice/ogg/OggCrc;->crc_lookup:[I

    and-int/lit8 v4, v2, -0x1

    aput v4, v3, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "j":I
    .end local v2    # "r":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checksum(I[BII)I
    .locals 5
    .param p0, "crc"    # I
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 104
    add-int v0, p2, p3

    .line 105
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 106
    shl-int/lit8 v1, p0, 0x8

    sget-object v2, Lcom/linekong/voice/ogg/OggCrc;->crc_lookup:[I

    ushr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    aget v2, v2, v3

    xor-int p0, v1, v2

    .line 105
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return p0
.end method
