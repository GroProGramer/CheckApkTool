.class final Lcom/jodo/paysdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/ad;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lcom/jodo/paysdk/InitSDKService;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/InitSDKService;Landroid/content/Context;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/f;->e:Lcom/jodo/paysdk/InitSDKService;

    iput-object p2, p0, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/jodo/paysdk/f;->b:Z

    iput-boolean p4, p0, Lcom/jodo/paysdk/f;->c:Z

    iput p5, p0, Lcom/jodo/paysdk/f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/jodo/paysdk/h;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/h;-><init>(Lcom/jodo/paysdk/f;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jodo/paysdk/config/JodoConfig;->refreshDynamicConfigs(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    sget-object v2, Lcom/jodo/paysdk/InitSDKService;->sInitCallback:Lcom/jodo/pccs3/a/d;

    invoke-virtual {v0, v1, v2}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V

    iget-boolean v0, p0, Lcom/jodo/paysdk/f;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/f;->e:Lcom/jodo/paysdk/InitSDKService;

    iget-object v1, p0, Lcom/jodo/paysdk/f;->a:Landroid/content/Context;

    # invokes: Lcom/jodo/paysdk/InitSDKService;->initUserLoginName(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/jodo/paysdk/InitSDKService;->access$000(Lcom/jodo/paysdk/InitSDKService;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/jodo/paysdk/g;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/g;-><init>(Lcom/jodo/paysdk/f;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method
