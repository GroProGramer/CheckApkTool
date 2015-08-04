.class final Lcom/mqgame/lib/SService$1;
.super Ljava/util/TimerTask;
.source "SService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SService;->timeStartup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 228
    :try_start_0
    const-string v1, "SOG"

    const-string v2, "sog service breathe begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-wide v1, Lcom/mqgame/lib/SService;->g_ScheduleCounter:J

    const-wide/16 v3, 0x5

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 231
    invoke-static {}, Lcom/mqgame/lib/SService;->schedule()V

    .line 233
    :cond_0
    sget-wide v1, Lcom/mqgame/lib/SService;->g_ScheduleCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/mqgame/lib/SService;->g_ScheduleCounter:J

    .line 235
    invoke-static {}, Lcom/mqgame/lib/SService;->breathe()V

    .line 236
    const-string v1, "SOG"

    const-string v2, "sog service breathe end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method
