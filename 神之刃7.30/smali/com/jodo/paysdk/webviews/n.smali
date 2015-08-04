.class public Lcom/jodo/paysdk/webviews/n;
.super Lcom/jodo/paysdk/webviews/m;


# direct methods
.method public constructor <init>(Lcom/jodo/paysdk/webviews/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/webviews/m;-><init>(Lcom/jodo/paysdk/webviews/a/a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p5

    :try_start_0
    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    invoke-super {p0, p1, p2}, Lcom/jodo/paysdk/webviews/m;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/n;->a:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v0}, Lcom/jodo/paysdk/webviews/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/n;->a:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v1}, Lcom/jodo/paysdk/webviews/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/n;->a:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v1}, Lcom/jodo/paysdk/webviews/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jodoplay_prompt"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/webviews/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/n;->a:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v1}, Lcom/jodo/paysdk/webviews/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jodoplay_want_to_get_you_location"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/webviews/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/n;->a:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v1}, Lcom/jodo/paysdk/webviews/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jodoplay_allow_present_time"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/webviews/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/webviews/q;

    invoke-direct {v2, p0, p2, p1}, Lcom/jodo/paysdk/webviews/q;-><init>(Lcom/jodo/paysdk/webviews/n;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/n;->a:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v1}, Lcom/jodo/paysdk/webviews/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jodoplay_always_allow"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/webviews/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/webviews/p;

    invoke-direct {v2, p0, p2, p1}, Lcom/jodo/paysdk/webviews/p;-><init>(Lcom/jodo/paysdk/webviews/n;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/n;->a:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v1}, Lcom/jodo/paysdk/webviews/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jodoplay_reject"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/webviews/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/webviews/o;

    invoke-direct {v2, p0, p2, p1}, Lcom/jodo/paysdk/webviews/o;-><init>(Lcom/jodo/paysdk/webviews/n;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    :try_start_2
    invoke-super {p0, p1, p2}, Lcom/jodo/paysdk/webviews/m;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
