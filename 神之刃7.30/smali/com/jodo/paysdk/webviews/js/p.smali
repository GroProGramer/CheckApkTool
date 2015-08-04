.class final Lcom/jodo/paysdk/webviews/js/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/jodo/paysdk/webviews/js/o;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/js/o;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/p;->b:Lcom/jodo/paysdk/webviews/js/o;

    iput-object p2, p0, Lcom/jodo/paysdk/webviews/js/p;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/p;->b:Lcom/jodo/paysdk/webviews/js/o;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/js/o;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    # getter for: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mResultArray:Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$100(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/p;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/p;->b:Lcom/jodo/paysdk/webviews/js/o;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/js/o;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    # getter for: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mResultArray:Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$100(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    # getter for: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;
    invoke-static {}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$200()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "data"

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/p;->b:Lcom/jodo/paysdk/webviews/js/o;

    iget-object v2, v2, Lcom/jodo/paysdk/webviews/js/o;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    # getter for: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mResultArray:Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$100(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/p;->b:Lcom/jodo/paysdk/webviews/js/o;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/js/o;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    # setter for: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mResultArray:Lorg/json/JSONArray;
    invoke-static {v0, v3}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$102(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    # setter for: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;
    invoke-static {v3}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$202(Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/p;->b:Lcom/jodo/paysdk/webviews/js/o;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/js/o;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iput-object v1, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/p;->b:Lcom/jodo/paysdk/webviews/js/o;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/js/o;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const-string v2, "ping"

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/p;->b:Lcom/jodo/paysdk/webviews/js/o;

    iget-object v3, v3, Lcom/jodo/paysdk/webviews/js/o;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    # invokes: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$000(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
