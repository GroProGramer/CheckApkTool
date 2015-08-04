.class final Lcom/jodo/paysdk/webviews/js/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;Ljava/lang/Integer;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/k;->d:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iput-object p2, p0, Lcom/jodo/paysdk/webviews/js/k;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/jodo/paysdk/webviews/js/k;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/jodo/paysdk/webviews/js/k;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/k;->a:Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/k;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/k;->a:Lorg/json/JSONObject;

    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/k;->d:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/k;->d:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/k;->a:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/k;->d:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const-string v1, ""

    iput-object v1, v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/k;->d:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    const-string v1, "alertDialog"

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/k;->d:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/k;->c:Lorg/json/JSONObject;

    # invokes: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$000(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
