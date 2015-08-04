.class public final Lcom/jodo/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "jodoplaysdk: onStop call"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "jodoplaysdk: onBackPressed call"

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
