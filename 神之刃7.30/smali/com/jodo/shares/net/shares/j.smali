.class public final Lcom/jodo/shares/net/shares/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/util/r;->a()V

    invoke-static {p0}, Lcom/jodo/shares/net/shares/c/a;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/c/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/jodo/shares/net/shares/service/RA_Service;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
