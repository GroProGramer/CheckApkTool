.class final Lcom/jodo/paysdk/webviews/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/g;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/g;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/h;->a:Lcom/jodo/paysdk/webviews/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/h;->a:Lcom/jodo/paysdk/webviews/g;

    invoke-static {v0}, Lcom/jodo/paysdk/webviews/g;->a(Lcom/jodo/paysdk/webviews/g;)Lcom/jodo/paysdk/webviews/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/jodo/paysdk/webviews/a/b;->close()V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/h;->a:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/f/d;->b(Ljava/lang/String;)V

    return-void
.end method
