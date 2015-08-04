.class public final Lcom/jodo/shares/net/jd/providers/downloads/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    sget-boolean v0, Lcom/jodo/shares/net/jd/providers/downloads/f;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadManager"

    const-string v1, "Connected to Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Z)Z

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/jodo/shares/net/jd/providers/downloads/f;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadManager"

    const-string v1, "Disconnected from Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Z)Z

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Z)Z

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
