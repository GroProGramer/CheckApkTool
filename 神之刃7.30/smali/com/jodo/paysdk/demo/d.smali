.class final Lcom/jodo/paysdk/demo/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/jodo/paysdk/demo/SelectorActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/demo/SelectorActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/demo/d;->b:Lcom/jodo/paysdk/demo/SelectorActivity;

    iput-object p2, p0, Lcom/jodo/paysdk/demo/d;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/demo/d;->a:Landroid/content/Intent;

    const-string v1, "landscape"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/jodo/paysdk/demo/d;->b:Lcom/jodo/paysdk/demo/SelectorActivity;

    iget-object v1, p0, Lcom/jodo/paysdk/demo/d;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/demo/SelectorActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
