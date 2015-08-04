.class public Lcom/mqgame/lib/SLaunchActivity;
.super Landroid/app/Activity;
.source "SLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;,
        Lcom/mqgame/lib/SLaunchActivity$SUnityRender;
    }
.end annotation


# instance fields
.field public FilterURL:Ljava/lang/String;

.field public FilterURLCRC:Ljava/lang/String;

.field public GLOG_CLEAN_LINE:I

.field public GLTryMaxTimes:I

.field public GPUInfoReady:Z

.field public GPURender:Ljava/lang/String;

.field public GPUVender:Ljava/lang/String;

.field public PkgName:Ljava/lang/String;

.field private final SAT_COMMON_TIMER_INTERVAL:I

.field public final SAT_DOANLOAD_EVENT_FILE_END:I

.field public final SAT_DOWNLOAD_EVENT_PROCESS:I

.field public final SAT_DOWNLOAD_FILESTAT:I

.field public final SAT_LAUCNCH_MSG_UPDATE_VERSIONTXT:I

.field public final SAT_LAUNCH_MSG_COMMENT_VISIBLE:I

.field public final SAT_LAUNCH_MSG_LIMIT:I

.field public final SAT_LAUNCH_MSG_QUIT:I

.field public final SAT_LAUNCH_MSG_SHOW_DLG:I

.field public final SAT_LAUNCH_MSG_UPDATEPROCESS:I

.field public final SAT_LAUNCH_MSG_UPDATE_COMMENT_MSG:I

.field public final SAT_LAUNCH_MSG_UPDATE_SMALLPROGRESS:I

.field public final SAT_LAUNCH_UPDATE_PROCESS_EVENT_COMPLETE:I

.field public final SAT_LAUNCH_UPDATE_PROCESS_EVENT_FAILED:I

.field public final SAT_LAUNCH_UPDATE_PROCESS_EVENT_GOON:I

.field public final SAT_LAUNCH_UPDATE_PROCESS_EVENT_UPDATESELF:I

.field public final SAT_LAUNCH_UPDATE_RESULT_FAILED:I

.field public final SAT_LAUNCH_UPDATE_RESULT_NEEDLAUNCH:I

.field public final SAT_LAUNCH_UPDATE_RESULT_SUCESS:I

.field public final SAT_LAUNCH_UPDATE_VERSION_NONEEDUPDATE:I

.field public final SAT_LAUNCH_UPDATE_VERSION_STARTUPFAILED:I

.field public final SAT_LAUNCH_UPDATE_VERSION_STARTUPSUCESS:I

.field public final SAT_LOW_MEM_LINE_KB:I

.field public final SAT_MIN_KEEP_INSTALL_SPACE:I

.field public final SAT_MIN_MEM_NEED_LOWLINE:I

.field public final SAT_MIN_MEM_WORNING_LOWLINE:J

.field public final SAT_MIN_SCREEN_SIZE:I

.field private final SAT_PROGRESS_TIMER_INTERVAL:I

.field public final SAT_SHUTDOWN_CHKVIEW:I

.field public final SAT_UPDATER_DOWNLOAD_EVENT:I

.field public final SAT_UPDATER_EVENT_DOWNLOADWAIT:I

.field public final SAT_UPDATER_EVENT_FAILED:I

.field public final SAT_UPDATER_EVENT_FILESTART:I

.field public final SAT_UPDATER_EVENT_START:I

.field public final SAT_UPDATER_EVENT_SUCESS:I

.field public final SAT_UPDATER_EVENT_UPDATE_SELF:I

.field public final SAT_UPDATER_EVENT_USERABOART:I

.field public final SAT_UPDATER_UPDATE_EVENT:I

.field public UpdateTips:Ljava/lang/String;

.field public UpdateTipsURL:Ljava/lang/String;

.field private accRunnable:Ljava/lang/Runnable;

.field accThread:Ljava/lang/Thread;

.field private buffer:[B

.field chkerView:Landroid/opengl/GLSurfaceView;

.field private commonText:Landroid/widget/TextView;

.field private commonTextTimer:Ljava/util/Timer;

.field private curProcessDownload:I

.field private curProcessSpeed:J

.field private curTotaldownload:I

.field private curcommonTxtIdx:I

.field private curload:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field private mainText:Landroid/widget/TextView;

.field private needexit:Z

.field private progress:Landroid/widget/ProgressBar;

.field private progressdest:I

.field private progressrate:I

.field private progresstimer:Ljava/util/Timer;

.field private smallprogressText:Landroid/widget/TextView;

.field private versionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->GPUVender:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->GPURender:Ljava/lang/String;

    .line 57
    iput-boolean v2, p0, Lcom/mqgame/lib/SLaunchActivity;->GPUInfoReady:Z

    .line 58
    const/16 v0, 0x10

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->GLTryMaxTimes:I

    .line 59
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->GLOG_CLEAN_LINE:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->FilterURL:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->FilterURLCRC:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->UpdateTipsURL:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->UpdateTips:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->PkgName:Ljava/lang/String;

    .line 131
    const/16 v0, 0x14

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_MSG_LIMIT:I

    .line 132
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LOW_MEM_LINE_KB:I

    .line 133
    const/high16 v0, 0x3000000

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_MIN_MEM_NEED_LOWLINE:I

    .line 134
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_MIN_MEM_WORNING_LOWLINE:J

    .line 135
    const/16 v0, 0xa0

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_MIN_SCREEN_SIZE:I

    .line 140
    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_MSG_UPDATEPROCESS:I

    .line 141
    iput v3, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_MSG_SHOW_DLG:I

    .line 142
    iput v4, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_MSG_QUIT:I

    .line 143
    iput v5, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUCNCH_MSG_UPDATE_VERSIONTXT:I

    .line 144
    iput v6, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_MSG_COMMENT_VISIBLE:I

    .line 145
    const/4 v0, 0x5

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_MSG_UPDATE_COMMENT_MSG:I

    .line 146
    const/4 v0, 0x6

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_SHUTDOWN_CHKVIEW:I

    .line 147
    const/4 v0, 0x7

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_MSG_UPDATE_SMALLPROGRESS:I

    .line 150
    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_VERSION_STARTUPFAILED:I

    .line 151
    iput v3, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_VERSION_STARTUPSUCESS:I

    .line 152
    iput v4, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_VERSION_NONEEDUPDATE:I

    .line 154
    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_RESULT_FAILED:I

    .line 155
    iput v3, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_RESULT_SUCESS:I

    .line 156
    iput v4, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_RESULT_NEEDLAUNCH:I

    .line 158
    iput v3, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_PROCESS_EVENT_GOON:I

    .line 159
    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_PROCESS_EVENT_FAILED:I

    .line 160
    iput v4, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_PROCESS_EVENT_UPDATESELF:I

    .line 161
    iput v5, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_LAUNCH_UPDATE_PROCESS_EVENT_COMPLETE:I

    .line 164
    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_UPDATER_DOWNLOAD_EVENT:I

    .line 165
    iput v3, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_UPDATER_UPDATE_EVENT:I

    .line 168
    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_UPDATER_EVENT_FAILED:I

    .line 169
    iput v3, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_UPDATER_EVENT_START:I

    .line 170
    iput v4, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_UPDATER_EVENT_FILESTART:I

    .line 171
    iput v5, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_UPDATER_EVENT_UPDATE_SELF:I

    .line 172
    iput v6, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_UPDATER_EVENT_SUCESS:I

    .line 173
    const/4 v0, 0x5

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_UPDATER_EVENT_USERABOART:I

    .line 174
    const/4 v0, 0x6

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_UPDATER_EVENT_DOWNLOADWAIT:I

    .line 177
    iput v4, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_DOWNLOAD_FILESTAT:I

    .line 178
    iput v5, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_DOWNLOAD_EVENT_PROCESS:I

    .line 179
    iput v6, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_DOANLOAD_EVENT_FILE_END:I

    .line 182
    const/high16 v0, 0xc800000

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_MIN_KEEP_INSTALL_SPACE:I

    .line 189
    const/16 v0, 0x32

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_PROGRESS_TIMER_INTERVAL:I

    .line 192
    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->curcommonTxtIdx:I

    .line 193
    const/16 v0, 0x1388

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->SAT_COMMON_TIMER_INTERVAL:I

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->curload:Ljava/lang/String;

    .line 201
    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->curTotaldownload:I

    .line 202
    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->curProcessDownload:I

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mqgame/lib/SLaunchActivity;->curProcessSpeed:J

    .line 204
    const/high16 v0, 0x100000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->buffer:[B

    .line 206
    iput-boolean v2, p0, Lcom/mqgame/lib/SLaunchActivity;->needexit:Z

    .line 316
    new-instance v0, Lcom/mqgame/lib/SLaunchActivity$1;

    invoke-direct {v0, p0}, Lcom/mqgame/lib/SLaunchActivity$1;-><init>(Lcom/mqgame/lib/SLaunchActivity;)V

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->accRunnable:Ljava/lang/Runnable;

    .line 437
    new-instance v0, Lcom/mqgame/lib/SLaunchActivity$2;

    invoke-direct {v0, p0}, Lcom/mqgame/lib/SLaunchActivity$2;-><init>(Lcom/mqgame/lib/SLaunchActivity;)V

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/mqgame/lib/SLaunchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mqgame/lib/SLaunchActivity;->needexit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->mainText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->versionText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->smallprogressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mqgame/lib/SLaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/mqgame/lib/SLaunchActivity;->curcommonTxtIdx:I

    return v0
.end method

.method static synthetic access$502(Lcom/mqgame/lib/SLaunchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/mqgame/lib/SLaunchActivity;->curcommonTxtIdx:I

    return p1
.end method

.method static synthetic access$600(Lcom/mqgame/lib/SLaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progressdest:I

    return v0
.end method

.method static synthetic access$700(Lcom/mqgame/lib/SLaunchActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mqgame/lib/SLaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mqgame/lib/SLaunchActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progressrate:I

    return v0
.end method

.method private chkFont()V
    .locals 8

    .prologue
    .line 295
    :try_start_0
    sget-object v4, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/mqgame/lib/SUtility;->getDumpURL(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "uploadUrl":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/fonts"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "dmpDirOper":Ljava/io/File;
    const-string v4, "SOG"

    const-string v5, "Uploading:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 301
    .local v1, "files":[Ljava/io/File;
    array-length v4, v1

    if-nez v4, :cond_1

    .line 313
    .end local v0    # "dmpDirOper":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v3    # "uploadUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 304
    .restart local v0    # "dmpDirOper":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v3    # "uploadUrl":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 305
    const-string v4, "SOG"

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mqgame/lib/SUtility;->httpUpload(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "dmpDirOper":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "uploadUrl":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 309
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static native chkNeedUpdate()I
.end method

.method static native chkUpdateCfg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method static native doneUpdate()V
.end method

.method static native downloadSvrList()V
.end method

.method static native getLatestUpdateEventDesc()Ljava/lang/String;
.end method

.method static native getLatestUpdateEventParam(I)I
.end method

.method static native getLatestUpdateEventSubType()I
.end method

.method static native getLatestUpdateEventType()I
.end method

.method static native getLatestVersion()Ljava/lang/String;
.end method

.method private getNumCores()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 2186
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2188
    .local v0, "dir":Ljava/io/File;
    new-instance v4, Lcom/mqgame/lib/SLaunchActivity$1CpuFilter;

    invoke-direct {v4, p0}, Lcom/mqgame/lib/SLaunchActivity$1CpuFilter;-><init>(Lcom/mqgame/lib/SLaunchActivity;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 2190
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 2199
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 2191
    :catch_0
    move-exception v1

    .line 2192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2193
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2196
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2197
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 2198
    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static native getlocalVersion()Ljava/lang/String;
.end method

.method static native isSupperVersion()Z
.end method

.method static native isUpdateStoped()Z
.end method

.method static native modifyLatestUpdateEventParamAsPointer(II)V
.end method

.method static native peekUpdateEvent()Z
.end method

.method static native prepareUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method static native startUpdate(Z)Z
.end method

.method static native stopUpdate()Z
.end method


# virtual methods
.method public PrepareLauncher()V
    .locals 4

    .prologue
    .line 655
    const v2, 0x7f03003d

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->setContentView(I)V

    .line 656
    const v2, 0x7f060025

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    .line 657
    const/4 v2, -0x1

    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->progressdest:I

    .line 658
    const/4 v2, 0x1

    iput v2, p0, Lcom/mqgame/lib/SLaunchActivity;->progressrate:I

    .line 659
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    .line 661
    const v2, 0x7f060027

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->mainText:Landroid/widget/TextView;

    .line 662
    const v2, 0x7f060028

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->versionText:Landroid/widget/TextView;

    .line 663
    const v2, 0x7f060029

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->commonText:Landroid/widget/TextView;

    .line 664
    const v2, 0x7f0600cb

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->smallprogressText:Landroid/widget/TextView;

    .line 666
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/mqgame/lib/SLaunchActivity;->accRunnable:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->accThread:Ljava/lang/Thread;

    .line 667
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->accThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 670
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 672
    .local v1, "win":Landroid/view/Window;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mqgame/lib/SLaunchActivity;->GPUInfoReady:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 682
    .end local v1    # "win":Landroid/view/Window;
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 680
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public chkABIFull(Ljava/lang/String;)Z
    .locals 10
    .param p1, "szABI"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f09014b

    const/4 v4, 0x0

    .line 210
    sput-object p1, Lcom/mqgame/lib/SUtility;->SAT_DEFAULT_ABI:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 212
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 213
    .local v3, "srcLibPath":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 241
    :goto_0
    return v4

    .line 217
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLibPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "LibDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    .end local v0    # "LibDir":Ljava/io/File;
    :cond_1
    :goto_1
    const-string v5, "libcompress.so"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLibPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "libcompress.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/mqgame/lib/SLaunchActivity;->copyLibFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 229
    invoke-virtual {p0, v8, v4, v9, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 230
    const-string v5, "SOG Exception"

    const-string v6, "copyLIBFile failed:libcompress.so"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v5, "copyLIBFile failed:libcompress.so"

    invoke-static {v5}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v1    # "e":Ljava/lang/Error;
    :cond_2
    const-string v5, "libgnustl_shared.so"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLibPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "libgnustl_shared.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/mqgame/lib/SLaunchActivity;->copyLibFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 236
    invoke-virtual {p0, v8, v4, v9, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 237
    const-string v5, "SOG Exception"

    const-string v6, "copyLIBFile failed:libgnustl_shared.so"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v5, "copyLIBFile failed:libgnustl_shared.so"

    invoke-static {v5}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method protected chkFullInstalled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1680
    invoke-static {}, Lcom/mqgame/lib/SUtility;->isDefaultABI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1681
    const-string v1, "global"

    invoke-virtual {p0, v1, v2}, Lcom/mqgame/lib/SLaunchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1682
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "FullInstalled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1684
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected chkGameRunning()Z
    .locals 6

    .prologue
    .line 1688
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/mqgame/lib/SLaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1689
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x100

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1690
    .local v2, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1691
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.mqgame.lib.SNativeActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1692
    const/4 v4, 0x1

    .line 1695
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public chkInstall()Z
    .locals 84

    .prologue
    .line 1089
    const-string v80, "global"

    const/16 v81, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SLaunchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v72

    .line 1090
    .local v72, "pref":Landroid/content/SharedPreferences;
    const-string v80, "FirstRun"

    const/16 v81, 0x1

    move-object/from16 v0, v72

    move-object/from16 v1, v80

    move/from16 v2, v81

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1092
    .local v18, "bfst":Z
    if-eqz v18, :cond_4

    .line 1093
    const/16 v80, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->cmdComment(I)V

    .line 1094
    const v80, 0x7f090111

    const/16 v81, 0x5

    const/16 v82, 0x0

    const/16 v83, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1097
    const-string v25, ""

    .line 1098
    .local v25, "dataPath":Ljava/lang/String;
    const-string v31, ""

    .line 1100
    .local v31, "externPath":Ljava/lang/String;
    const/16 v80, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v26

    .line 1101
    .local v26, "defExternPath":Ljava/io/File;
    if-eqz v26, :cond_0

    .line 1102
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v31

    .line 1109
    .end local v26    # "defExternPath":Ljava/io/File;
    :cond_0
    :goto_0
    const-string v80, "Install:externPath:"

    move-object/from16 v0, v80

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "Install:externPath:"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v80

    if-lez v80, :cond_1

    .line 1114
    :try_start_1
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v24, "chker":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v80

    if-nez v80, :cond_1

    .line 1116
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 1127
    .end local v24    # "chker":Ljava/io/File;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getExternalStorageSize()J

    move-result-wide v53

    .line 1128
    .local v53, "nExternalStorageSize":J
    const-string v39, ""

    .line 1130
    .local v39, "internelPath":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getFilesDir()Ljava/io/File;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v39

    .line 1142
    :goto_2
    const-string v80, "Install:internelPath:"

    move-object/from16 v0, v80

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "Install:internelPath:"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1144
    invoke-static/range {v39 .. v39}, Lcom/mqgame/lib/SUtility;->getAvailableStorePath(Ljava/lang/String;)J

    move-result-wide v57

    .line 1145
    .local v57, "nInternalStorageSize":J
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getExternalSDPath()Ljava/lang/String;

    move-result-object v69

    .line 1146
    .local v69, "outerSD":Ljava/lang/String;
    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->length()I

    move-result v80

    if-lez v80, :cond_2

    .line 1148
    move-object/from16 v74, v31

    .line 1149
    .local v74, "sSysSupport":Ljava/lang/String;
    :try_start_3
    invoke-virtual/range {v74 .. v74}, Ljava/lang/String;->length()I

    move-result v80

    if-nez v80, :cond_5

    .line 1150
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, "Android"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v81

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v69

    .line 1166
    :goto_3
    :try_start_4
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1167
    .restart local v24    # "chker":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v80

    if-nez v80, :cond_2

    .line 1168
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_9

    .line 1180
    .end local v24    # "chker":Ljava/io/File;
    .end local v74    # "sSysSupport":Ljava/lang/String;
    :cond_2
    :goto_4
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "Install:outerSD:"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1181
    invoke-static/range {v69 .. v69}, Lcom/mqgame/lib/SUtility;->getAvailableStorePath(Ljava/lang/String;)J

    move-result-wide v63

    .line 1183
    .local v63, "nOuterSDSize":J
    if-eqz v31, :cond_6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v80

    if-lez v80, :cond_6

    const-wide/32 v80, 0xc800000

    cmp-long v80, v53, v80

    if-lez v80, :cond_6

    .line 1184
    move-object/from16 v25, v31

    .line 1192
    :goto_5
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "Install path:"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1193
    move-object/from16 v42, v25

    .line 1194
    .local v42, "libDefPath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getFilesDir()Ljava/io/File;

    move-result-object v80

    if-eqz v80, :cond_3

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getFilesDir()Ljava/io/File;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    .line 1196
    :cond_3
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, "libs"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 1197
    .local v43, "libPath":Ljava/lang/String;
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, "gameclient.log"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 1200
    .local v48, "logPath":Ljava/lang/String;
    invoke-interface/range {v72 .. v72}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    .line 1201
    .local v30, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v80, "DataPath"

    move-object/from16 v0, v30

    move-object/from16 v1, v80

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1202
    const-string v80, "LibPath"

    move-object/from16 v0, v30

    move-object/from16 v1, v80

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1203
    const-string v80, "LogPath"

    move-object/from16 v0, v30

    move-object/from16 v1, v80

    move-object/from16 v2, v48

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1205
    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1209
    .end local v25    # "dataPath":Ljava/lang/String;
    .end local v30    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v31    # "externPath":Ljava/lang/String;
    .end local v39    # "internelPath":Ljava/lang/String;
    .end local v42    # "libDefPath":Ljava/lang/String;
    .end local v43    # "libPath":Ljava/lang/String;
    .end local v48    # "logPath":Ljava/lang/String;
    .end local v53    # "nExternalStorageSize":J
    .end local v57    # "nInternalStorageSize":J
    .end local v63    # "nOuterSDSize":J
    .end local v69    # "outerSD":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v25

    .line 1210
    .restart local v25    # "dataPath":Ljava/lang/String;
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLibPath()Ljava/lang/String;

    move-result-object v43

    .line 1213
    .restart local v43    # "libPath":Ljava/lang/String;
    const/16 v45, 0x0

    .line 1214
    .local v45, "localVMajor":I
    const/16 v46, 0x0

    .line 1215
    .local v46, "localVMinor":I
    const/16 v47, 0x0

    .line 1216
    .local v47, "localVRevision":I
    const/16 v44, 0x0

    .line 1218
    .local v44, "localVBuild":I
    const/4 v15, 0x0

    .line 1220
    .local v15, "bCurInstalled":Z
    :try_start_5
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, "version.ini"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    .line 1221
    .local v71, "path":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v71

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1222
    .restart local v24    # "chker":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v15

    .line 1224
    new-instance v73, Lcom/mqgame/lib/SUtility$SIniReader;

    sget-object v80, Lcom/mqgame/lib/SSDK;->Language:Ljava/lang/String;

    move-object/from16 v0, v73

    move-object/from16 v1, v71

    move-object/from16 v2, v80

    invoke-direct {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    .local v73, "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    const-string v80, "Version"

    const-string v81, "AppVersionMajor"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    .line 1226
    const-string v80, "Version"

    const-string v81, "AppVersionMinor"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 1227
    const-string v80, "Version"

    const-string v81, "AppVersionRevision"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 1228
    const-string v80, "Version"

    const-string v81, "AppVersionBuild"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_14

    move-result v44

    .line 1237
    .end local v24    # "chker":Ljava/io/File;
    .end local v71    # "path":Ljava/lang/String;
    .end local v73    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    :goto_6
    const/16 v21, 0x0

    .line 1238
    .local v21, "buddleVMajor":I
    const/16 v22, 0x0

    .line 1239
    .local v22, "buddleVMinor":I
    const/16 v23, 0x0

    .line 1240
    .local v23, "buddleVRevision":I
    const/16 v20, 0x0

    .line 1242
    .local v20, "buddleVBuild":I
    const/16 v36, 0x0

    .line 1243
    .local v36, "instVMajor":I
    const/16 v37, 0x0

    .line 1244
    .local v37, "instVMinor":I
    const/16 v38, 0x0

    .line 1245
    .local v38, "instVRevision":I
    const/16 v35, 0x0

    .line 1247
    .local v35, "instVBuild":I
    const/16 v16, 0x0

    .line 1250
    .local v16, "bCurIsUpdatePkg":Z
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v80

    const-string v81, "version.ini"

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v34

    .line 1251
    .local v34, "inStream":Ljava/io/InputStream;
    new-instance v73, Lcom/mqgame/lib/SUtility$SIniReader;

    move-object/from16 v0, v73

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;-><init>(Ljava/io/InputStream;)V

    .line 1253
    .restart local v73    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    const-string v80, "Version"

    const-string v81, "AppVersionMajor"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1254
    const-string v80, "Version"

    const-string v81, "AppVersionMinor"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1255
    const-string v80, "Version"

    const-string v81, "AppVersionRevision"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1256
    const-string v80, "Version"

    const-string v81, "AppVersionBuild"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1258
    const-string v80, "Version"

    const-string v81, "MajorVersion"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 1259
    const-string v80, "Version"

    const-string v81, "MinorVersion"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1260
    const-string v80, "Version"

    const-string v81, "RevisionVersion"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 1261
    const-string v80, "Version"

    const-string v81, "BuildVersion"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_b

    move-result v35

    .line 1272
    .end local v34    # "inStream":Ljava/io/InputStream;
    .end local v73    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    :goto_7
    if-eqz v16, :cond_9

    .line 1273
    const/16 v80, 0x1

    .line 1612
    :goto_8
    return v80

    .line 1104
    .end local v15    # "bCurInstalled":Z
    .end local v16    # "bCurIsUpdatePkg":Z
    .end local v20    # "buddleVBuild":I
    .end local v21    # "buddleVMajor":I
    .end local v22    # "buddleVMinor":I
    .end local v23    # "buddleVRevision":I
    .end local v35    # "instVBuild":I
    .end local v36    # "instVMajor":I
    .end local v37    # "instVMinor":I
    .end local v38    # "instVRevision":I
    .end local v43    # "libPath":Ljava/lang/String;
    .end local v44    # "localVBuild":I
    .end local v45    # "localVMajor":I
    .end local v46    # "localVMinor":I
    .end local v47    # "localVRevision":I
    .restart local v31    # "externPath":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 1105
    .local v29, "e":Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1106
    .end local v29    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v29

    .line 1107
    .local v29, "e":Ljava/lang/Error;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->printStackTrace()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1118
    .end local v29    # "e":Ljava/lang/Error;
    :catch_2
    move-exception v29

    .line 1119
    .local v29, "e":Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    .line 1120
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1122
    .end local v29    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v29

    .line 1123
    .local v29, "e":Ljava/lang/Error;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->printStackTrace()V

    .line 1124
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1132
    .end local v29    # "e":Ljava/lang/Error;
    .restart local v39    # "internelPath":Ljava/lang/String;
    .restart local v53    # "nExternalStorageSize":J
    :catch_4
    move-exception v29

    .line 1133
    .local v29, "e":Ljava/lang/Exception;
    const-string v39, ""

    .line 1134
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    .line 1135
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1137
    .end local v29    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v29

    .line 1138
    .local v29, "e":Ljava/lang/Error;
    const-string v39, ""

    .line 1139
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->printStackTrace()V

    .line 1140
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1153
    .end local v29    # "e":Ljava/lang/Error;
    .restart local v57    # "nInternalStorageSize":J
    .restart local v69    # "outerSD":Ljava/lang/String;
    .restart local v74    # "sSysSupport":Ljava/lang/String;
    :cond_5
    :try_start_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v71

    .line 1154
    .local v71, "path":Ljava/io/File;
    invoke-virtual/range {v71 .. v71}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v80

    const-string v81, ""

    move-object/from16 v0, v74

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v70

    .line 1155
    .local v70, "parsed":Ljava/lang/String;
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v69

    goto/16 :goto_3

    .line 1158
    .end local v70    # "parsed":Ljava/lang/String;
    .end local v71    # "path":Ljava/io/File;
    :catch_6
    move-exception v29

    .line 1159
    .local v29, "e":Ljava/lang/Exception;
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, "Android"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v81

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    .line 1163
    goto/16 :goto_3

    .line 1161
    .end local v29    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v29

    .line 1162
    .local v29, "e":Ljava/lang/Error;
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, "Android"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v81

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    goto/16 :goto_3

    .line 1170
    .end local v29    # "e":Ljava/lang/Error;
    :catch_8
    move-exception v29

    .line 1171
    .local v29, "e":Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    .line 1172
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1174
    .end local v29    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v29

    .line 1175
    .local v29, "e":Ljava/lang/Error;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->printStackTrace()V

    .line 1176
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1185
    .end local v29    # "e":Ljava/lang/Error;
    .end local v74    # "sSysSupport":Ljava/lang/String;
    .restart local v63    # "nOuterSDSize":J
    :cond_6
    if-eqz v39, :cond_7

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v80

    if-lez v80, :cond_7

    const-wide/32 v80, 0xc800000

    cmp-long v80, v57, v80

    if-lez v80, :cond_7

    .line 1186
    move-object/from16 v25, v39

    goto/16 :goto_5

    .line 1187
    :cond_7
    if-eqz v69, :cond_8

    invoke-virtual/range {v69 .. v69}, Ljava/lang/String;->length()I

    move-result v80

    if-lez v80, :cond_8

    const-wide/32 v80, 0xc800000

    cmp-long v80, v63, v80

    if-lez v80, :cond_8

    .line 1188
    move-object/from16 v25, v69

    goto/16 :goto_5

    .line 1190
    :cond_8
    move-object/from16 v25, v39

    goto/16 :goto_5

    .line 1263
    .end local v31    # "externPath":Ljava/lang/String;
    .end local v39    # "internelPath":Ljava/lang/String;
    .end local v53    # "nExternalStorageSize":J
    .end local v57    # "nInternalStorageSize":J
    .end local v63    # "nOuterSDSize":J
    .end local v69    # "outerSD":Ljava/lang/String;
    .restart local v15    # "bCurInstalled":Z
    .restart local v16    # "bCurIsUpdatePkg":Z
    .restart local v20    # "buddleVBuild":I
    .restart local v21    # "buddleVMajor":I
    .restart local v22    # "buddleVMinor":I
    .restart local v23    # "buddleVRevision":I
    .restart local v35    # "instVBuild":I
    .restart local v36    # "instVMajor":I
    .restart local v37    # "instVMinor":I
    .restart local v38    # "instVRevision":I
    .restart local v43    # "libPath":Ljava/lang/String;
    .restart local v44    # "localVBuild":I
    .restart local v45    # "localVMajor":I
    .restart local v46    # "localVMinor":I
    .restart local v47    # "localVRevision":I
    :catch_a
    move-exception v29

    .line 1265
    .local v29, "e":Ljava/lang/Exception;
    const/16 v16, 0x1

    .line 1269
    goto/16 :goto_7

    .line 1267
    .end local v29    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v29

    .line 1268
    .local v29, "e":Ljava/lang/Error;
    const/16 v16, 0x1

    goto/16 :goto_7

    .line 1276
    .end local v29    # "e":Ljava/lang/Error;
    :cond_9
    const/16 v19, 0x0

    .line 1277
    .local v19, "buddleBigger":Z
    move/from16 v0, v21

    move/from16 v1, v45

    if-le v0, v1, :cond_c

    .line 1278
    const/16 v19, 0x1

    .line 1294
    :goto_9
    if-nez v18, :cond_a

    if-eqz v19, :cond_13

    :cond_a
    const/16 v68, 0x1

    .line 1295
    .local v68, "needInstall":Z
    :goto_a
    if-eqz v68, :cond_29

    .line 1296
    const-string v80, "InstallBegin"

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1298
    if-eqz v15, :cond_b

    .line 1300
    new-instance v33, Ljava/io/File;

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v33, "forder":Ljava/io/File;
    const-string v80, "users"

    move-object/from16 v0, v33

    move-object/from16 v1, v80

    invoke-static {v0, v1}, Lcom/mqgame/lib/SUtility;->deleteDirectory(Ljava/io/File;Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->mkdirs()Z

    .line 1306
    .end local v33    # "forder":Ljava/io/File;
    :cond_b
    const-string v6, "launcher.cfg"

    .line 1307
    .local v6, "SAT_BASESETTING_NAME":Ljava/lang/String;
    const-string v80, "launcher.cfg"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v81

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    sget-object v82, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    const-string v82, "launcher.cfg"

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SLaunchActivity;->copyAssetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v80

    if-nez v80, :cond_14

    .line 1308
    const-string v80, "launcher.cfg copy failed"

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1309
    const v80, 0x7f09014c

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1310
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1279
    .end local v6    # "SAT_BASESETTING_NAME":Ljava/lang/String;
    .end local v68    # "needInstall":Z
    :cond_c
    move/from16 v0, v21

    move/from16 v1, v45

    if-ge v0, v1, :cond_d

    .line 1280
    const/16 v19, 0x0

    goto :goto_9

    .line 1281
    :cond_d
    move/from16 v0, v22

    move/from16 v1, v46

    if-le v0, v1, :cond_e

    .line 1282
    const/16 v19, 0x1

    goto/16 :goto_9

    .line 1283
    :cond_e
    move/from16 v0, v22

    move/from16 v1, v46

    if-ge v0, v1, :cond_f

    .line 1284
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 1285
    :cond_f
    move/from16 v0, v23

    move/from16 v1, v47

    if-le v0, v1, :cond_10

    .line 1286
    const/16 v19, 0x1

    goto/16 :goto_9

    .line 1287
    :cond_10
    move/from16 v0, v23

    move/from16 v1, v47

    if-ge v0, v1, :cond_11

    .line 1288
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 1289
    :cond_11
    move/from16 v0, v20

    move/from16 v1, v44

    if-le v0, v1, :cond_12

    .line 1290
    const/16 v19, 0x1

    goto/16 :goto_9

    .line 1292
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 1294
    :cond_13
    const/16 v68, 0x0

    goto/16 :goto_a

    .line 1318
    .restart local v6    # "SAT_BASESETTING_NAME":Ljava/lang/String;
    .restart local v68    # "needInstall":Z
    :cond_14
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getABIPerfix()Ljava/lang/String;

    move-result-object v75

    .line 1319
    .local v75, "szABI":Ljava/lang/String;
    const-string v80, "%d.%d.%d.%d"

    const/16 v81, 0x4

    move/from16 v0, v81

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v81, v0

    const/16 v82, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    const/16 v82, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    const/16 v82, 0x2

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    const/16 v82, 0x3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    invoke-static/range {v80 .. v81}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v77

    .line 1320
    .local v77, "szTargetV":Ljava/lang/String;
    const-string v80, "ABI1:"

    sget-object v81, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const-string v80, "ABI2:"

    sget-object v81, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const-string v80, "Choose ABI:"

    move-object/from16 v0, v80

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    sget-object v80, Lcom/mqgame/lib/SUtility;->SAT_DEFAULT_ABI:Ljava/lang/String;

    move-object/from16 v0, v75

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1324
    .local v17, "bDefaultABI":Z
    if-nez v17, :cond_15

    .line 1325
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v75

    move-object/from16 v3, v43

    move-object/from16 v4, v77

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->prepareABI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v80

    if-nez v80, :cond_15

    .line 1326
    const-string v80, "prepareABI failed"

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1327
    const v80, 0x7f090154

    const/16 v81, 0x5

    const/16 v82, 0x0

    const/16 v83, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1328
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1333
    :cond_15
    const-string v8, "res"

    .line 1334
    .local v8, "SAT_RES_PAK_DIR_NAME":Ljava/lang/String;
    const-string v7, "lib.spk"

    .line 1337
    .local v7, "SAT_LIB_PAK_NAME":Ljava/lang/String;
    const-string v80, "gnustl_shared"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->fixLoadLibrary(Ljava/lang/String;)Z

    move-result v80

    if-nez v80, :cond_16

    .line 1338
    const-string v80, "SOG Exception"

    const-string v81, "Load gnustl_shared"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v80, "gnustl_shared failed"

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1340
    const v80, 0x7f09014d

    const/16 v81, 0x5

    const/16 v82, 0x0

    const/16 v83, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1341
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1343
    :cond_16
    const-string v80, "compress"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->fixLoadLibrary(Ljava/lang/String;)Z

    move-result v80

    if-nez v80, :cond_17

    .line 1344
    const-string v80, "SOG Exception"

    const-string v81, "Load compress"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const-string v80, "Load compress failed"

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1346
    const v80, 0x7f09014d

    const/16 v81, 0x5

    const/16 v82, 0x0

    const/16 v83, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1347
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1350
    :cond_17
    const v80, 0x7f090111

    const/16 v81, 0xf

    const/16 v82, 0x0

    const/16 v83, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1352
    if-eqz v17, :cond_18

    .line 1353
    const-string v80, "lib.spk"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SLaunchActivity;->extractAssetData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v80

    if-nez v80, :cond_18

    .line 1354
    const-string v80, "SOG Exception"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    const-string v82, "Load asset"

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const-string v80, "copy lib assets failed"

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1356
    const v80, 0x7f09014d

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1357
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1361
    :cond_18
    const v80, 0x7f090111

    const/16 v81, 0x5a

    const/16 v82, 0x0

    const/16 v83, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1364
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .line 1365
    .local v13, "assetManager":Landroid/content/res/AssetManager;
    const-string v80, "res"

    move-object/from16 v0, v80

    invoke-virtual {v13, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1368
    .local v32, "files":[Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v10, "TargetDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v80

    if-nez v80, :cond_19

    .line 1370
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 1372
    :cond_19
    const v80, 0x7f090111

    const/16 v81, 0x64

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1375
    invoke-direct/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getNumCores()I

    move-result v80

    const/16 v81, 0x1

    move/from16 v0, v80

    move/from16 v1, v81

    if-le v0, v1, :cond_24

    .line 1376
    const-string v80, "Multithread installing"

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1377
    const-string v80, "SOG_DEBUG"

    const-string v81, "Multithread installing"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/16 v80, 0x2

    move/from16 v0, v80

    new-array v0, v0, [Ljava/util/LinkedList;

    move-object/from16 v49, v0

    .line 1380
    .local v49, "lsHelper":[Ljava/util/LinkedList;, "[Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/16 v80, 0x2

    move/from16 v0, v80

    new-array v0, v0, [J

    move-object/from16 v67, v0

    .line 1381
    .local v67, "nTotalSize":[J
    const/16 v56, 0x0

    .local v56, "nIdx":I
    :goto_b
    const/16 v80, 0x2

    move/from16 v0, v56

    move/from16 v1, v80

    if-ge v0, v1, :cond_1a

    .line 1382
    new-instance v80, Ljava/util/LinkedList;

    invoke-direct/range {v80 .. v80}, Ljava/util/LinkedList;-><init>()V

    aput-object v80, v49, v56

    .line 1383
    const-wide/16 v80, 0x0

    aput-wide v80, v67, v56

    .line 1381
    add-int/lit8 v56, v56, 0x1

    goto :goto_b

    .line 1386
    :cond_1a
    const v80, 0x7f090111

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1389
    const/16 v55, 0x0

    .local v55, "nFileIdx":I
    :goto_c
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v80, v0

    move/from16 v0, v55

    move/from16 v1, v80

    if-ge v0, v1, :cond_1e

    .line 1391
    const v80, 0x7f090111

    const/16 v81, 0x5f

    const/16 v82, 0x0

    const/16 v83, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1392
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "res"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    aget-object v81, v32, v55

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_f

    move-result-object v14

    .line 1394
    .local v14, "assetPath":Ljava/lang/String;
    const-wide/16 v59, 0x1000

    .line 1397
    .local v59, "nLen":J
    :try_start_9
    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 1398
    .local v5, "Fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v5, :cond_1b

    .line 1399
    const-string v80, "sog"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    const-string v82, "Fd open:"

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v59

    .line 1401
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 1417
    .end local v5    # "Fd":Landroid/content/res/AssetFileDescriptor;
    :cond_1b
    :goto_d
    :try_start_a
    const-string v80, "%s/%d.stmp"

    const/16 v81, 0x2

    move/from16 v0, v81

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v81, v0

    const/16 v82, 0x0

    aput-object v25, v81, v82

    const/16 v82, 0x1

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    invoke-static/range {v80 .. v81}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v78

    .line 1418
    .local v78, "tmpPath":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v14, v1}, Lcom/mqgame/lib/SLaunchActivity;->copyAssetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v80

    if-nez v80, :cond_1c

    .line 1419
    const-string v80, "SOG Exception"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    const-string v82, "copy asset failed:"

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "copyasset failed:"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, " to:"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1421
    const v80, 0x7f09014e

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1422
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1404
    .end local v78    # "tmpPath":Ljava/lang/String;
    :catch_c
    move-exception v29

    .line 1405
    .local v29, "e":Ljava/lang/Exception;
    const-string v80, "SOG Exception"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    const-string v82, "Load fd failed:"

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    .line 1407
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_f

    goto/16 :goto_d

    .line 1549
    .end local v10    # "TargetDir":Ljava/io/File;
    .end local v13    # "assetManager":Landroid/content/res/AssetManager;
    .end local v14    # "assetPath":Ljava/lang/String;
    .end local v29    # "e":Ljava/lang/Exception;
    .end local v32    # "files":[Ljava/lang/String;
    .end local v49    # "lsHelper":[Ljava/util/LinkedList;, "[Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v55    # "nFileIdx":I
    .end local v56    # "nIdx":I
    .end local v59    # "nLen":J
    .end local v67    # "nTotalSize":[J
    :catch_d
    move-exception v29

    .line 1550
    .local v29, "e":Ljava/io/IOException;
    const-string v80, "SOG Exception"

    const-string v81, "uncompress failed"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-virtual/range {v29 .. v29}, Ljava/io/IOException;->printStackTrace()V

    .line 1552
    invoke-virtual/range {v29 .. v29}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1553
    const v80, 0x7f09014f

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1554
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1409
    .end local v29    # "e":Ljava/io/IOException;
    .restart local v10    # "TargetDir":Ljava/io/File;
    .restart local v13    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v14    # "assetPath":Ljava/lang/String;
    .restart local v32    # "files":[Ljava/lang/String;
    .restart local v49    # "lsHelper":[Ljava/util/LinkedList;, "[Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v55    # "nFileIdx":I
    .restart local v56    # "nIdx":I
    .restart local v59    # "nLen":J
    .restart local v67    # "nTotalSize":[J
    :catch_e
    move-exception v40

    .line 1410
    .local v40, "intternalError":Ljava/lang/Error;
    :try_start_b
    const-string v80, "SOG Exception"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    const-string v82, "Load fd failed:"

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Error;->printStackTrace()V

    .line 1412
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_f

    goto/16 :goto_d

    .line 1556
    .end local v10    # "TargetDir":Ljava/io/File;
    .end local v13    # "assetManager":Landroid/content/res/AssetManager;
    .end local v14    # "assetPath":Ljava/lang/String;
    .end local v32    # "files":[Ljava/lang/String;
    .end local v40    # "intternalError":Ljava/lang/Error;
    .end local v49    # "lsHelper":[Ljava/util/LinkedList;, "[Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v55    # "nFileIdx":I
    .end local v56    # "nIdx":I
    .end local v59    # "nLen":J
    .end local v67    # "nTotalSize":[J
    :catch_f
    move-exception v29

    .line 1558
    .local v29, "e":Ljava/lang/Error;
    const-string v80, "SOG Exception"

    const-string v81, "uncompress failed"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->printStackTrace()V

    .line 1560
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1561
    const v80, 0x7f09014f

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1562
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1425
    .end local v29    # "e":Ljava/lang/Error;
    .restart local v10    # "TargetDir":Ljava/io/File;
    .restart local v13    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v14    # "assetPath":Ljava/lang/String;
    .restart local v32    # "files":[Ljava/lang/String;
    .restart local v49    # "lsHelper":[Ljava/util/LinkedList;, "[Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v55    # "nFileIdx":I
    .restart local v56    # "nIdx":I
    .restart local v59    # "nLen":J
    .restart local v67    # "nTotalSize":[J
    .restart local v78    # "tmpPath":Ljava/lang/String;
    :cond_1c
    const/16 v80, 0x0

    :try_start_c
    aget-wide v80, v67, v80

    const/16 v82, 0x1

    aget-wide v82, v67, v82

    cmp-long v80, v80, v82

    if-lez v80, :cond_1d

    .line 1426
    const/16 v80, 0x1

    aget-wide v81, v67, v80

    add-long v81, v81, v59

    aput-wide v81, v67, v80

    .line 1427
    const/16 v80, 0x1

    aget-object v80, v49, v80

    move-object/from16 v0, v80

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1434
    :goto_e
    const v80, 0x7f090111

    const/16 v81, 0x64

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1435
    const v80, 0x7f090111

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1389
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_c

    .line 1430
    :cond_1d
    const/16 v80, 0x0

    aget-wide v81, v67, v80

    add-long v81, v81, v59

    aput-wide v81, v67, v80

    .line 1431
    const/16 v80, 0x0

    aget-object v80, v49, v80

    move-object/from16 v0, v80

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_e

    .line 1438
    .end local v14    # "assetPath":Ljava/lang/String;
    .end local v59    # "nLen":J
    .end local v78    # "tmpPath":Ljava/lang/String;
    :cond_1e
    const-string v80, "SOG Exception"

    const-string v81, "Starting uncompress thread"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/16 v61, 0x0

    .line 1441
    .local v61, "nMainTaskIdx":I
    const/16 v66, 0x1

    .line 1442
    .local v66, "nTTaskIdx":I
    const/16 v80, 0x0

    aget-wide v80, v67, v80

    const/16 v82, 0x1

    aget-wide v82, v67, v82

    cmp-long v80, v80, v82

    if-gez v80, :cond_1f

    .line 1443
    const/16 v61, 0x1

    .line 1444
    const/16 v66, 0x0

    .line 1448
    :cond_1f
    aget-object v51, v49, v66

    .line 1449
    .local v51, "lsT":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object/from16 v11, v25

    .line 1450
    .local v11, "ToPath":Ljava/lang/String;
    new-instance v79, Lcom/mqgame/lib/SLaunchActivity$5;

    move-object/from16 v0, v79

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2, v11}, Lcom/mqgame/lib/SLaunchActivity$5;-><init>(Lcom/mqgame/lib/SLaunchActivity;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 1472
    .local v79, "unPackRunable":Ljava/lang/Runnable;
    new-instance v12, Ljava/lang/Thread;

    move-object/from16 v0, v79

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1473
    .local v12, "UnpackThead":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 1475
    const-string v80, "SOG Exception"

    const-string v81, "uncompress main thread start"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    aget-object v50, v49, v61

    .line 1478
    .local v50, "lsMain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual/range {v50 .. v50}, Ljava/util/LinkedList;->size()I

    move-result v62

    .line 1479
    .local v62, "nNum":I
    if-lez v62, :cond_22

    .line 1480
    const/16 v80, 0x32

    div-int v65, v80, v62

    .line 1481
    .local v65, "nStep":I
    const/16 v80, 0x1

    move/from16 v0, v65

    move/from16 v1, v80

    if-ge v0, v1, :cond_20

    .line 1482
    const/16 v65, 0x1

    .line 1484
    :cond_20
    const-string v80, "0/%d"

    const/16 v81, 0x1

    move/from16 v0, v81

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v81, v0

    const/16 v82, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    invoke-static/range {v80 .. v81}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 1485
    const/16 v52, 0x0

    .line 1486
    .local v52, "nCurIdx":I
    invoke-virtual/range {v50 .. v50}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .line 1487
    .local v41, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v80

    if-eqz v80, :cond_22

    .line 1488
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Ljava/lang/String;

    .line 1489
    .local v76, "szPkName":Ljava/lang/String;
    const v80, 0x7f090111

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1490
    const v80, 0x7f090111

    const/16 v81, 0x5f

    const/16 v82, 0x0

    const/16 v83, 0x61a8

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1492
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    move-object/from16 v0, v76

    move-object/from16 v1, v80

    invoke-static {v0, v1}, Lcom/mqgame/lib/SUtility;->unCompressData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v80

    if-nez v80, :cond_21

    .line 1493
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "uncompress failed:"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, " failed"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1494
    const-string v80, "SOG Exception"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    const-string v82, "unCompressData failed:"

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const v80, 0x7f09014f

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1496
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1499
    :cond_21
    const v80, 0x7f090111

    const/16 v81, 0x64

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1500
    const-string v80, "%d/%d"

    const/16 v81, 0x2

    move/from16 v0, v81

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v81, v0

    const/16 v82, 0x0

    add-int/lit8 v52, v52, 0x1

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    const/16 v82, 0x1

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    invoke-static/range {v80 .. v81}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 1502
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v76

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v27, "delOper":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    goto/16 :goto_f

    .line 1507
    .end local v27    # "delOper":Ljava/io/File;
    .end local v41    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v52    # "nCurIdx":I
    .end local v65    # "nStep":I
    .end local v76    # "szPkName":Ljava/lang/String;
    :cond_22
    const-string v80, "SOG Exception"

    const-string v81, "reinstall pak done"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    const-string v80, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_f

    .line 1510
    :try_start_d
    invoke-virtual {v12}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 1565
    .end local v11    # "ToPath":Ljava/lang/String;
    .end local v12    # "UnpackThead":Ljava/lang/Thread;
    .end local v49    # "lsHelper":[Ljava/util/LinkedList;, "[Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v50    # "lsMain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v51    # "lsT":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v55    # "nFileIdx":I
    .end local v56    # "nIdx":I
    .end local v61    # "nMainTaskIdx":I
    .end local v66    # "nTTaskIdx":I
    .end local v67    # "nTotalSize":[J
    .end local v79    # "unPackRunable":Ljava/lang/Runnable;
    :cond_23
    const v80, 0x7f090119

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1568
    const-string v9, "version.ini"

    .line 1569
    .local v9, "SAT_VERSION_NAME":Ljava/lang/String;
    const-string v80, "version.ini"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v81

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    sget-object v82, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    const-string v82, "version.ini"

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SLaunchActivity;->copyAssetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v80

    if-nez v80, :cond_27

    .line 1570
    const v80, 0x7f09014b

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1571
    const-string v80, "SOG Exception"

    const-string v81, "copyAssetFile failed:version.ini"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const-string v80, "copyAssetFile failed:version.ini"

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1573
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1512
    .end local v9    # "SAT_VERSION_NAME":Ljava/lang/String;
    .restart local v11    # "ToPath":Ljava/lang/String;
    .restart local v12    # "UnpackThead":Ljava/lang/Thread;
    .restart local v49    # "lsHelper":[Ljava/util/LinkedList;, "[Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v50    # "lsMain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v51    # "lsT":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v55    # "nFileIdx":I
    .restart local v56    # "nIdx":I
    .restart local v61    # "nMainTaskIdx":I
    .restart local v66    # "nTTaskIdx":I
    .restart local v67    # "nTotalSize":[J
    .restart local v79    # "unPackRunable":Ljava/lang/Runnable;
    :catch_10
    move-exception v29

    .line 1513
    .local v29, "e":Ljava/lang/Exception;
    :try_start_e
    const-string v80, "SOG Exception"

    const-string v81, "multithread uncompress failed"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const v80, 0x7f09014f

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1515
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1516
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1518
    .end local v29    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v29

    .line 1519
    .local v29, "e":Ljava/lang/Error;
    const-string v80, "SOG Exception"

    const-string v81, "multithread uncompress failed"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const v80, 0x7f09014f

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1521
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1522
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1526
    .end local v11    # "ToPath":Ljava/lang/String;
    .end local v12    # "UnpackThead":Ljava/lang/Thread;
    .end local v29    # "e":Ljava/lang/Error;
    .end local v49    # "lsHelper":[Ljava/util/LinkedList;, "[Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v50    # "lsMain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v51    # "lsT":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v55    # "nFileIdx":I
    .end local v56    # "nIdx":I
    .end local v61    # "nMainTaskIdx":I
    .end local v62    # "nNum":I
    .end local v66    # "nTTaskIdx":I
    .end local v67    # "nTotalSize":[J
    .end local v79    # "unPackRunable":Ljava/lang/Runnable;
    :cond_24
    const-string v80, "SOG_DEBUG"

    const-string v81, "Singlethread installing"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v62, v0

    .line 1528
    .restart local v62    # "nNum":I
    if-lez v62, :cond_23

    .line 1529
    const/16 v80, 0x3c

    div-int v65, v80, v62

    .line 1530
    .restart local v65    # "nStep":I
    const/16 v80, 0x1

    move/from16 v0, v65

    move/from16 v1, v80

    if-ge v0, v1, :cond_25

    .line 1531
    const/16 v65, 0x1

    .line 1532
    :cond_25
    const-string v80, "0/%d"

    const/16 v81, 0x1

    move/from16 v0, v81

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v81, v0

    const/16 v82, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    invoke-static/range {v80 .. v81}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 1533
    const/16 v56, 0x0

    .restart local v56    # "nIdx":I
    :goto_10
    move/from16 v0, v56

    move/from16 v1, v62

    if-ge v0, v1, :cond_23

    .line 1534
    const v80, 0x7f090111

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1535
    const v80, 0x7f090111

    const/16 v81, 0x63

    const/16 v82, 0x0

    const/16 v83, 0x3a98

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1536
    aget-object v76, v32, v56

    .line 1537
    .restart local v76    # "szPkName":Ljava/lang/String;
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "res"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SLaunchActivity;->extractAssetData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v80

    if-nez v80, :cond_26

    .line 1538
    const v80, 0x7f09014f

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1539
    const-string v80, "SOG Exception"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    const-string v82, "unCompressData failed:res"

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    sget-object v82, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    const-string v81, "unCompressData failed:res"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    move-object/from16 v0, v80

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1541
    const/16 v80, 0x0

    goto/16 :goto_8

    .line 1543
    :cond_26
    const-string v80, "%d/%d"

    const/16 v81, 0x2

    move/from16 v0, v81

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v81, v0

    const/16 v82, 0x0

    add-int/lit8 v83, v56, 0x1

    invoke-static/range {v83 .. v83}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    const/16 v82, 0x1

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    aput-object v83, v81, v82

    invoke-static/range {v80 .. v81}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 1544
    const v80, 0x7f090111

    const/16 v81, 0x64

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_f

    .line 1533
    add-int/lit8 v56, v56, 0x1

    goto/16 :goto_10

    .line 1576
    .end local v56    # "nIdx":I
    .end local v65    # "nStep":I
    .end local v76    # "szPkName":Ljava/lang/String;
    .restart local v9    # "SAT_VERSION_NAME":Ljava/lang/String;
    :cond_27
    const-string v80, "SOG Exception"

    const-string v81, "reinstall version done"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const v80, 0x7f090119

    const/16 v81, 0x62

    const/16 v82, 0x0

    const/16 v83, 0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1580
    invoke-interface/range {v72 .. v72}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v30

    .line 1581
    .restart local v30    # "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v17, :cond_28

    .line 1582
    const-string v80, "FullInstalled"

    const/16 v81, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v80

    move/from16 v2, v81

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1584
    :cond_28
    const-string v80, "FirstRun"

    const/16 v81, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v80

    move/from16 v2, v81

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1586
    const-string v28, ""

    .line 1588
    .local v28, "dmpURL":Ljava/lang/String;
    :try_start_f
    new-instance v73, Lcom/mqgame/lib/SUtility$SIniReader;

    new-instance v80, Ljava/lang/StringBuilder;

    invoke-direct/range {v80 .. v80}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v80

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    sget-object v81, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    const-string v81, "gamesettings.ini"

    invoke-virtual/range {v80 .. v81}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v80

    sget-object v81, Lcom/mqgame/lib/SSDK;->Language:Ljava/lang/String;

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-direct {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    .restart local v73    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    const-string v80, "Game"

    const-string v81, "DumpURL"

    move-object/from16 v0, v73

    move-object/from16 v1, v80

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_13

    move-result-object v28

    .line 1602
    .end local v73    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    :goto_11
    const-string v80, "DumpURL"

    move-object/from16 v0, v30

    move-object/from16 v1, v80

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1603
    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1605
    const-string v80, "SOG Exception"

    const-string v81, "reinstall commit settings done"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const v80, 0x7f090119

    const/16 v81, 0x64

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v81

    move-object/from16 v3, v82

    move/from16 v4, v83

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1609
    const/16 v80, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->cmdComment(I)V

    .line 1610
    const/16 v80, 0x3e8

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->shake(I)V

    .line 1612
    .end local v6    # "SAT_BASESETTING_NAME":Ljava/lang/String;
    .end local v7    # "SAT_LIB_PAK_NAME":Ljava/lang/String;
    .end local v8    # "SAT_RES_PAK_DIR_NAME":Ljava/lang/String;
    .end local v9    # "SAT_VERSION_NAME":Ljava/lang/String;
    .end local v10    # "TargetDir":Ljava/io/File;
    .end local v13    # "assetManager":Landroid/content/res/AssetManager;
    .end local v17    # "bDefaultABI":Z
    .end local v28    # "dmpURL":Ljava/lang/String;
    .end local v30    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v32    # "files":[Ljava/lang/String;
    .end local v62    # "nNum":I
    .end local v75    # "szABI":Ljava/lang/String;
    .end local v77    # "szTargetV":Ljava/lang/String;
    :cond_29
    const/16 v80, 0x1

    goto/16 :goto_8

    .line 1591
    .restart local v6    # "SAT_BASESETTING_NAME":Ljava/lang/String;
    .restart local v7    # "SAT_LIB_PAK_NAME":Ljava/lang/String;
    .restart local v8    # "SAT_RES_PAK_DIR_NAME":Ljava/lang/String;
    .restart local v9    # "SAT_VERSION_NAME":Ljava/lang/String;
    .restart local v10    # "TargetDir":Ljava/io/File;
    .restart local v13    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v17    # "bDefaultABI":Z
    .restart local v28    # "dmpURL":Ljava/lang/String;
    .restart local v30    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v32    # "files":[Ljava/lang/String;
    .restart local v62    # "nNum":I
    .restart local v75    # "szABI":Ljava/lang/String;
    .restart local v77    # "szTargetV":Ljava/lang/String;
    :catch_12
    move-exception v29

    .line 1592
    .local v29, "e":Ljava/io/IOException;
    const-string v80, "SOG Exception"

    const-string v81, "dmpURL failed"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-virtual/range {v29 .. v29}, Ljava/io/IOException;->printStackTrace()V

    .line 1594
    invoke-virtual/range {v29 .. v29}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_11

    .line 1596
    .end local v29    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v29

    .line 1597
    .local v29, "e":Ljava/lang/Error;
    const-string v80, "SOG Exception"

    const-string v81, "dmpURL failed"

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->printStackTrace()V

    .line 1599
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_11

    .line 1233
    .end local v6    # "SAT_BASESETTING_NAME":Ljava/lang/String;
    .end local v7    # "SAT_LIB_PAK_NAME":Ljava/lang/String;
    .end local v8    # "SAT_RES_PAK_DIR_NAME":Ljava/lang/String;
    .end local v9    # "SAT_VERSION_NAME":Ljava/lang/String;
    .end local v10    # "TargetDir":Ljava/io/File;
    .end local v13    # "assetManager":Landroid/content/res/AssetManager;
    .end local v16    # "bCurIsUpdatePkg":Z
    .end local v17    # "bDefaultABI":Z
    .end local v19    # "buddleBigger":Z
    .end local v20    # "buddleVBuild":I
    .end local v21    # "buddleVMajor":I
    .end local v22    # "buddleVMinor":I
    .end local v23    # "buddleVRevision":I
    .end local v28    # "dmpURL":Ljava/lang/String;
    .end local v29    # "e":Ljava/lang/Error;
    .end local v30    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v32    # "files":[Ljava/lang/String;
    .end local v35    # "instVBuild":I
    .end local v36    # "instVMajor":I
    .end local v37    # "instVMinor":I
    .end local v38    # "instVRevision":I
    .end local v62    # "nNum":I
    .end local v68    # "needInstall":Z
    .end local v75    # "szABI":Ljava/lang/String;
    .end local v77    # "szTargetV":Ljava/lang/String;
    :catch_14
    move-exception v80

    goto/16 :goto_6

    .line 1230
    :catch_15
    move-exception v80

    goto/16 :goto_6
.end method

.method protected chkReinstall()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1700
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "reinstall.apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1701
    .local v5, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1702
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1705
    invoke-static {v5}, Lcom/mqgame/lib/SUtility;->zipChkValid(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-nez v11, :cond_2

    .line 1706
    :cond_0
    const-string v10, "SOG"

    const-string v11, "SOGReinstall invalid apk file!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1760
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return v9

    .line 1711
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/mqgame/lib/SUtility;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 1712
    .local v7, "szCurPakName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v8, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1713
    .local v8, "szThatPakName":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1714
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1751
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "szCurPakName":Ljava/lang/String;
    .end local v8    # "szThatPakName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1752
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1753
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1720
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "szCurPakName":Ljava/lang/String;
    .restart local v8    # "szThatPakName":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v11, "global"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/mqgame/lib/SLaunchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1721
    .local v6, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1722
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "UpdateApk"

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1723
    .local v4, "nCurUpdateTimes":I
    if-le v4, v10, :cond_5

    .line 1724
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1730
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "nCurUpdateTimes":I
    .end local v6    # "pref":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v1

    .line 1731
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1738
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1739
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "application/vnd.android.package-archive"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1741
    const/high16 v11, 0x4000000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1742
    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1743
    invoke-virtual {p0, v3}, Lcom/mqgame/lib/SLaunchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    move v9, v10

    .line 1744
    goto :goto_0

    .line 1727
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "nCurUpdateTimes":I
    .restart local v6    # "pref":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_3
    const-string v11, "UpdateApk"

    add-int/lit8 v12, v4, 0x1

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1728
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1734
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "nCurUpdateTimes":I
    .end local v6    # "pref":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v1

    .line 1735
    .local v1, "e":Ljava/lang/Error;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 1756
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Error;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "szCurPakName":Ljava/lang/String;
    .end local v8    # "szThatPakName":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 1758
    .restart local v1    # "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 1759
    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected chkShowProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 928
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->mainText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    :cond_1
    return-void
.end method

.method public chkSupport()Z
    .locals 23

    .prologue
    .line 580
    :try_start_0
    sget-object v17, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v18, "activity"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 581
    .local v6, "activityManager":Landroid/app/ActivityManager;
    if-nez v6, :cond_0

    .line 582
    const v17, 0x7f09012a

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 583
    const/16 v17, 0x0

    .line 649
    .end local v6    # "activityManager":Landroid/app/ActivityManager;
    :goto_0
    return v17

    .line 586
    .restart local v6    # "activityManager":Landroid/app/ActivityManager;
    :cond_0
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 587
    const v17, 0x7f09012b

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 588
    const/16 v17, 0x0

    goto :goto_0

    .line 591
    :cond_1
    new-instance v14, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v14}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 592
    .local v14, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v6, v14}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 593
    const-string v17, "SOG_Check"

    const-string v18, "TotalMem:%d AveMem:%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getTotalMemory()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-wide v0, v14, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getTotalMemory()J

    move-result-wide v12

    .line 595
    .local v12, "ntotalmem":J
    iget-wide v10, v14, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 596
    .local v10, "nAvemem":J
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-lez v17, :cond_2

    const-wide/32 v17, 0x40000

    cmp-long v17, v12, v17

    if-gez v17, :cond_2

    const-wide/16 v17, 0x0

    cmp-long v17, v10, v17

    if-lez v17, :cond_2

    iget-wide v0, v14, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x3000000

    cmp-long v17, v17, v19

    if-gez v17, :cond_2

    .line 597
    const v17, 0x7f090128

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 598
    const-string v17, "TotalMem:%d AveMem:%d memory to low"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getTotalMemory()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    iget-wide v0, v14, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 604
    :cond_2
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 605
    .local v8, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v16

    .line 606
    .local v16, "windowMgr":Landroid/view/WindowManager;
    if-nez v16, :cond_3

    .line 607
    const v17, 0x7f09012a

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 608
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 610
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 611
    .local v5, "Display":Landroid/view/Display;
    if-nez v5, :cond_4

    .line 612
    const v17, 0x7f09012a

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 613
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 616
    :cond_4
    invoke-virtual {v5, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 617
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    const/16 v18, 0xa0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    const/16 v18, 0xa0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 618
    const v17, 0x7f09012a

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 619
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 623
    :cond_5
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v7

    .line 624
    .local v7, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    if-nez v7, :cond_6

    .line 625
    const v17, 0x7f09012a

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 626
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 629
    :cond_6
    iget v0, v7, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    move/from16 v17, v0

    const/high16 v18, 0x20000

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    const/4 v15, 0x1

    .line 631
    .local v15, "supportsEs2":Z
    :goto_1
    if-nez v15, :cond_8

    .line 632
    const-string v17, "GLESSupport"

    const-string v18, "ES2 Failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const v17, 0x7f09012c

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 634
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 629
    .end local v15    # "supportsEs2":Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_1

    .line 637
    .end local v5    # "Display":Landroid/view/Display;
    .end local v6    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "nAvemem":J
    .end local v12    # "ntotalmem":J
    .end local v14    # "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v16    # "windowMgr":Landroid/view/WindowManager;
    :catch_0
    move-exception v9

    .line 638
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 639
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 640
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 643
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 644
    .local v9, "e":Ljava/lang/Error;
    invoke-virtual {v9}, Ljava/lang/Error;->printStackTrace()V

    .line 645
    invoke-virtual {v9}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 646
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 649
    .end local v9    # "e":Ljava/lang/Error;
    .restart local v5    # "Display":Landroid/view/Display;
    .restart local v6    # "activityManager":Landroid/app/ActivityManager;
    .restart local v7    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    .restart local v8    # "dm":Landroid/util/DisplayMetrics;
    .restart local v10    # "nAvemem":J
    .restart local v12    # "ntotalmem":J
    .restart local v14    # "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v15    # "supportsEs2":Z
    .restart local v16    # "windowMgr":Landroid/view/WindowManager;
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method protected chkUpdate()I
    .locals 7

    .prologue
    const/16 v6, 0x64

    const v5, 0x7f090112

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1890
    invoke-virtual {p0, v5, v1, v4, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1892
    const-string v2, "gnustl_shared"

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->fixLoadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1916
    :goto_0
    return v0

    .line 1894
    :cond_0
    const-string v2, "compress"

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->fixLoadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1895
    goto :goto_0

    .line 1896
    :cond_1
    const-string v2, "curl"

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->fixLoadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 1897
    goto :goto_0

    .line 1901
    :cond_2
    const-string v2, "autoupdater"

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->fixLoadLibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1902
    goto :goto_0

    .line 1904
    :cond_3
    const/4 v2, 0x5

    invoke-virtual {p0, v5, v2, v4, v6}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1905
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->chkUpdatePrepare()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1906
    goto :goto_0

    .line 1908
    :cond_4
    const/16 v2, 0xa

    const/16 v3, 0xc8

    invoke-virtual {p0, v5, v2, v4, v3}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1911
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->chkUpdateRoutine()I

    move-result v0

    .line 1914
    .local v0, "result":I
    invoke-static {}, Lcom/mqgame/lib/SLaunchActivity;->doneUpdate()V

    .line 1915
    const v2, 0x7f09011a

    invoke-virtual {p0, v2, v6, v4, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method protected chkUpdatePrepare()Z
    .locals 8

    .prologue
    .line 1923
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLibPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLogPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mqgame/lib/SLaunchActivity;->PkgName:Ljava/lang/String;

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getABIPerfix()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/mqgame/lib/SUtility;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/mqgame/lib/SLaunchActivity;->prepareUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1930
    const/4 v0, 0x0

    .line 1938
    :goto_0
    return v0

    .line 1932
    :cond_0
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 1933
    .local v6, "ctx":Landroid/content/Context;
    if-eqz v6, :cond_1

    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090125

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1935
    .local v7, "vTxt":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/mqgame/lib/SLaunchActivity;->updateVersionTxt(Ljava/lang/String;)V

    .line 1938
    .end local v7    # "vTxt":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected chkUpdateRoutine()I
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1942
    const/4 v6, 0x0

    .line 1944
    .local v6, "chkres":I
    :try_start_0
    invoke-static {}, Lcom/mqgame/lib/SLaunchActivity;->chkNeedUpdate()I

    move-result v6

    .line 1945
    invoke-static {}, Lcom/mqgame/lib/SLaunchActivity;->isSupperVersion()Z

    move-result v0

    sput-boolean v0, Lcom/mqgame/lib/SUtility;->gSupperVersion:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1953
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 1972
    :cond_0
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "updatetips.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1973
    .local v1, "updateTipsLocalPath":Ljava/lang/String;
    const-string v0, "updatetips.ini"

    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->UpdateTipsURL:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mqgame/lib/SLaunchActivity;->chkUpdateCfg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1974
    new-instance v9, Lcom/mqgame/lib/SUtility$SIniReader;

    sget-object v0, Lcom/mqgame/lib/SSDK;->Language:Ljava/lang/String;

    invoke-direct {v9, v1, v0}, Lcom/mqgame/lib/SUtility$SIniReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    .local v9, "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    const-string v0, "tips"

    const-string v2, "t0"

    invoke-virtual {v9, v0, v2}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->UpdateTips:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 1986
    .end local v1    # "updateTipsLocalPath":Ljava/lang/String;
    .end local v9    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    :goto_1
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 2031
    .local v7, "ctx":Landroid/content/Context;
    invoke-virtual {p0, v11}, Lcom/mqgame/lib/SLaunchActivity;->cmdComment(I)V

    .line 2033
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->chkFullInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v11

    :goto_2
    invoke-static {v0}, Lcom/mqgame/lib/SLaunchActivity;->startUpdate(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2053
    .end local v7    # "ctx":Landroid/content/Context;
    :goto_3
    :pswitch_1
    return v12

    .line 1947
    :catch_0
    move-exception v8

    .line 1948
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1950
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1951
    .local v8, "e":Ljava/lang/Error;
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 1957
    .end local v8    # "e":Ljava/lang/Error;
    :pswitch_2
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->chkFullInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    const v0, 0x7f090114

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v12}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    move v12, v11

    .line 1959
    goto :goto_3

    .line 1977
    :catch_2
    move-exception v8

    .line 1978
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1979
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1981
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 1982
    .local v8, "e":Ljava/lang/Error;
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V

    .line 1983
    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Error;
    .restart local v7    # "ctx":Landroid/content/Context;
    :cond_1
    move v0, v12

    .line 2033
    goto :goto_2

    .line 2039
    :cond_2
    :goto_4
    invoke-static {}, Lcom/mqgame/lib/SLaunchActivity;->peekUpdateEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2040
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->processUpdateEvent()I

    move-result v10

    .line 2041
    .local v10, "result":I
    packed-switch v10, :pswitch_data_1

    :pswitch_3
    goto :goto_4

    .line 2043
    :pswitch_4
    invoke-virtual {p0, v12}, Lcom/mqgame/lib/SLaunchActivity;->cmdComment(I)V

    goto :goto_3

    .line 2047
    :pswitch_5
    invoke-virtual {p0, v12}, Lcom/mqgame/lib/SLaunchActivity;->cmdComment(I)V

    .line 2048
    const/4 v12, 0x2

    goto :goto_3

    .line 2051
    :pswitch_6
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->shake(I)V

    .line 2052
    invoke-virtual {p0, v12}, Lcom/mqgame/lib/SLaunchActivity;->cmdComment(I)V

    move v12, v11

    .line 2053
    goto :goto_3

    .line 2059
    .end local v10    # "result":I
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4

    .line 1953
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2041
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public cmdComment(I)V
    .locals 2
    .param p1, "nShow"    # I

    .prologue
    .line 1044
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1045
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1046
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1047
    iget-object v1, p0, Lcom/mqgame/lib/SLaunchActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1048
    return-void
.end method

.method protected copyAssetFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 983
    const/4 v1, 0x0

    .line 984
    .local v1, "bytesum":I
    const/4 v0, 0x0

    .line 985
    .local v0, "byteread":I
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 986
    .local v4, "fTo":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 987
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 988
    .local v2, "ctx":Landroid/content/Context;
    if-nez v2, :cond_0

    .line 990
    const-string v8, "Copy assetfaile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "From:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " To:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy assetfaile From:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " To:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1015
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "fTo":Ljava/io/File;
    :goto_0
    return v7

    .line 994
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v4    # "fTo":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 995
    .local v6, "inStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 997
    .local v5, "fs":Ljava/io/OutputStream;
    :goto_1
    iget-object v8, p0, Lcom/mqgame/lib/SLaunchActivity;->buffer:[B

    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    .line 998
    add-int/2addr v1, v0

    .line 999
    iget-object v8, p0, Lcom/mqgame/lib/SLaunchActivity;->buffer:[B

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1004
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "fTo":Ljava/io/File;
    .end local v5    # "fs":Ljava/io/OutputStream;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 1005
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1006
    const-string v8, "Copy assetfaile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "From:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " To:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy assetfaile From:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " To:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1001
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v4    # "fTo":Ljava/io/File;
    .restart local v5    # "fs":Ljava/io/OutputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1002
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 1003
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1011
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "fTo":Ljava/io/File;
    .end local v5    # "fs":Ljava/io/OutputStream;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 1012
    .local v3, "e":Ljava/lang/Error;
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    .line 1013
    const-string v8, "Copy assetfaile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "From:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " To:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {v3}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected copyLibFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "bytesum":I
    const/4 v0, 0x0

    .line 248
    .local v0, "byteread":I
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v4, "fTo":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 250
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 251
    .local v2, "ctx":Landroid/content/Context;
    if-nez v2, :cond_0

    .line 253
    const-string v8, "Copy lib file"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "From:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " To:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy lib file From:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " To:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 278
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "fTo":Ljava/io/File;
    :goto_0
    return v7

    .line 257
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v4    # "fTo":Ljava/io/File;
    :cond_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 258
    .local v6, "inStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 260
    .local v5, "fs":Ljava/io/OutputStream;
    :goto_1
    iget-object v8, p0, Lcom/mqgame/lib/SLaunchActivity;->buffer:[B

    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    .line 261
    add-int/2addr v1, v0

    .line 262
    iget-object v8, p0, Lcom/mqgame/lib/SLaunchActivity;->buffer:[B

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 267
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "fTo":Ljava/io/File;
    .end local v5    # "fs":Ljava/io/OutputStream;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 268
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    const-string v8, "Copy assetfaile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "From:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " To:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy assetfaile From:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " To:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v4    # "fTo":Ljava/io/File;
    .restart local v5    # "fs":Ljava/io/OutputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 265
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 274
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "fTo":Ljava/io/File;
    .end local v5    # "fs":Ljava/io/OutputStream;
    .end local v6    # "inStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 275
    .local v3, "e":Ljava/lang/Error;
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    .line 276
    const-string v8, "Copy assetfaile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "From:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " To:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v3}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public extractAssetData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "targetDir"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 940
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 941
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 942
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 945
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tmp.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 946
    .local v3, "tmpPath":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/mqgame/lib/SLaunchActivity;->copyAssetFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 948
    const-string v5, "extractAssetData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "From:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " To:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractAssetData From:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " To:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 977
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "tmpPath":Ljava/lang/String;
    :goto_0
    return v4

    .line 954
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "tmpPath":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mqgame/lib/SUtility;->unCompressData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 955
    const-string v5, "SUtility.unCompressData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "From:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " To:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUtility.unCompressData From:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " To:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 964
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "tmpPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 966
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "extractAssetData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "From:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " To:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 968
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 961
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "tmpPath":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 962
    .local v0, "delOper":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 977
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 971
    .end local v0    # "delOper":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "tmpPath":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 972
    .local v2, "e":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 973
    const-string v5, "extractAssetData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "From:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " To:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {v2}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected fixLoadLibrary(Ljava/lang/String;)Z
    .locals 9
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1845
    const/4 v1, 0x0

    .line 1846
    .local v1, "bCanFix":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLibPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1848
    .local v4, "libAlterPath":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1864
    if-eqz v1, :cond_0

    .line 1865
    :try_start_1
    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1866
    const-string v6, "SOG_DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading liberary from path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 1883
    :goto_0
    const/4 v5, 0x1

    .end local v3    # "file":Ljava/io/File;
    :goto_1
    return v5

    .line 1851
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "any":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1854
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1857
    .end local v0    # "any":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1859
    .local v2, "e":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 1860
    invoke-virtual {v2}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1869
    .end local v2    # "e":Ljava/lang/Error;
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1870
    const-string v6, "SOG_DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading liberary from inner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 1873
    :catch_2
    move-exception v2

    .line 1874
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1875
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1878
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 1879
    .local v2, "e":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 1880
    invoke-virtual {v2}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected launchGame()V
    .locals 11

    .prologue
    const v6, 0x7f090157

    const/4 v10, 0x0

    const/16 v9, 0x64

    const/4 v8, 0x0

    .line 1784
    const-string v4, "sog_debug"

    const-string v5, "launch service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->launchService()V

    .line 1788
    const-string v4, "sog_debug"

    const-string v5, "launch game"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    invoke-virtual {p0, v6, v8, v10, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1791
    const/16 v4, 0x4e20

    invoke-virtual {p0, v6, v9, v10, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1793
    sget-object v4, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1794
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1795
    .local v3, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1797
    const/4 v1, 0x0

    .line 1798
    .local v1, "bNeedWait":Z
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v6, 0x6400000

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1799
    const v4, 0x7f090129

    invoke-virtual {p0, v4, v9, v10, v8}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1800
    const/4 v1, 0x1

    .line 1820
    :cond_0
    iput-boolean v8, p0, Lcom/mqgame/lib/SLaunchActivity;->needexit:Z

    .line 1822
    if-nez v1, :cond_1

    .line 1823
    const v4, 0x7f09011c

    invoke-virtual {p0, v4, v9, v10, v8}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1825
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/mqgame/lib/SNativeActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1826
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1827
    const/high16 v4, 0x10000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1828
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1829
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1830
    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 1831
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->quit()V

    .line 1832
    return-void
.end method

.method protected launchSelf()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1835
    iput-boolean v4, p0, Lcom/mqgame/lib/SLaunchActivity;->needexit:Z

    .line 1836
    const v1, 0x7f09011b

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1837
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1838
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1839
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1840
    invoke-virtual {p0, v0}, Lcom/mqgame/lib/SLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 1841
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->quit()V

    .line 1842
    return-void
.end method

.method protected launchService()V
    .locals 5

    .prologue
    .line 1766
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1767
    .local v1, "iE":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/mqgame/lib/SService;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1768
    invoke-virtual {p0, v1}, Lcom/mqgame/lib/SLaunchActivity;->stopService(Landroid/content/Intent;)Z

    .line 1770
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1771
    .local v2, "iS":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/mqgame/lib/SService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1772
    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SLaunchActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1780
    .end local v1    # "iE":Landroid/content/Intent;
    .end local v2    # "iS":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1777
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1778
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public moveProcess(II)V
    .locals 10
    .param p1, "to"    # I
    .param p2, "interval"    # I

    .prologue
    const-wide/16 v2, 0x64

    const/16 v4, 0x64

    .line 821
    if-gez p1, :cond_1

    .line 823
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v6

    .line 827
    .local v6, "cur":I
    if-le v6, p1, :cond_2

    .line 828
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 829
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 831
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 837
    :goto_1
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 838
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v6

    .line 842
    sub-int v9, p1, v6

    .line 843
    .local v9, "nTotal":I
    if-gtz v9, :cond_3

    .line 844
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 849
    :cond_3
    if-nez p2, :cond_5

    .line 850
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 851
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 852
    if-ne p1, v4, :cond_4

    .line 854
    const-wide/16 v0, 0x96

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 862
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 867
    :cond_5
    const/16 v8, 0x32

    .line 868
    .local v8, "nTimerInterval":I
    const/4 v0, 0x1

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progressrate:I

    .line 869
    iput p1, p0, Lcom/mqgame/lib/SLaunchActivity;->progressdest:I

    .line 870
    mul-int/lit8 v0, v9, 0x32

    div-int v7, v0, p2

    .line 871
    .local v7, "nDefFrames":I
    if-nez v7, :cond_6

    .line 872
    div-int v8, p2, v9

    .line 873
    if-nez v8, :cond_6

    .line 874
    const/16 v8, 0xa

    .line 877
    :cond_6
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 878
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 881
    :cond_7
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    .line 882
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;

    new-instance v1, Lcom/mqgame/lib/SLaunchActivity$4;

    invoke-direct {v1, p0}, Lcom/mqgame/lib/SLaunchActivity$4;-><init>(Lcom/mqgame/lib/SLaunchActivity;)V

    int-to-long v4, v8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 833
    .end local v7    # "nDefFrames":I
    .end local v8    # "nTimerInterval":I
    .end local v9    # "nTotal":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 835
    :catch_1
    move-exception v0

    goto :goto_1

    .line 856
    .restart local v9    # "nTotal":I
    :catch_2
    move-exception v0

    goto :goto_2

    .line 858
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x14

    const/high16 v11, 0x20000

    const/4 v10, 0x1

    .line 695
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 697
    const-string v8, "sog_debug"

    const-string v9, "launcher launched"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v5, 0x0

    .line 704
    .local v5, "nTryChkRunTimes":I
    :goto_0
    const/4 v1, 0x1

    .line 705
    .local v1, "bSafeStartup":Z
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/mqgame/lib/SLaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 706
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v8, 0x100

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 707
    .local v6, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 710
    .local v7, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.mqgame.lib.SNativeActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.mqgame.lib.SNativeActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 713
    :cond_1
    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lt v8, v10, :cond_2

    .line 714
    const-string v8, "sog_debug"

    const-string v9, "SOGActivity:Relaunch native"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/mqgame/lib/SNativeActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 716
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 717
    invoke-virtual {p0, v4}, Lcom/mqgame/lib/SLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 718
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->finish()V

    .line 782
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_1
    return-void

    .line 722
    .restart local v7    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 723
    if-lt v5, v12, :cond_0

    .line 724
    const-string v8, "sog_debug"

    const-string v9, "SOGActivity:Relaunch native try time out"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/mqgame/lib/SNativeActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 727
    invoke-virtual {p0, v4}, Lcom/mqgame/lib/SLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 728
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->finish()V

    goto :goto_1

    .line 737
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.mqgame.lib.SLaunchActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->getTaskId()I

    move-result v8

    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eq v8, v9, :cond_0

    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lt v8, v10, :cond_0

    .line 739
    const/4 v1, 0x0

    .line 740
    add-int/lit8 v5, v5, 0x1

    .line 741
    if-lt v5, v12, :cond_0

    .line 742
    const-string v8, "sog_debug"

    const-string v9, "SOGActivity:Relaunch duplicate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 744
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 745
    invoke-virtual {p0, v4}, Lcom/mqgame/lib/SLaunchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 751
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    if-eqz v1, :cond_5

    .line 771
    const-string v8, "sog_debug"

    const-string v9, "SOGActivity launcher normally startup"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iput-boolean v10, p0, Lcom/mqgame/lib/SLaunchActivity;->needexit:Z

    .line 777
    invoke-static {p0}, Lcom/mqgame/lib/SUtility;->setup(Landroid/app/Activity;)Z

    .line 778
    invoke-static {}, Lcom/mqgame/lib/SUtility;->setupUnhandledException()V

    .line 781
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->PrepareLauncher()V

    goto :goto_1

    .line 755
    :cond_5
    const-wide/16 v8, 0x64

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 757
    :catch_0
    move-exception v2

    .line 758
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 759
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->finish()V

    goto :goto_1

    .line 763
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 764
    .local v2, "e":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 765
    invoke-virtual {v2}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Lcom/mqgame/lib/SLaunchActivity;->finish()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 686
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 687
    iget-boolean v0, p0, Lcom/mqgame/lib/SLaunchActivity;->needexit:Z

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "safe out"

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 689
    const-string v0, "sog_debug"

    const-string v1, "SOG Safe out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 692
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1026
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1027
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 1021
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1022
    return-void
.end method

.method public preLog()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 907
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 908
    .local v0, "fOld":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, p0, Lcom/mqgame/lib/SLaunchActivity;->GLOG_CLEAN_LINE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 919
    .end local v0    # "fOld":Ljava/io/File;
    :goto_0
    return v6

    .line 911
    .restart local v0    # "fOld":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 912
    .local v1, "log":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 913
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 915
    .end local v0    # "fOld":Ljava/io/File;
    .end local v1    # "log":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 917
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 565
    :try_start_0
    const-string v1, "networkaddress.cache.ttl"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 573
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Error;
    goto :goto_0
.end method

.method protected prepareABI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "szDataPath"    # Ljava/lang/String;
    .param p2, "szABIPerfix"    # Ljava/lang/String;
    .param p3, "szLibPath"    # Ljava/lang/String;
    .param p4, "szTargetVersion"    # Ljava/lang/String;

    .prologue
    .line 1618
    :try_start_0
    const-string v6, "0/4"

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 1619
    new-instance v4, Lcom/mqgame/lib/SUtility$SIniReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "launcher.cfg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/mqgame/lib/SSDK;->Language:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcom/mqgame/lib/SUtility$SIniReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    .local v4, "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    const-string v6, "Cfg"

    const-string v7, "BaseUrl"

    invoke-virtual {v4, v6, v7}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1621
    .local v1, "baseURL":Ljava/lang/String;
    const/16 v6, 0x2e

    const/16 v7, 0x5f

    invoke-virtual {p4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 1622
    .local v5, "verName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1623
    .local v3, "libURL":Ljava/lang/String;
    const-string v6, "ABIPrepare"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1626
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1627
    .local v0, "Dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 1635
    .end local v0    # "Dir":Ljava/io/File;
    :goto_0
    const v6, 0x7f090113

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x32

    :try_start_2
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1636
    const v6, 0x7f090113

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1637
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "libcompress.so.zp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6}, Lcom/mqgame/lib/SUtility;->tryhttpDownloadExtractTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1638
    const/4 v6, 0x0

    .line 1675
    .end local v1    # "baseURL":Ljava/lang/String;
    .end local v3    # "libURL":Ljava/lang/String;
    .end local v4    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .end local v5    # "verName":Ljava/lang/String;
    :goto_1
    return v6

    .line 1639
    .restart local v1    # "baseURL":Ljava/lang/String;
    .restart local v3    # "libURL":Ljava/lang/String;
    .restart local v4    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .restart local v5    # "verName":Ljava/lang/String;
    :cond_0
    const-string v6, "1/4"

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 1641
    const v6, 0x7f090113

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x32

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1642
    const v6, 0x7f090113

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "libcurl.so.zp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6}, Lcom/mqgame/lib/SUtility;->tryhttpDownloadExtractTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1644
    const/4 v6, 0x0

    goto :goto_1

    .line 1645
    :cond_1
    const-string v6, "2/4"

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 1647
    const v6, 0x7f090113

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x32

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1648
    const v6, 0x7f090113

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "libautoupdater.so.zp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6}, Lcom/mqgame/lib/SUtility;->tryhttpDownloadExtractTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1650
    const/4 v6, 0x0

    goto :goto_1

    .line 1651
    :cond_2
    const-string v6, "3/4"

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 1653
    const v6, 0x7f090113

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x32

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1654
    const v6, 0x7f090113

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1655
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "libgnustl_shared.so.zp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6}, Lcom/mqgame/lib/SUtility;->tryhttpDownloadExtractTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1656
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1657
    :cond_3
    const-string v6, "4/4"

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 1673
    const v6, 0x7f090113

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/16 v9, 0x32

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1674
    const-string v6, ""

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 1675
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1659
    .end local v1    # "baseURL":Ljava/lang/String;
    .end local v3    # "libURL":Ljava/lang/String;
    .end local v4    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .end local v5    # "verName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1660
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SOG_DEBUG"

    const-string v7, "Prepare ABI Failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1662
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1663
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1665
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1667
    .local v2, "e":Ljava/lang/Error;
    const-string v6, "SOG_DEBUG"

    const-string v7, "Prepare ABI Failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 1669
    invoke-virtual {v2}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1670
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1632
    .end local v2    # "e":Ljava/lang/Error;
    .restart local v1    # "baseURL":Ljava/lang/String;
    .restart local v3    # "libURL":Ljava/lang/String;
    .restart local v4    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .restart local v5    # "verName":Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 1629
    :catch_3
    move-exception v6

    goto/16 :goto_0
.end method

.method protected processUpdateEvent()I
    .locals 26

    .prologue
    .line 2065
    invoke-static {}, Lcom/mqgame/lib/SLaunchActivity;->getLatestUpdateEventType()I

    move-result v16

    .line 2066
    .local v16, "nEventType":I
    invoke-static {}, Lcom/mqgame/lib/SLaunchActivity;->getLatestUpdateEventSubType()I

    move-result v15

    .line 2067
    .local v15, "nEventSubType":I
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/mqgame/lib/SLaunchActivity;->getLatestUpdateEventParam(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v9, v0

    .line 2068
    .local v9, "nEventParam0":J
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/mqgame/lib/SLaunchActivity;->getLatestUpdateEventParam(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v11, v0

    .line 2069
    .local v11, "nEventParam1":J
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Lcom/mqgame/lib/SLaunchActivity;->getLatestUpdateEventParam(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v13, v0

    .line 2071
    .local v13, "nEventParam2":J
    invoke-virtual/range {p0 .. p0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 2072
    .local v5, "ctx":Landroid/content/Context;
    const-string v6, ""

    .line 2073
    .local v6, "downloadDetail":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 2074
    const v18, 0x7f090123

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2076
    :cond_0
    packed-switch v16, :pswitch_data_0

    .line 2167
    :cond_1
    :goto_0
    const/16 v18, 0x1

    :goto_1
    return v18

    .line 2078
    :pswitch_0
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 2079
    const v18, 0x7f090118

    const/16 v19, 0x0

    const-string v20, "%dKB/s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curProcessSpeed:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    goto :goto_0

    .line 2081
    :cond_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_3

    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-eqz v18, :cond_3

    .line 2082
    const-string v18, "sog_debug"

    const-string v19, "Sog downloading %d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    long-to-int v0, v13

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const-wide/16 v18, 0x400

    div-long v18, v13, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mqgame/lib/SLaunchActivity;->curProcessSpeed:J

    .line 2084
    const v18, 0x7f090118

    const-wide/16 v19, 0x64

    mul-long v19, v19, v9

    div-long v19, v19, v11

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    const-string v20, "%dKB/s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curProcessSpeed:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2086
    :cond_3
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 2088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curProcessDownload:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curTotaldownload:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 2089
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curProcessDownload:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mqgame/lib/SLaunchActivity;->curProcessDownload:I

    .line 2092
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curTotaldownload:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 2093
    const-string v18, "%d/%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curProcessDownload:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curTotaldownload:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 2094
    :cond_5
    const v18, 0x7f090118

    const/16 v19, 0x64

    const-string v20, "%dKB/s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curProcessSpeed:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2100
    :pswitch_1
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v15, v0, :cond_b

    .line 2101
    long-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mqgame/lib/SLaunchActivity;->curTotaldownload:I

    .line 2102
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mqgame/lib/SLaunchActivity;->curProcessDownload:I

    .line 2104
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getNetState()I

    move-result v17

    .line 2105
    .local v17, "nNetState":I
    sget v18, Lcom/mqgame/lib/SUtility;->SNET_WIFI:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2106
    const/16 v18, 0x2

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/mqgame/lib/SLaunchActivity;->modifyLatestUpdateEventParamAsPointer(II)V

    .line 2145
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curTotaldownload:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 2146
    const-string v18, "%d/%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curProcessDownload:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mqgame/lib/SLaunchActivity;->curTotaldownload:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2110
    :cond_6
    if-eqz v5, :cond_7

    const-wide/16 v18, 0x400

    :try_start_0
    div-long v18, v11, v18

    const-wide/16 v20, 0xa

    cmp-long v18, v18, v20

    if-gez v18, :cond_8

    .line 2111
    :cond_7
    const/16 v18, 0x2

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/mqgame/lib/SLaunchActivity;->modifyLatestUpdateEventParamAsPointer(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2135
    :catch_0
    move-exception v7

    .line 2136
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 2137
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_2

    .line 2114
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    const-wide/32 v18, 0x100000

    cmp-long v18, v11, v18

    if-gez v18, :cond_9

    .line 2115
    const v18, 0x7f090121

    const v19, 0x7f090122

    const v20, 0x7f090120

    const v21, 0x7f090126

    :try_start_1
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-wide/16 v24, 0x400

    div-long v24, v11, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->showComMsg(IIILjava/lang/String;)V

    .line 2126
    :goto_3
    invoke-static {}, Lcom/mqgame/lib/SComMessage;->waitSel()V

    .line 2127
    sget v18, Lcom/mqgame/lib/SComMessage;->selresult:I

    sget v19, Lcom/mqgame/lib/SComMessage;->SAT_COMMSG_SEL_CANCEL:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 2128
    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/mqgame/lib/SLaunchActivity;->modifyLatestUpdateEventParamAsPointer(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 2140
    :catch_1
    move-exception v7

    .line 2141
    .local v7, "e":Ljava/lang/Error;
    invoke-virtual {v7}, Ljava/lang/Error;->printStackTrace()V

    .line 2142
    invoke-virtual {v7}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2120
    .end local v7    # "e":Ljava/lang/Error;
    :cond_9
    const-wide/16 v18, 0x400

    :try_start_2
    div-long v18, v11, v18

    move-wide/from16 v0, v18

    long-to-float v8, v0

    .line 2121
    .local v8, "fMb":F
    const v18, 0x7f090121

    const v19, 0x7f090122

    const v20, 0x7f090120

    const v21, 0x7f090127

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x44800000    # 1024.0f

    div-float v24, v8, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->showComMsg(IIILjava/lang/String;)V

    goto :goto_3

    .line 2131
    .end local v8    # "fMb":F
    :cond_a
    const/16 v18, 0x2

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/mqgame/lib/SLaunchActivity;->modifyLatestUpdateEventParamAsPointer(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2148
    .end local v17    # "nNetState":I
    :cond_b
    if-nez v15, :cond_c

    .line 2149
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2150
    :cond_c
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_d

    .line 2151
    const v18, 0x7f090119

    const/16 v19, 0x55

    const/16 v20, 0x0

    const/16 v21, 0x3a98

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 2152
    const-string v18, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2154
    :cond_d
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_e

    .line 2155
    const/16 v18, 0x2

    goto/16 :goto_1

    .line 2156
    :cond_e
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v15, v0, :cond_f

    .line 2157
    const v18, 0x7f090119

    const/16 v19, 0x5a

    const/16 v20, 0x0

    const/16 v21, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 2158
    const/16 v18, 0x3

    goto/16 :goto_1

    .line 2160
    :cond_f
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 2161
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2076
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 1083
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1084
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1085
    iget-object v1, p0, Lcom/mqgame/lib/SLaunchActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1086
    return-void
.end method

.method reloadLauncherCfg()V
    .locals 5

    .prologue
    .line 68
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "launcher.cfg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "cfgPath":Ljava/lang/String;
    new-instance v2, Lcom/mqgame/lib/SUtility$SIniReader;

    sget-object v3, Lcom/mqgame/lib/SSDK;->Language:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/mqgame/lib/SUtility$SIniReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v2, "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    const-string v3, "Cfg"

    const-string v4, "Filter"

    invoke-virtual {v2, v3, v4}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqgame/lib/SLaunchActivity;->FilterURL:Ljava/lang/String;

    .line 71
    const-string v3, "Cfg"

    const-string v4, "FilterCRC"

    invoke-virtual {v2, v3, v4}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqgame/lib/SLaunchActivity;->FilterURLCRC:Ljava/lang/String;

    .line 72
    const-string v3, "Cfg"

    const-string v4, "UpdateTips"

    invoke-virtual {v2, v3, v4}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqgame/lib/SLaunchActivity;->UpdateTipsURL:Ljava/lang/String;

    .line 73
    const-string v3, "Cfg"

    const-string v4, "OpName"

    invoke-virtual {v2, v3, v4}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqgame/lib/SLaunchActivity;->PkgName:Ljava/lang/String;

    .line 74
    iget-object v3, p0, Lcom/mqgame/lib/SLaunchActivity;->PkgName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 75
    const-string v3, ""

    iput-object v3, p0, Lcom/mqgame/lib/SLaunchActivity;->PkgName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .end local v0    # "cfgPath":Ljava/lang/String;
    .end local v2    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 84
    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setProgressRate(I)V
    .locals 1
    .param p1, "nRate"    # I

    .prologue
    .line 935
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 936
    return-void
.end method

.method protected setProgressText(I)V
    .locals 1
    .param p1, "strid"    # I

    .prologue
    .line 923
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->mainText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->mainText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 925
    :cond_0
    return-void
.end method

.method public showComMsg(IIILjava/lang/String;)V
    .locals 9
    .param p1, "szOkid"    # I
    .param p2, "szCancelid"    # I
    .param p3, "szTitleid"    # I
    .param p4, "szMsg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1065
    invoke-static {p0}, Lcom/mqgame/lib/SComMessage;->getShowableContex(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v7

    .line 1066
    .local v7, "ctx":Landroid/content/Context;
    if-eqz v7, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1067
    invoke-static/range {v0 .. v5}, Lcom/mqgame/lib/SComMessage;->showComMessage(Landroid/content/Context;IIILjava/lang/String;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1072
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1073
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 1074
    .local v8, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v8, Landroid/os/Message;->what:I

    .line 1075
    iput v5, v8, Landroid/os/Message;->arg1:I

    .line 1076
    iput v5, v8, Landroid/os/Message;->arg2:I

    .line 1077
    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1078
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1080
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public startComment()V
    .locals 7

    .prologue
    .line 785
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    const/16 v6, 0x1a

    .line 789
    .local v6, "nTotal":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x403a000000000000L    # 26.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/mqgame/lib/SLaunchActivity;->curcommonTxtIdx:I

    .line 790
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonTextTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonTextTimer:Ljava/util/Timer;

    .line 795
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonTextTimer:Ljava/util/Timer;

    .line 796
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonTextTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mqgame/lib/SLaunchActivity$3;

    invoke-direct {v1, p0}, Lcom/mqgame/lib/SLaunchActivity$3;-><init>(Lcom/mqgame/lib/SLaunchActivity;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 811
    return-void
.end method

.method public stopComment()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonTextTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqgame/lib/SLaunchActivity;->commonTextTimer:Ljava/util/Timer;

    .line 818
    :cond_0
    return-void
.end method

.method public updateSmallProTxt(Ljava/lang/String;)V
    .locals 2
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1058
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1059
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1060
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1061
    iget-object v1, p0, Lcom/mqgame/lib/SLaunchActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1062
    return-void
.end method

.method public updateUIProgress(IILjava/lang/String;I)V
    .locals 3
    .param p1, "title"    # I
    .param p2, "nProgress"    # I
    .param p3, "append"    # Ljava/lang/String;
    .param p4, "nInterval"    # I

    .prologue
    .line 1031
    new-instance v0, Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;

    invoke-direct {v0, p0}, Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;-><init>(Lcom/mqgame/lib/SLaunchActivity;)V

    .line 1032
    .local v0, "data":Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;
    iput-object p3, v0, Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;->appendtxt:Ljava/lang/String;

    .line 1033
    iput p4, v0, Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;->progressinterval:I

    .line 1035
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1036
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1037
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1038
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1039
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1040
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1041
    return-void
.end method

.method public updateVersionTxt(Ljava/lang/String;)V
    .locals 2
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1051
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1052
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1053
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1054
    iget-object v1, p0, Lcom/mqgame/lib/SLaunchActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1055
    return-void
.end method
