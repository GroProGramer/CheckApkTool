.class final Lcom/jodo/shares/net/jd/providers/downloads/r;
.super Landroid/media/IMediaScannerListener$Stub;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Z

.field final synthetic d:Landroid/content/ContentResolver;

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;


# direct methods
.method constructor <init>(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;ZLandroid/net/Uri;ZLandroid/content/ContentResolver;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->g:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    iput-boolean p2, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->a:Z

    iput-object p3, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->b:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->c:Z

    iput-object p5, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->d:Landroid/content/ContentResolver;

    iput-wide p6, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->e:J

    iput-object p8, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->f:Ljava/lang/String;

    invoke-direct {p0}, Landroid/media/IMediaScannerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "scanned"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    const-string v1, "mediaprovider_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->g:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->c:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->g:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v0}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->d:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/r;->e:J

    invoke-static {v0, v1, v2, p1}, Lcom/jodo/shares/net/jd/providers/downloads/af;->a(Landroid/content/ContentResolver;JLjava/lang/String;)V

    goto :goto_0
.end method
