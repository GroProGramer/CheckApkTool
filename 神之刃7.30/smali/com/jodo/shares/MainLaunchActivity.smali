.class public Lcom/jodo/shares/MainLaunchActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1, v0}, Lcom/jodo/shares/MainLaunchActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jodo/shares/MainLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jodo/shares/MainLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jodo/paysdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/u;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jodo/shares/LauncherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jodo/shares/MainLaunchActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/jodo/shares/MainLaunchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ak;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jodo/paysdk/model/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/shares/MainLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jodo/shares/MainLaunchActivity;

    const-class v3, Lcom/jodo/jpoint/JPoint_Splash;

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/c;->b()I

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/jodo/shares/net/shares/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jodo/shares/MainLaunchActivity;->finish()V

    return-void
.end method
