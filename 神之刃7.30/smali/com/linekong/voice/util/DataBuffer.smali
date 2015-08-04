.class public Lcom/linekong/voice/util/DataBuffer;
.super Ljava/lang/Object;
.source "DataBuffer.java"


# instance fields
.field public mData:[S

.field public mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linekong/voice/util/DataBuffer;->mData:[S

    .line 12
    iput p1, p0, Lcom/linekong/voice/util/DataBuffer;->mSize:I

    .line 13
    new-array v0, p1, [S

    iput-object v0, p0, Lcom/linekong/voice/util/DataBuffer;->mData:[S

    .line 14
    return-void
.end method
