.class public Lcom/linekong/voice/util/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# instance fields
.field public mData:[B

.field public mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    .line 8
    iput p1, p0, Lcom/linekong/voice/util/ByteBuffer;->mSize:I

    .line 9
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/linekong/voice/util/ByteBuffer;->mData:[B

    .line 10
    return-void
.end method
