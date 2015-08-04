.class final Lcom/jodo/pccs3/view/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/ak;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/al;->a:Lcom/jodo/pccs3/view/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jodo/pccs3/view/al;->a:Lcom/jodo/pccs3/view/ak;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ak;->c:Landroid/content/Context;

    const-class v2, Lcom/jodo/pccs3/view/ImageShowActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "url"

    iget-object v0, p0, Lcom/jodo/pccs3/view/al;->a:Lcom/jodo/pccs3/view/ak;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ak;->b:Lcom/jodo/pccs3/message/a;

    check-cast v0, Lcom/jodo/pccs3/message/b;

    invoke-virtual {v0}, Lcom/jodo/pccs3/message/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/pccs3/view/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/jodo/pccs3/view/al;->a:Lcom/jodo/pccs3/view/ak;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ak;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
