.class public Lcom/jodo/paysdk/webviews/m;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field a:Lcom/jodo/paysdk/webviews/a/a;


# direct methods
.method public constructor <init>(Lcom/jodo/paysdk/webviews/a/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/m;->a:Lcom/jodo/paysdk/webviews/a/a;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/m;->a:Lcom/jodo/paysdk/webviews/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/m;->a:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v0, p1, p2}, Lcom/jodo/paysdk/webviews/a/a;->onWebProgressChanged(Landroid/webkit/WebView;I)V
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

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/m;->a:Lcom/jodo/paysdk/webviews/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/m;->a:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v0, p1, p2}, Lcom/jodo/paysdk/webviews/a/a;->onWebTitleChange(Landroid/webkit/WebView;Ljava/lang/String;)V
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
