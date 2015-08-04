.class final Lcom/air/plugin/js/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/air/plugin/js/BaseWebView;


# direct methods
.method constructor <init>(Lcom/air/plugin/js/BaseWebView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/air/plugin/js/d;->b:Lcom/air/plugin/js/BaseWebView;

    iput-object p2, p0, Lcom/air/plugin/js/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/air/plugin/js/d;->b:Lcom/air/plugin/js/BaseWebView;

    iget-object v1, p0, Lcom/air/plugin/js/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/air/plugin/js/BaseWebView;->onInit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/air/plugin/js/d;->b:Lcom/air/plugin/js/BaseWebView;

    iget-object v1, p0, Lcom/air/plugin/js/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/air/plugin/js/BaseWebView;->initSettings(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/air/plugin/js/d;->b:Lcom/air/plugin/js/BaseWebView;

    iget-object v1, p0, Lcom/air/plugin/js/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/air/plugin/js/BaseWebView;->initClient(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/air/plugin/js/d;->b:Lcom/air/plugin/js/BaseWebView;

    iget-object v1, p0, Lcom/air/plugin/js/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/air/plugin/js/BaseWebView;->initJsInterface(Landroid/content/Context;)V

    return-void
.end method
