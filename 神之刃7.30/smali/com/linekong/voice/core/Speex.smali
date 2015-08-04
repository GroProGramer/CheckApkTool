.class public Lcom/linekong/voice/core/Speex;
.super Ljava/lang/Object;
.source "Speex.java"


# static fields
.field private static final DEFAULT_COMPRESSION:I = 0x4

.field static _instance:Lcom/linekong/voice/core/Speex;

.field public static mDecodeSize:I

.field public static mEncodeSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;

    .line 20
    const/16 v0, 0x140

    sput v0, Lcom/linekong/voice/core/Speex;->mEncodeSize:I

    .line 21
    const/16 v0, 0x14

    sput v0, Lcom/linekong/voice/core/Speex;->mDecodeSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized deinit()V
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/linekong/voice/core/Speex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;

    invoke-virtual {v0}, Lcom/linekong/voice/core/Speex;->close()V

    .line 48
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v1

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/linekong/voice/core/Speex;
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/linekong/voice/core/Speex;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(I)V
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 24
    const-class v1, Lcom/linekong/voice/core/Speex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/linekong/voice/core/Speex;

    invoke-direct {v0}, Lcom/linekong/voice/core/Speex;-><init>()V

    sput-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;

    .line 30
    :cond_0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_2

    .line 31
    :cond_1
    const/4 p0, 0x4

    .line 33
    :cond_2
    sget-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;

    invoke-virtual {v0, p0}, Lcom/linekong/voice/core/Speex;->open(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v1

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLevel(I)V
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 37
    const-class v1, Lcom/linekong/voice/core/Speex;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;

    invoke-virtual {v0}, Lcom/linekong/voice/core/Speex;->close()V

    .line 39
    sget-object v0, Lcom/linekong/voice/core/Speex;->_instance:Lcom/linekong/voice/core/Speex;

    invoke-virtual {v0, p0}, Lcom/linekong/voice/core/Speex;->open(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit v1

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public native close()V
.end method

.method public native decode([B[SI)I
.end method

.method public native encode([SI[BI)I
.end method

.method public native getDecodeFrameSize()I
.end method

.method public native getEncodeFrameSize()I
.end method

.method public native open(I)I
.end method
