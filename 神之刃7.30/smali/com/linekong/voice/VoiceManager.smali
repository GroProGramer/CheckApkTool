.class public Lcom/linekong/voice/VoiceManager;
.super Ljava/lang/Object;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linekong/voice/VoiceManager$PlayerListener;,
        Lcom/linekong/voice/VoiceManager$RecordListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceManager"

.field private static _instance:Lcom/linekong/voice/VoiceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

.field private mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;

.field private mHandler:Landroid/os/Handler;

.field mNeedPlay:Z

.field private mPlayerListener:Lcom/linekong/voice/VoiceManager$PlayerListener;

.field private mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;

.field private mTimeoutTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object v1, p0, Lcom/linekong/voice/VoiceManager;->mContext:Landroid/content/Context;

    .line 194
    iput-object v1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;

    .line 195
    iput-object v1, p0, Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;

    .line 269
    iput-object v1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    .line 270
    iput-object v1, p0, Lcom/linekong/voice/VoiceManager;->mPlayerListener:Lcom/linekong/voice/VoiceManager$PlayerListener;

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/linekong/voice/VoiceManager;->mNeedPlay:Z

    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/linekong/voice/VoiceManager$1;

    invoke-direct {v1, p0}, Lcom/linekong/voice/VoiceManager$1;-><init>(Lcom/linekong/voice/VoiceManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/linekong/voice/VoiceManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/linekong/voice/VoiceManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/linekong/voice/VoiceManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/linekong/voice/VoiceManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$PlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/linekong/voice/VoiceManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mPlayerListener:Lcom/linekong/voice/VoiceManager$PlayerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/io/PlayerClient;
    .locals 1
    .param p0, "x0"    # Lcom/linekong/voice/VoiceManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    return-object v0
.end method

.method static synthetic access$202(Lcom/linekong/voice/VoiceManager;Lcom/linekong/voice/io/PlayerClient;)Lcom/linekong/voice/io/PlayerClient;
    .locals 0
    .param p0, "x0"    # Lcom/linekong/voice/VoiceManager;
    .param p1, "x1"    # Lcom/linekong/voice/io/PlayerClient;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    return-object p1
.end method

.method static synthetic access$300(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$RecordListener;
    .locals 1
    .param p0, "x0"    # Lcom/linekong/voice/VoiceManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/io/PcmRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/linekong/voice/VoiceManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/linekong/voice/VoiceManager;Lcom/linekong/voice/io/PcmRecorder;)Lcom/linekong/voice/io/PcmRecorder;
    .locals 0
    .param p0, "x0"    # Lcom/linekong/voice/VoiceManager;
    .param p1, "x1"    # Lcom/linekong/voice/io/PcmRecorder;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;

    return-object p1
.end method

.method static synthetic access$500()Lcom/linekong/voice/VoiceManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/linekong/voice/VoiceManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/linekong/voice/VoiceManager;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager;->mTimeoutTimer:Ljava/util/Timer;

    return-object p1
.end method

.method public static declared-synchronized deinit()V
    .locals 3

    .prologue
    .line 166
    const-class v1, Lcom/linekong/voice/VoiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/linekong/voice/VoiceManager;->stopPlay()V

    .line 167
    sget-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/linekong/voice/VoiceManager;->stopRecord()V

    .line 169
    invoke-static {}, Lcom/linekong/voice/core/Speex;->deinit()V

    .line 171
    sget-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    iget-object v0, v0, Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 173
    sget-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/linekong/voice/VoiceManager;->clearTmpCache()V

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    .line 175
    const-string v0, "VoiceManager"

    const-string v2, "VoiceManager deinit Finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit v1

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/linekong/voice/VoiceManager;
    .locals 2

    .prologue
    .line 183
    const-class v0, Lcom/linekong/voice/VoiceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-class v1, Lcom/linekong/voice/VoiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/linekong/voice/VoiceManager;

    invoke-direct {v0, p0}, Lcom/linekong/voice/VoiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    .line 117
    :cond_0
    sget-object v0, Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;

    iput-object p0, v0, Lcom/linekong/voice/VoiceManager;->mContext:Landroid/content/Context;

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/linekong/voice/core/Speex;->init(I)V

    .line 120
    invoke-static {}, Lcom/linekong/voice/util/CacheFile;->init()V

    .line 121
    const-string v0, "VoiceManager"

    const-string v2, "VoiceManager Init Finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit v1

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 130
    invoke-static {p1}, Lcom/linekong/voice/core/Speex;->setLevel(I)V

    .line 131
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 0

    .prologue
    .line 367
    invoke-static {}, Lcom/linekong/voice/util/CacheFile;->clearCache()Z

    .line 368
    return-void
.end method

.method public clearRecord(Ljava/lang/String;I)V
    .locals 0
    .param p1, "audioId"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 376
    invoke-static {p1, p2}, Lcom/linekong/voice/util/CacheFile;->clearRecord(Ljava/lang/String;I)V

    .line 377
    return-void
.end method

.method public clearTmpCache()V
    .locals 0

    .prologue
    .line 383
    invoke-static {}, Lcom/linekong/voice/util/CacheFile;->clearTmpCache()V

    .line 384
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setGameID(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameID"    # Ljava/lang/String;

    .prologue
    .line 140
    sput-object p1, Lcom/linekong/voice/util/Params;->mGameID:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    sput-object p1, Lcom/linekong/voice/util/Params;->mServerUrl:Ljava/lang/String;

    .line 160
    :cond_0
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 149
    sput-object p1, Lcom/linekong/voice/util/Params;->mUserID:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public startPlay(Ljava/lang/String;ILcom/linekong/voice/VoiceManager$PlayerListener;)V
    .locals 4
    .param p1, "recordID"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "playerListener"    # Lcom/linekong/voice/VoiceManager$PlayerListener;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    invoke-virtual {v1}, Lcom/linekong/voice/io/PlayerClient;->stopPlay()V

    .line 304
    new-instance v1, Lcom/linekong/voice/io/PlayerClient;

    iget-object v2, p0, Lcom/linekong/voice/VoiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/linekong/voice/io/PlayerClient;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/linekong/voice/VoiceManager;->mNeedPlay:Z

    .line 307
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wait to start play!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    iput-object p3, p0, Lcom/linekong/voice/VoiceManager;->mPlayerListener:Lcom/linekong/voice/VoiceManager$PlayerListener;

    .line 318
    return-void

    .line 309
    :cond_0
    new-instance v1, Lcom/linekong/voice/io/PlayerClient;

    iget-object v2, p0, Lcom/linekong/voice/VoiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/linekong/voice/io/PlayerClient;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    .line 310
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    invoke-virtual {v1}, Lcom/linekong/voice/io/PlayerClient;->start()V

    .line 311
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 312
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 314
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start play!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRecord(Lcom/linekong/voice/VoiceManager$RecordListener;I)V
    .locals 6
    .param p1, "recordListener"    # Lcom/linekong/voice/VoiceManager$RecordListener;
    .param p2, "type"    # I

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/linekong/voice/VoiceManager;->stopPlay()V

    .line 230
    iget-object v2, p0, Lcom/linekong/voice/VoiceManager;->mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;

    if-nez v2, :cond_1

    .line 231
    new-instance v0, Lcom/linekong/voice/io/PcmRecorder;

    iget-object v2, p0, Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, p2}, Lcom/linekong/voice/io/PcmRecorder;-><init>(Landroid/os/Handler;I)V

    .line 232
    .local v0, "pcmRecorder":Lcom/linekong/voice/io/PcmRecorder;
    invoke-virtual {v0}, Lcom/linekong/voice/io/PcmRecorder;->start()V

    .line 233
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 234
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 236
    iput-object v0, p0, Lcom/linekong/voice/VoiceManager;->mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;

    .line 237
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;

    .line 239
    iget-object v2, p0, Lcom/linekong/voice/VoiceManager;->mTimeoutTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/linekong/voice/VoiceManager;->mTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 242
    :cond_0
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/linekong/voice/VoiceManager;->mTimeoutTimer:Ljava/util/Timer;

    .line 243
    iget-object v2, p0, Lcom/linekong/voice/VoiceManager;->mTimeoutTimer:Ljava/util/Timer;

    new-instance v3, Lcom/linekong/voice/VoiceManager$2;

    invoke-direct {v3, p0}, Lcom/linekong/voice/VoiceManager$2;-><init>(Lcom/linekong/voice/VoiceManager;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 253
    const-string v2, "VoiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0    # "pcmRecorder":Lcom/linekong/voice/io/PcmRecorder;
    .end local v1    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 255
    :cond_1
    const-string v2, "VoiceManager"

    const-string v3, "In Recording!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPlay()V
    .locals 3

    .prologue
    .line 324
    const-string v0, "VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop play!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;

    invoke-virtual {v0}, Lcom/linekong/voice/io/PlayerClient;->stopPlay()V

    .line 328
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "VoiceManager"

    const-string v1, "Stop Recording!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager;->mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;

    invoke-virtual {v0}, Lcom/linekong/voice/io/PcmRecorder;->stop()V

    .line 267
    :cond_0
    return-void
.end method

.method public uploadRecord(Lcom/linekong/voice/VoiceManager$RecordListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Lcom/linekong/voice/VoiceManager$RecordListener;
    .param p2, "recordID"    # Ljava/lang/String;

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;

    .line 340
    :cond_0
    invoke-virtual {p0, p2}, Lcom/linekong/voice/VoiceManager;->uploadRecord(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public uploadRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "recordID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/linekong/voice/VoiceManager$3;

    invoke-direct {v1, p0, p1}, Lcom/linekong/voice/VoiceManager$3;-><init>(Lcom/linekong/voice/VoiceManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 360
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 361
    return-void
.end method
