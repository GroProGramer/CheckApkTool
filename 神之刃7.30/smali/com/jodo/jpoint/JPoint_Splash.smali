.class public Lcom/jodo/jpoint/JPoint_Splash;
.super Landroid/app/Activity;


# static fields
.field public static a:Lcom/jodo/jpoint/JPoint_Splash;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/jpoint/JPoint_Splash;->a:Lcom/jodo/jpoint/JPoint_Splash;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/jodo/jpoint/a;

    invoke-direct {v0, p0}, Lcom/jodo/jpoint/a;-><init>(Lcom/jodo/jpoint/JPoint_Splash;)V

    iput-object v0, p0, Lcom/jodo/jpoint/JPoint_Splash;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/jodo/jpoint/JPoint_Splash;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/jpoint/JPoint_Splash;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/jodo/jpoint/JPoint_Splash;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/jodo/jpoint/JPoint_Splash;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "layout"

    const-string v1, "jodoplay_jpoint_splash"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/jpoint/JPoint_Splash;->setContentView(I)V

    sput-object p0, Lcom/jodo/jpoint/JPoint_Splash;->a:Lcom/jodo/jpoint/JPoint_Splash;

    invoke-virtual {p0}, Lcom/jodo/jpoint/JPoint_Splash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "origin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/jpoint/JPoint_Splash;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/jpoint/JPoint_Splash;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "JPoint_Splash"

    iput-object v0, p0, Lcom/jodo/jpoint/JPoint_Splash;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/jodo/jpoint/JPoint_Splash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isSingleGame"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jodo/jpoint/JPoint_Splash;->c:Z

    invoke-virtual {p0}, Lcom/jodo/jpoint/JPoint_Splash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "NULL"

    :cond_1
    const-string v1, "push"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/jodo/jpoint/JPoint_Splash;->c:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/jodo/jpoint/JPoint_Splash;->a:Lcom/jodo/jpoint/JPoint_Splash;

    new-instance v1, Lcom/jodo/jpoint/b;

    invoke-direct {v1, p0}, Lcom/jodo/jpoint/b;-><init>(Lcom/jodo/jpoint/JPoint_Splash;)V

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/jodo/jpoint/JPoint_Splash;->a:Lcom/jodo/jpoint/JPoint_Splash;

    new-instance v1, Lcom/jodo/jpoint/e;

    invoke-direct {v1, p0}, Lcom/jodo/jpoint/e;-><init>(Lcom/jodo/jpoint/JPoint_Splash;)V

    invoke-static {v0, v1}, Lcom/jodo/paysdk/al;->a(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;)V

    goto :goto_0
.end method
