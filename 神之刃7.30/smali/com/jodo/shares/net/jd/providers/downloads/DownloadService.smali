.class public Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;
.super Landroid/app/Service;


# instance fields
.field a:Lcom/jodo/shares/net/jd/providers/downloads/u;

.field b:Lcom/jodo/shares/net/jd/providers/downloads/al;

.field private c:Lcom/jodo/shares/net/jd/providers/downloads/s;

.field private d:Lcom/jodo/shares/net/jd/providers/downloads/m;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/jodo/shares/net/jd/providers/downloads/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/jodo/shares/net/jd/providers/downloads/t;

.field private h:Z

.field private i:Landroid/media/IMediaScannerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;
    .locals 0

    iput-object p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->i:Landroid/media/IMediaScannerService;

    return-object p1
.end method

.method static synthetic a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Lcom/jodo/shares/net/jd/providers/downloads/h;J)Lcom/jodo/shares/net/jd/providers/downloads/g;
    .locals 5

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    invoke-virtual {p1, p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Landroid/content/Context;Lcom/jodo/shares/net/jd/providers/downloads/al;)Lcom/jodo/shares/net/jd/providers/downloads/g;

    move-result-object v1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->e:Ljava/util/Map;

    iget-wide v2, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/jodo/shares/net/jd/providers/downloads/f;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadManager"

    const-string v2, "Service adding new entry"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ID      : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "URI     : "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NO_INTEG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HINT    : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FILENAME: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MIMETYPE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DESTINAT: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VISIBILI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CONTROL : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STATUS  : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FAILED_C: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RETRY_AF: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LAST_MOD: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->m:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PACKAGE : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CLASS   : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "COOKIES : "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "yes"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AGENT   : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "REFERER : "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->s:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "yes"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TOTAL   : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->t:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CURRENT : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->u:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ETAG    : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SCANNED : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->w:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETED : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->x:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MEDIAPROVIDER_URI : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/jodo/shares/net/jd/providers/downloads/g;->b(J)V

    return-object v1

    :cond_1
    const-string v0, "no"

    goto/16 :goto_0

    :cond_2
    const-string v0, "no"

    goto/16 :goto_1

    :cond_3
    const-string v0, "no"

    goto/16 :goto_2
.end method

.method private a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->f:Z

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a:Lcom/jodo/shares/net/jd/providers/downloads/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/u;

    invoke-direct {v0, p0}, Lcom/jodo/shares/net/jd/providers/downloads/u;-><init>(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a:Lcom/jodo/shares/net/jd/providers/downloads/u;

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a:Lcom/jodo/shares/net/jd/providers/downloads/u;

    invoke-interface {v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/al;->a(Ljava/lang/Thread;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a()V

    return-void
.end method

.method static synthetic a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;J)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/jd/providers/downloads/g;

    invoke-virtual {v0}, Lcom/jodo/shares/net/jd/providers/downloads/g;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v2, v2}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/g;ZZ)Z

    :cond_0
    iget v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x1ea

    iput v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    :cond_1
    iget v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->g:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    iget-wide v2, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    invoke-interface {v1, v2, v3}, Lcom/jodo/shares/net/jd/providers/downloads/al;->a(J)V

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->e:Ljava/util/Map;

    iget-wide v2, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Lcom/jodo/shares/net/jd/providers/downloads/h;Lcom/jodo/shares/net/jd/providers/downloads/g;J)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p2, Lcom/jodo/shares/net/jd/providers/downloads/g;->h:I

    iget v3, p2, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    invoke-virtual {p1, p2}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Lcom/jodo/shares/net/jd/providers/downloads/g;)V

    if-ne v0, v1, :cond_2

    iget v0, p2, Lcom/jodo/shares/net/jd/providers/downloads/g;->h:I

    if-eq v0, v1, :cond_2

    iget v0, p2, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    invoke-static {v0}, Lcom/jodo/shares/net/jd/providers/downloads/ab;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3}, Lcom/jodo/shares/net/jd/providers/downloads/ab;->c(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p2, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    invoke-static {v3}, Lcom/jodo/shares/net/jd/providers/downloads/ab;->c(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    iget-wide v1, p2, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    invoke-interface {v0, v1, v2}, Lcom/jodo/shares/net/jd/providers/downloads/al;->a(J)V

    :cond_1
    invoke-virtual {p2, p3, p4}, Lcom/jodo/shares/net/jd/providers/downloads/g;->b(J)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Lcom/jodo/shares/net/jd/providers/downloads/g;ZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/g;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->h:Z

    return p1
.end method

.method private a(Lcom/jodo/shares/net/jd/providers/downloads/g;ZZ)Z
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->i:Landroid/media/IMediaScannerService;

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadManager"

    const-string v1, "waiting for mMediaScannerService service: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x2710

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wait interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->i:Landroid/media/IMediaScannerService;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    :goto_1
    return v0

    :cond_1
    sget-boolean v0, Lcom/jodo/shares/net/jd/providers/downloads/f;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scanning file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/jodo/shares/net/jd/providers/downloads/g;->d()Landroid/net/Uri;

    move-result-object v3

    iget-object v8, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-wide v6, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    iget-object v9, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->i:Landroid/media/IMediaScannerService;

    iget-object v10, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    iget-object v11, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->f:Ljava/lang/String;

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/r;

    move-object v1, p0

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/jodo/shares/net/jd/providers/downloads/r;-><init>(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;ZLandroid/net/Uri;ZLandroid/content/ContentResolver;JLjava/lang/String;)V

    invoke-interface {v9, v10, v11, v0}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    :try_start_5
    monitor-exit p0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to scan file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->i:Landroid/media/IMediaScannerService;

    return-object v0
.end method

.method static synthetic c(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jodo/shares/net/jd/providers/downloads/ab;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "status >= \'200\'"

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "DownloadManager"

    const-string v1, "null cursor in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    :goto_1
    if-lez v0, :cond_1

    sget-object v3, Lcom/jodo/shares/net/jd/providers/downloads/ab;->b:Landroid/net/Uri;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v0, v6

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lost+found"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "recovery"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jodo/shares/net/jd/providers/downloads/aa;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v2, Lcom/jodo/shares/net/jd/providers/downloads/f;->a:Z

    if-eqz v2, :cond_5

    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleting spurious file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method static synthetic e(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Lcom/jodo/shares/net/jd/providers/downloads/m;
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->d:Lcom/jodo/shares/net/jd/providers/downloads/m;

    return-object v0
.end method

.method static synthetic i(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Lcom/jodo/shares/net/jd/providers/downloads/t;
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->g:Lcom/jodo/shares/net/jd/providers/downloads/t;

    return-object v0
.end method

.method static synthetic j(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->h:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/jodo/shares/net/jd/providers/downloads/f;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadManager"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    if-nez v0, :cond_1

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/ai;

    invoke-direct {v0, p0}, Lcom/jodo/shares/net/jd/providers/downloads/ai;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    :cond_1
    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/s;

    invoke-direct {v0, p0}, Lcom/jodo/shares/net/jd/providers/downloads/s;-><init>(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->c:Lcom/jodo/shares/net/jd/providers/downloads/s;

    invoke-virtual {p0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jodo/shares/net/jd/providers/downloads/ab;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->c:Lcom/jodo/shares/net/jd/providers/downloads/s;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->i:Landroid/media/IMediaScannerService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->h:Z

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/t;

    invoke-direct {v0, p0}, Lcom/jodo/shares/net/jd/providers/downloads/t;-><init>(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->g:Lcom/jodo/shares/net/jd/providers/downloads/t;

    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/m;

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    invoke-direct {v0, p0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/m;-><init>(Landroid/content/Context;Lcom/jodo/shares/net/jd/providers/downloads/al;)V

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->d:Lcom/jodo/shares/net/jd/providers/downloads/m;

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    invoke-interface {v0}, Lcom/jodo/shares/net/jd/providers/downloads/al;->f()V

    invoke-direct {p0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->c:Lcom/jodo/shares/net/jd/providers/downloads/s;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-boolean v0, Lcom/jodo/shares/net/jd/providers/downloads/f;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadManager"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    sget-boolean v1, Lcom/jodo/shares/net/jd/providers/downloads/f;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "DownloadManager"

    const-string v2, "Service onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a()V

    return v0
.end method
