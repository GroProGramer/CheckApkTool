.class Lcom/mqgame/lib/SWebCenter;
.super Landroid/app/Dialog;
.source "SNativeActivity.java"


# instance fields
.field m_CurURL:Ljava/lang/String;

.field m_Web:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "av"    # Landroid/app/Activity;

    .prologue
    .line 99
    const v0, 0x7f050071

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/mqgame/lib/SWebCenter;->m_CurURL:Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p1}, Lcom/mqgame/lib/SWebCenter;->setOwnerActivity(Landroid/app/Activity;)V

    .line 101
    return-void
.end method


# virtual methods
.method public navigate(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string v0, "SOGWeb"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput-object p1, p0, Lcom/mqgame/lib/SWebCenter;->m_CurURL:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_CurURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mqgame/lib/SWebCenter;->requestWindowFeature(I)Z

    .line 115
    invoke-virtual {p0}, Lcom/mqgame/lib/SWebCenter;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 117
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/mqgame/lib/SWebCenter;->setContentView(I)V

    .line 118
    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/mqgame/lib/SWebCenter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    .line 119
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 121
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 122
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 123
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 124
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 125
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 126
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    new-instance v2, Lcom/mqgame/lib/SWebCenter$1;

    invoke-direct {v2, p0}, Lcom/mqgame/lib/SWebCenter$1;-><init>(Lcom/mqgame/lib/SWebCenter;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 133
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    new-instance v2, Lcom/mqgame/lib/SWebCenter$2;

    invoke-direct {v2, p0}, Lcom/mqgame/lib/SWebCenter$2;-><init>(Lcom/mqgame/lib/SWebCenter;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    new-instance v2, Lcom/mqgame/lib/SWebCenter$3;

    invoke-direct {v2, p0}, Lcom/mqgame/lib/SWebCenter$3;-><init>(Lcom/mqgame/lib/SWebCenter;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 220
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    new-instance v2, Lcom/mqgame/lib/SWebCenter$4;

    invoke-direct {v2, p0}, Lcom/mqgame/lib/SWebCenter$4;-><init>(Lcom/mqgame/lib/SWebCenter;)V

    const-string v3, "SOG"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_CurURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_CurURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mqgame/lib/SWebCenter;->m_CurURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 103
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mqgame/lib/SWebCenter;->m_Web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
