.class public final Lcom/jodo/paysdk/f/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/f/a;->a:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v0, Lcom/jodo/paysdk/f/a;->a:Z

    if-nez v0, :cond_0

    sput-boolean v5, Lcom/jodo/paysdk/f/a;->a:Z

    invoke-static {p0}, Lcom/jodo/paysdk/f/a;->b(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "public_profile"

    aput-object v4, v2, v3

    const-string v3, "email"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "user_friends"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions([Ljava/lang/String;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, v5, p1}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/jodo/paysdk/f/a;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jodo/paysdk/f/a;->a:Z

    invoke-static {p0}, Lcom/jodo/paysdk/f/a;->b(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/jodo/paysdk/f/c;)V
    .locals 4

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/jodo/paysdk/f/b;

    invoke-direct {v1, p0, v0}, Lcom/jodo/paysdk/f/b;-><init>(Lcom/jodo/paysdk/f/c;Lcom/facebook/Session;)V

    invoke-static {v0, v1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fields"

    const-string v3, "id,name"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/Settings;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/Session;

    invoke-direct {v0, p0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    :cond_0
    return-void
.end method
