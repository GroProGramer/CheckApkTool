.class public final Lcom/jodo/paysdk/webviews/b/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p0, p2}, Lcom/jodo/paysdk/http/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/http/a/f;->b(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/http/a/f;->c(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/f;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/webviews/b/c;

    invoke-direct {v2, v1, p1}, Lcom/jodo/paysdk/webviews/b/c;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/http/a/f;->a(Lcom/jodo/paysdk/http/a/j;)Ljava/lang/String;

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/jodo/paysdk/webviews/b/d;

    invoke-direct {v0, p1, v1}, Lcom/jodo/paysdk/webviews/b/d;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
