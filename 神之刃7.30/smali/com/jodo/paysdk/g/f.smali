.class final Lcom/jodo/paysdk/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/g/l;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/g/e;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 5

    const/4 v4, -0x4

    sget-object v0, Lcom/jodo/paysdk/g/k;->b:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v0}, Lcom/jodo/paysdk/g/e;->b(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/g/h;

    move-result-object v0

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v2}, Lcom/jodo/paysdk/g/e;->a(Lcom/jodo/paysdk/g/e;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "jodoplay_register_failed_network_error"

    invoke-static {v2, v3}, Lcom/jodo/paysdk/g/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jodo/paysdk/g/h;->onRegisterFailed(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/jodo/paysdk/g/k;->c:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v0}, Lcom/jodo/paysdk/g/e;->b(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/g/h;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->a(Lcom/jodo/paysdk/g/e;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "jodoplay_register_failed_unknow_error"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/g/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/jodo/paysdk/g/h;->onRegisterFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jodo/paysdk/g/k;->a:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/jodo/paysdk/g/i;->a(Ljava/lang/String;)Lcom/jodo/paysdk/g/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/i;->a()Lcom/jodo/paysdk/g/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jodo/paysdk/g/j;->a()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/i;->b()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "loginname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setLoginName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/i;->b()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "gameuid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setGameUid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/i;->b()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sessiontoken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setSessionToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jodo/paysdk/account/JodoAccount;->setLastLoginTime_ms(J)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cpexinfo"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v0}, Lcom/jodo/paysdk/g/e;->c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/account/JodoAccount;->setExtraParams(Lorg/json/JSONObject;)V

    :goto_1
    iget-object v0, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v0}, Lcom/jodo/paysdk/g/e;->a(Lcom/jodo/paysdk/g/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->a(Lcom/jodo/paysdk/g/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v2}, Lcom/jodo/paysdk/g/e;->c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jodo/paysdk/account/JodoAccountManager;->saveAccount(Landroid/content/Context;Lcom/jodo/paysdk/account/JodoAccount;)Z

    iget-object v0, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v0}, Lcom/jodo/paysdk/g/e;->a(Lcom/jodo/paysdk/g/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/account/JodoAccountManager;->setCurrentAccount(Lcom/jodo/paysdk/account/JodoAccount;)V

    iget-object v0, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v0}, Lcom/jodo/paysdk/g/e;->b(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/g/h;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jodo/paysdk/g/h;->onRegisterSuccess(Lcom/jodo/paysdk/account/JodoAccount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v0}, Lcom/jodo/paysdk/g/e;->b(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/g/h;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->a(Lcom/jodo/paysdk/g/e;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "jodoplay_register_failed_unknow_error"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/g/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/jodo/paysdk/g/h;->onRegisterFailed(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v1, "utf8"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setExtraParams(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/jodo/paysdk/g/f;->a:Lcom/jodo/paysdk/g/e;

    invoke-static {v1}, Lcom/jodo/paysdk/g/e;->b(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/g/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/i;->a()Lcom/jodo/paysdk/g/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jodo/paysdk/g/j;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/i;->a()Lcom/jodo/paysdk/g/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/jodo/paysdk/g/h;->onRegisterFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
