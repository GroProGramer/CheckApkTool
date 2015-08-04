.class final Lcom/jodo/shares/net/jd/providers/downloads/s;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V
    .locals 1

    iput-object p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/s;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    sget-boolean v0, Lcom/jodo/shares/net/jd/providers/downloads/f;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadManager"

    const-string v1, "Service ContentObserver received notification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/s;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V

    return-void
.end method
