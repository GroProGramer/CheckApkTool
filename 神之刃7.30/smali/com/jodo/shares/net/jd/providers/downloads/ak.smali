.class public final Lcom/jodo/shares/net/jd/providers/downloads/ak;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/jodo/shares/net/jd/providers/downloads/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sslcache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/ad;->a(Ljava/io/File;)Lcom/jodo/shares/net/jd/providers/downloads/aj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/ak;->a:Lcom/jodo/shares/net/jd/providers/downloads/aj;

    return-void

    :catch_0
    move-exception v2

    const-string v3, "SSLSessionCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to create SSL session cache in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
