.class public final Lcom/jodo/shares/net/jd/providers/downloads/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DownloadManager"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/jodo/shares/net/jd/providers/downloads/f;->a:Z

    sput-boolean v0, Lcom/jodo/shares/net/jd/providers/downloads/f;->b:Z

    return-void
.end method
