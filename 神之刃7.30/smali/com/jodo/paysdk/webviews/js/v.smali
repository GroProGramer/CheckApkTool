.class final Lcom/jodo/paysdk/webviews/js/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/v;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iput-object p2, p0, Lcom/jodo/paysdk/webviews/js/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "uri_Intent"

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/v;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/v;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iget-object v2, v2, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/v;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->callbackOverrideEnterAnim()V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/v;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const/4 v2, 0x0

    iput v2, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/v;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const-string v2, "startUri"

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/v;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    # invokes: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$000(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/v;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const/4 v3, 0x1

    iput v3, v2, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/v;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method
