.class final Lcom/jodo/shares/net/jd/providers/downloads/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static synthetic a(Lcom/jodo/shares/net/jd/providers/downloads/e;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/e;->b:I

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/e;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/jodo/shares/net/jd/providers/downloads/e;)Z
    .locals 2

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/e;->a:Ljava/lang/String;

    iget v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/e;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
