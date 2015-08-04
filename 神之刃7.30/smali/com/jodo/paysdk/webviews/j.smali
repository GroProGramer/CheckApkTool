.class final Lcom/jodo/paysdk/webviews/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/i;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/i;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/j;->a:Lcom/jodo/paysdk/webviews/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/j;->a:Lcom/jodo/paysdk/webviews/i;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/i;->a:Lcom/jodo/paysdk/webviews/g;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/j;->a:Lcom/jodo/paysdk/webviews/i;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/i;->a:Lcom/jodo/paysdk/webviews/g;

    invoke-static {v1}, Lcom/jodo/paysdk/webviews/g;->b(Lcom/jodo/paysdk/webviews/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/config/JodoConfig;->getBtnReturnToPayUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/webviews/g;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
