.class final Lcom/jodo/paysdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/f;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/f;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget-boolean v1, v1, Lcom/jodo/paysdk/f;->c:Z

    iget-object v2, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget v2, v2, Lcom/jodo/paysdk/f;->d:I

    if-lez v2, :cond_0

    const-string v2, "retry"

    iget-object v3, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget-object v3, v3, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget-object v2, v2, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    sget-object v3, Lcom/jodo/paysdk/InitSDKService;->sInitCallback:Lcom/jodo/pccs3/a/d;

    invoke-virtual {v1, v2, v3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V

    :goto_0
    iget-object v1, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget-object v1, v1, Lcom/jodo/paysdk/f;->e:Lcom/jodo/paysdk/InitSDKService;

    iget-object v2, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget-object v2, v2, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget-boolean v3, v3, Lcom/jodo/paysdk/f;->b:Z

    iget-object v4, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget v4, v4, Lcom/jodo/paysdk/f;->d:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/jodo/paysdk/InitSDKService;->fetchOnlineInfo(Landroid/content/Context;ZIZ)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget-boolean v1, v1, Lcom/jodo/paysdk/f;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget-object v1, v1, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    const/4 v2, 0x2

    const-string v3, "1"

    iget-object v4, p0, Lcom/jodo/paysdk/h;->a:Lcom/jodo/paysdk/f;

    iget-object v4, v4, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    const-string v5, "jodoplay_init_fail"

    invoke-static {v4, v5}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/jodo/paysdk/CustomerServiceActivity;->start(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    sput-boolean v0, Lcom/jodo/paysdk/d/m;->e:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
