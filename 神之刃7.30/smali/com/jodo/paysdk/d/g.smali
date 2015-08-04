.class public final Lcom/jodo/paysdk/d/g;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/os/Handler;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Lcom/jodo/shares/net/shares/b;

.field private static e:J

.field private static f:Landroid/widget/RelativeLayout;

.field private static g:Landroid/widget/ProgressBar;

.field private static h:Landroid/view/ViewManager;

.field private static i:Landroid/widget/TextView;

.field private static j:Lcom/jodo/paysdk/d/j;

.field private static k:Lcom/jodo/paysdk/model/UnzipInfo;

.field private static l:Landroid/os/Handler;

.field private static m:Z

.field private static final n:Landroid/net/Uri;

.field private static o:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " http://res.jodoplay.com/resource/down?"

    sput-object v0, Lcom/jodo/paysdk/d/g;->b:Ljava/lang/String;

    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/d/g;->n:Landroid/net/Uri;

    new-instance v0, Lcom/jodo/paysdk/d/h;

    invoke-direct {v0}, Lcom/jodo/paysdk/d/h;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/d/g;->a:Landroid/os/Handler;

    new-instance v0, Lcom/jodo/paysdk/d/i;

    invoke-direct {v0}, Lcom/jodo/paysdk/d/i;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/d/g;->o:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a()V
    .locals 6

    sget-object v0, Lcom/jodo/paysdk/d/g;->d:Lcom/jodo/shares/net/shares/b;

    sget-wide v1, Lcom/jodo/paysdk/d/g;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/jodo/shares/net/shares/b;->b(J)[I

    move-result-object v0

    sget-object v1, Lcom/jodo/paysdk/d/g;->a:Landroid/os/Handler;

    sget-object v2, Lcom/jodo/paysdk/d/g;->a:Landroid/os/Handler;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    sput-object p0, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    sget-object v1, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/config/a;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v2}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/jodo/paysdk/util/ab;->b(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/jodo/paysdk/d/g;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "channel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "&cpid="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&gameid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&push_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&gameVc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&gamePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&psw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    aput-object v6, v1, v10

    invoke-static {v1}, Lcom/jodo/paysdk/d/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/d/g;->b:Ljava/lang/String;

    sput-object p1, Lcom/jodo/paysdk/d/g;->k:Lcom/jodo/paysdk/model/UnzipInfo;

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/UnzipInfo;->isAutoDownloadExtFiles()Z

    move-result v0

    sput-boolean v0, Lcom/jodo/paysdk/d/g;->m:Z

    sput-object p2, Lcom/jodo/paysdk/d/g;->l:Landroid/os/Handler;

    new-instance v0, Lcom/jodo/shares/net/shares/b;

    sget-object v1, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v10}, Lcom/jodo/shares/net/shares/b;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/jodo/paysdk/d/g;->d:Lcom/jodo/shares/net/shares/b;

    sget-object v0, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    sget-object v1, Lcom/jodo/paysdk/d/g;->o:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/jodo/paysdk/d/g;->h:Landroid/view/ViewManager;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7d3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x28

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v2, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "jodoplay_download_landscape"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/jodo/paysdk/d/g;->f:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "download_progress_landscape"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/jodo/paysdk/d/g;->g:Landroid/widget/ProgressBar;

    sget-object v0, Lcom/jodo/paysdk/d/g;->f:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "download_below_landscape"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/jodo/paysdk/d/g;->i:Landroid/widget/TextView;

    :goto_0
    sget-object v0, Lcom/jodo/paysdk/d/g;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jodo/paysdk/d/g;->h:Landroid/view/ViewManager;

    sget-object v2, Lcom/jodo/paysdk/d/g;->f:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v2, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    new-instance v0, Lcom/jodo/paysdk/d/j;

    invoke-direct {v0}, Lcom/jodo/paysdk/d/j;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/d/g;->j:Lcom/jodo/paysdk/d/j;

    sget-object v0, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jodo/paysdk/d/g;->n:Landroid/net/Uri;

    sget-object v2, Lcom/jodo/paysdk/d/g;->j:Lcom/jodo/paysdk/d/j;

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-boolean v0, Lcom/jodo/paysdk/d/g;->m:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jodo/paysdk/d/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v10}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    sget-object v2, Lcom/jodo/paysdk/d/g;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v9}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v9}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    sget-object v0, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    sget-object v2, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jodo/paysdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jodo/paysdk/model/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/JODO_PAYSDK_TEST/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    iget v4, v3, Landroid/text/format/Time;->year:I

    iget v5, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    iget v7, v3, Landroid/text/format/Time;->hour:I

    iget v3, v3, Landroid/text/format/Time;->minute:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".zip"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    sget-object v0, Lcom/jodo/paysdk/d/g;->d:Lcom/jodo/shares/net/shares/b;

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/b;->a(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_2
    sput-wide v0, Lcom/jodo/paysdk/d/g;->e:J

    return-void

    :cond_0
    sget-object v2, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "jodoplay_download_portrait"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/jodo/paysdk/d/g;->f:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "download_progress_portrait"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/jodo/paysdk/d/g;->g:Landroid/widget/ProgressBar;

    sget-object v0, Lcom/jodo/paysdk/d/g;->f:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "download_below_portrait"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/jodo/paysdk/d/g;->i:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/jodo/paysdk/d/g;->h:Landroid/view/ViewManager;

    sget-object v1, Lcom/jodo/paysdk/d/g;->f:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_2
.end method

.method static synthetic b()Landroid/widget/ProgressBar;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/g;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/g;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d()J
    .locals 2

    sget-wide v0, Lcom/jodo/paysdk/d/g;->e:J

    return-wide v0
.end method

.method static synthetic e()Lcom/jodo/shares/net/shares/b;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/g;->d:Lcom/jodo/shares/net/shares/b;

    return-object v0
.end method

.method static synthetic f()V
    .locals 2

    sget-object v0, Lcom/jodo/paysdk/d/g;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    sget-object v1, Lcom/jodo/paysdk/d/g;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/d/g;->j:Lcom/jodo/paysdk/d/j;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jodo/paysdk/d/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jodo/paysdk/d/g;->j:Lcom/jodo/paysdk/d/j;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method static synthetic g()Landroid/widget/RelativeLayout;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/g;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h()Landroid/view/ViewManager;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/g;->h:Landroid/view/ViewManager;

    return-object v0
.end method

.method static synthetic i()Lcom/jodo/paysdk/model/UnzipInfo;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/g;->k:Lcom/jodo/paysdk/model/UnzipInfo;

    return-object v0
.end method

.method static synthetic j()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/d/g;->l:Landroid/os/Handler;

    return-object v0
.end method
