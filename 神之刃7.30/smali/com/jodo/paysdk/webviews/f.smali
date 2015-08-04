.class final Lcom/jodo/paysdk/webviews/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/e;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/f;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/f;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v1}, Lcom/jodo/paysdk/webviews/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/f;->a:Lcom/jodo/paysdk/webviews/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, v0, Lcom/jodo/paysdk/webviews/e;->c:Lcom/jodo/paysdk/webviews/js/Js_Interface;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/e;->c:Lcom/jodo/paysdk/webviews/js/Js_Interface;

    invoke-interface {v0}, Lcom/jodo/paysdk/webviews/js/Js_Interface;->callbackOverrideEnterAnim()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
