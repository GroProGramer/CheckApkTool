.class final Lcom/jodo/paysdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/f;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/f;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/g;->a:Lcom/jodo/paysdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jodo/paysdk/g;->a:Lcom/jodo/paysdk/f;

    iget-boolean v0, v0, Lcom/jodo/paysdk/f;->b:Z

    if-nez v0, :cond_1

    const-string v0, "http://gstat.jodoplay.com/gamestat/postinit"

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/g;->a:Lcom/jodo/paysdk/f;

    iget-object v1, v1, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jodo/paysdk/ExecuteScriptService;->start(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/g;->a:Lcom/jodo/paysdk/f;

    iget-object v0, v0, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/f/d;->b(Landroid/content/Context;)V

    :cond_1
    sput-boolean v2, Lcom/jodo/paysdk/d/w;->isSDKInitFinished:Z

    iget-object v0, p0, Lcom/jodo/paysdk/g;->a:Lcom/jodo/paysdk/f;

    iget-boolean v0, v0, Lcom/jodo/paysdk/f;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jodo/paysdk/g;->a:Lcom/jodo/paysdk/f;

    iget-object v0, v0, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/buoy/BuoyService;->a(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/jodo/paysdk/g;->a:Lcom/jodo/paysdk/f;

    iget-object v0, v0, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/jodo/paysdk/f/d;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/d/m;->e:Z

    return-void
.end method
