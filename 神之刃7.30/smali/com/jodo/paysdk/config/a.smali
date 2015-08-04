.class public final Lcom/jodo/paysdk/config/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/jodo/paysdk/config/a;


# instance fields
.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jodo/paysdk/config/a;

    invoke-direct {v0}, Lcom/jodo/paysdk/config/a;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/config/a;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "JODO_PAYSDK_TMODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/config/a;->b:Ljava/lang/Boolean;

    const-string v1, "JODO_PAYSDK_CPID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/config/a;->c:Ljava/lang/String;

    const-string v1, "JODO_PAYSDK_GAMEID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/config/a;->d:Ljava/lang/String;

    const-string v1, "JODO_PAYSDK_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/config/a;->e:Ljava/lang/String;

    const-string v1, "JODO_PAYSDK_EXNET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/config/a;->f:Ljava/lang/Boolean;

    const-string v1, "JODO_PAYSDK_PKGNAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/config/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/f/d;->b()Lcom/jodo/paysdk/config/c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/jodo/paysdk/config/a;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/jodo/paysdk/config/c;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/config/a;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object v1, p0, Lcom/jodo/paysdk/config/a;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/jodo/paysdk/config/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/jodo/paysdk/config/a;->c:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/jodo/paysdk/config/a;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/jodo/paysdk/config/c;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/jodo/paysdk/config/a;->d:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/jodo/paysdk/config/a;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/jodo/paysdk/config/c;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/jodo/paysdk/config/a;->e:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/jodo/paysdk/config/a;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lcom/jodo/paysdk/config/c;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/config/a;->f:Ljava/lang/Boolean;

    :cond_4
    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/config/a;->b:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->c:Ljava/lang/String;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "initConstants error: JODO_PAYSDK_CPID not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initConstants error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->d:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "initConstants error: JODO_PAYSDK_GAMEID not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->e:Ljava/lang/String;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "initConstants error: JODO_PAYSDK_CHANNEL not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/config/a;->f:Ljava/lang/Boolean;

    :cond_9
    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->g:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "jodo"

    const-string v1, "pkgname is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/config/a;->g:Ljava/lang/String;

    return-object v0
.end method
