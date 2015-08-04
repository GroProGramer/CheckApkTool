.class final Lcom/jodo/paysdk/webviews/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/g;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/g;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/k;->a:Lcom/jodo/paysdk/webviews/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/k;->a:Lcom/jodo/paysdk/webviews/g;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/k;->a:Lcom/jodo/paysdk/webviews/g;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/webviews/g;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
