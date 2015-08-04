.class public final Lcom/jodo/paysdk/webviews/r;
.super Lcom/jodo/paysdk/webviews/n;


# direct methods
.method public constructor <init>(Lcom/jodo/paysdk/webviews/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/webviews/n;-><init>(Lcom/jodo/paysdk/webviews/a/a;)V

    return-void
.end method


# virtual methods
.method public final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    :try_start_0
    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
