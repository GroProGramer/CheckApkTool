.class final Lcom/jodo/paysdk/webviews/js/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/j;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iput-object p2, p0, Lcom/jodo/paysdk/webviews/js/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/j;->b:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
