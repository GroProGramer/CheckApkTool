.class final Lcom/jodo/paysdk/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/n;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/n;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/o;->a:Lcom/jodo/paysdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/o;->a:Lcom/jodo/paysdk/n;

    iget-object v0, v0, Lcom/jodo/paysdk/n;->a:Lcom/jodo/paysdk/JodoJPointActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoJPointActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/o;->a:Lcom/jodo/paysdk/n;

    iget-object v0, v0, Lcom/jodo/paysdk/n;->a:Lcom/jodo/paysdk/JodoJPointActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoJPointActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/g;->e()V

    :cond_0
    return-void
.end method
