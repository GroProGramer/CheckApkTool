.class final Lcom/jodo/paysdk/webviews/js/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;I)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/i;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iput p2, p0, Lcom/jodo/paysdk/webviews/js/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "cancelable"

    iget v4, p0, Lcom/jodo/paysdk/webviews/js/i;->a:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/i;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iget-object v3, v3, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;

    iget v4, p0, Lcom/jodo/paysdk/webviews/js/i;->a:I

    if-ne v4, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v3, v0}, Lcom/jodo/paysdk/webviews/a/b;->setCancelable(Z)V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/i;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const/4 v3, 0x0

    iput v3, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/i;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const-string v3, ""

    iput-object v3, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/i;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const-string v1, "setCancelable"

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/i;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    # invokes: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$000(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/i;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/i;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iput v1, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    goto :goto_0
.end method
