.class public Lcom/jodo/paysdk/service/JPointAPR_Service;
.super Landroid/app/Service;


# static fields
.field public static a:Z

.field private static c:Lcom/jodo/paysdk/service/JPointAPR_Service;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/service/JPointAPR_Service;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-boolean v0, Lcom/jodo/paysdk/service/JPointAPR_Service;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/service/JPointAPR_Service;->c:Lcom/jodo/paysdk/service/JPointAPR_Service;

    iget-object v0, v0, Lcom/jodo/paysdk/service/JPointAPR_Service;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/jodo/paysdk/service/JPointAPR_Service;->c:Lcom/jodo/paysdk/service/JPointAPR_Service;

    invoke-virtual {v0}, Lcom/jodo/paysdk/service/JPointAPR_Service;->stopSelf()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/service/JPointAPR_Service;->a:Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jodo/paysdk/service/JPointAPR_Service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    const-string v0, "gamestatus_pre"

    const-string v1, "lastrunningtask"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/util/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/jodo/paysdk/service/JPointAPR_Service;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gamestatus_pre"

    const-string v4, "lastrunningtask"

    invoke-static {p0, v3, v4, v1}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final b()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/jodo/paysdk/service/JPointAPR_Service;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/jodo/paysdk/util/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/jodo/paysdk/service/JPointAPR_Service;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/jodo/paysdk/service/JPointAPR_Service;->c:Lcom/jodo/paysdk/service/JPointAPR_Service;

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ac;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Lcom/jodo/paysdk/service/JPointSM_Service;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jodo/paysdk/service/JPointAPR_Service;->c:Lcom/jodo/paysdk/service/JPointAPR_Service;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ac;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/service/JPointSM_Service;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/jodo/paysdk/service/JPointAPR_Service;->c:Lcom/jodo/paysdk/service/JPointAPR_Service;

    sput-boolean v1, Lcom/jodo/paysdk/service/JPointAPR_Service;->a:Z

    new-instance v0, Lcom/jodo/paysdk/service/a;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/service/a;-><init>(Lcom/jodo/paysdk/service/JPointAPR_Service;)V

    iput-object v0, p0, Lcom/jodo/paysdk/service/JPointAPR_Service;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/jodo/paysdk/service/JPointAPR_Service;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 v0, 0xf

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/b;->b(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/model/AppInfo;

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/jodo/paysdk/util/ac;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {p0, v0, v2}, Lcom/jodo/paysdk/service/JPointSM_Service;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
