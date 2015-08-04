.class public final Lcom/jodo/paysdk/webviews/e;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/jodo/paysdk/webviews/a/a;
.implements Lcom/jodo/paysdk/webviews/a/c;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:Lcom/jodo/paysdk/webviews/js/Js_Interface;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/jodo/paysdk/webviews/a/a;

.field private k:Lcom/jodo/paysdk/webviews/a/c;

.field private l:Landroid/webkit/WebChromeClient;

.field private m:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/a/c;Lcom/jodo/paysdk/webviews/a/a;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/jodo/paysdk/webviews/e;->d:Z

    iput-boolean v1, p0, Lcom/jodo/paysdk/webviews/e;->e:Z

    iput-object v2, p0, Lcom/jodo/paysdk/webviews/e;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/jodo/paysdk/webviews/e;->i:Ljava/lang/String;

    :try_start_0
    iput-object p1, p0, Lcom/jodo/paysdk/webviews/e;->b:Landroid/content/Context;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jodo/paysdk/webviews/e;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jodo/paysdk/webviews/e;->i:Ljava/lang/String;

    iput-object p6, p0, Lcom/jodo/paysdk/webviews/e;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/jodo/paysdk/webviews/e;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/webviews/e;->j:Lcom/jodo/paysdk/webviews/a/a;

    iput-object p2, p0, Lcom/jodo/paysdk/webviews/e;->k:Lcom/jodo/paysdk/webviews/a/c;

    iput-object p4, p0, Lcom/jodo/paysdk/webviews/e;->c:Lcom/jodo/paysdk/webviews/js/Js_Interface;

    const/high16 v2, 0x2000000

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/webviews/e;->setScrollBarStyle(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/jodo/paysdk/webviews/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    and-int/lit8 v3, p5, 0x2

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/jodo/paysdk/webviews/s;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    new-instance v0, Lcom/jodo/paysdk/webviews/f;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/f;-><init>(Lcom/jodo/paysdk/webviews/e;)V

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/webviews/e;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/jodo/paysdk/webviews/s;->a(Lcom/jodo/paysdk/webviews/a/c;)Landroid/webkit/WebViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/e;->m:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->m:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/webviews/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    :cond_0
    :goto_3
    :try_start_4
    invoke-static {p0}, Lcom/jodo/paysdk/webviews/s;->a(Lcom/jodo/paysdk/webviews/a/a;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/e;->l:Landroid/webkit/WebChromeClient;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->l:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->l:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/webviews/e;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->c:Lcom/jodo/paysdk/webviews/js/Js_Interface;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :try_start_6
    const-string v1, "sharesdk"

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/webviews/e;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_5
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/e;->d:Z

    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/e;->e:Z

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/jodo/paysdk/webviews/s;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->m:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->m:Landroid/webkit/WebViewClient;

    instance-of v0, v0, Lcom/jodo/paysdk/webviews/t;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->m:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/jodo/paysdk/webviews/t;

    invoke-virtual {v0, p1}, Lcom/jodo/paysdk/webviews/t;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jodo/paysdk/webviews/e;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->m:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->m:Landroid/webkit/WebViewClient;

    instance-of v0, v0, Lcom/jodo/paysdk/webviews/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->m:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/jodo/paysdk/webviews/t;

    invoke-virtual {v0, p1}, Lcom/jodo/paysdk/webviews/t;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final onWebPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/jodo/paysdk/webviews/e;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jodo/paysdk/webviews/b/a;->a()Lcom/jodo/paysdk/webviews/b/a;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/jodo/paysdk/webviews/b/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/jodo/paysdk/webviews/e;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/webviews/b/e;->a()Lcom/jodo/paysdk/webviews/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p2}, Lcom/jodo/paysdk/webviews/b/e;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/e;->g:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/jodo/paysdk/webviews/b/b;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->k:Lcom/jodo/paysdk/webviews/a/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->k:Lcom/jodo/paysdk/webviews/a/c;

    invoke-interface {v0, p1, p2}, Lcom/jodo/paysdk/webviews/a/c;->onWebPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public final onWebPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p2, p0, Lcom/jodo/paysdk/webviews/e;->a:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->k:Lcom/jodo/paysdk/webviews/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->k:Lcom/jodo/paysdk/webviews/a/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/jodo/paysdk/webviews/a/c;->onWebPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/e;->i:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/jodo/paysdk/webviews/b/b;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public final onWebProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->j:Lcom/jodo/paysdk/webviews/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->j:Lcom/jodo/paysdk/webviews/a/a;

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

.method public final onWebReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->k:Lcom/jodo/paysdk/webviews/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->k:Lcom/jodo/paysdk/webviews/a/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/jodo/paysdk/webviews/a/c;->onWebReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
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

.method public final onWebTitleChange(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->j:Lcom/jodo/paysdk/webviews/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/e;->j:Lcom/jodo/paysdk/webviews/a/a;

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
