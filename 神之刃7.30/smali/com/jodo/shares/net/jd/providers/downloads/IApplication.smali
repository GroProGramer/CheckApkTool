.class public Lcom/jodo/shares/net/jd/providers/downloads/IApplication;
.super Landroid/app/Application;


# static fields
.field private static a:Lcom/jodo/shares/net/jd/providers/downloads/IApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/shares/net/jd/providers/downloads/IApplication;->a:Lcom/jodo/shares/net/jd/providers/downloads/IApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/jodo/shares/net/jd/providers/downloads/IApplication;->a:Lcom/jodo/shares/net/jd/providers/downloads/IApplication;

    invoke-virtual {v0}, Lcom/jodo/shares/net/jd/providers/downloads/IApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/jodo/shares/net/jd/providers/downloads/IApplication;->a:Lcom/jodo/shares/net/jd/providers/downloads/IApplication;

    return-void
.end method
