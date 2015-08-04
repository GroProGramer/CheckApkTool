.class public Lcom/jodo/paysdk/webviews/js/ExecuteScriptJsInterface;
.super Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/a/b;)V

    return-void
.end method


# virtual methods
.method public helloWorld()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "++++++++++++++hello world"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V

    return-void
.end method

.method public returnJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/jodo/paysdk/webviews/js/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/jodo/paysdk/webviews/js/x;-><init>(Lcom/jodo/paysdk/webviews/js/ExecuteScriptJsInterface;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;J)V

    return-void
.end method
