.class final Lcom/jodo/paysdk/webviews/js/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;

    invoke-interface {v0}, Lcom/jodo/paysdk/webviews/a/b;->getWebPage()Lcom/jodo/paysdk/webviews/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/g;->b()Lcom/jodo/paysdk/webviews/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/e;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;

    invoke-interface {v0}, Lcom/jodo/paysdk/webviews/a/b;->getWebPage()Lcom/jodo/paysdk/webviews/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/g;->b()Lcom/jodo/paysdk/webviews/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/e;->canGoForward()Z

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const/4 v2, 0x0

    iput v2, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const-string v2, ""

    iput-object v2, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const-string v2, "goForward"

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    # invokes: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$000(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const/4 v2, 0x1

    iput v2, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const-string v2, "mWmWebview is null"

    iput-object v2, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iput v3, v2, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/r;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method
