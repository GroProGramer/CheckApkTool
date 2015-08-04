.class final Lcom/air/plugin/js/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/air/plugin/js/BaseJSInterface;


# direct methods
.method constructor <init>(Lcom/air/plugin/js/BaseJSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/air/plugin/js/a;->c:Lcom/air/plugin/js/BaseJSInterface;

    iput-object p2, p0, Lcom/air/plugin/js/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/air/plugin/js/a;->b:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/air/plugin/js/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/air/plugin/js/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/air/plugin/js/a;->c:Lcom/air/plugin/js/BaseJSInterface;

    invoke-virtual {v1}, Lcom/air/plugin/js/BaseJSInterface;->getWebView()Lcom/air/plugin/js/IWebView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/air/plugin/js/IWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/air/plugin/a/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
