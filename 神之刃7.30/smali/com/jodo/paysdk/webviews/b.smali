.class final Lcom/jodo/paysdk/webviews/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/a;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/b;->a:Lcom/jodo/paysdk/webviews/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/b;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/b;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/jodo/paysdk/webviews/a;->g:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/b;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/b;->a:Lcom/jodo/paysdk/webviews/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/webviews/a;->c()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/jodo/paysdk/webviews/a;->d:Landroid/view/ViewGroup;

    return-void
.end method
