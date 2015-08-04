.class final Lcom/jodo/paysdk/webviews/js/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jodo/paysdk/webviews/js/ExecuteScriptJsInterface;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/js/ExecuteScriptJsInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/x;->c:Lcom/jodo/paysdk/webviews/js/ExecuteScriptJsInterface;

    iput-object p2, p0, Lcom/jodo/paysdk/webviews/js/x;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/webviews/js/x;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    const-string v0, "javascript:returnJs(\'%s\',\'%s\')"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/x;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/x;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/x;->c:Lcom/jodo/paysdk/webviews/js/ExecuteScriptJsInterface;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/js/ExecuteScriptJsInterface;->mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;

    invoke-interface {v1, v0}, Lcom/jodo/paysdk/webviews/a/b;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
