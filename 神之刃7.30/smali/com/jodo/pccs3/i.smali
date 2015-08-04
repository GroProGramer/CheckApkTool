.class final Lcom/jodo/pccs3/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jodo/pccs3/a/e;

.field final synthetic c:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/i;->c:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/i;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/jodo/pccs3/i;->b:Lcom/jodo/pccs3/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/jodo/pccs3/i;->c:Lcom/jodo/pccs3/a;

    invoke-static {v0}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Client Timeout"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jodo/pccs3/i;->c:Lcom/jodo/pccs3/a;

    invoke-static {v0}, Lcom/jodo/pccs3/a;->b(Lcom/jodo/pccs3/a;)Z

    iget-object v0, p0, Lcom/jodo/pccs3/i;->c:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/i;->b:Lcom/jodo/pccs3/a/e;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/e;Ljava/lang/Exception;)V

    goto :goto_0
.end method
