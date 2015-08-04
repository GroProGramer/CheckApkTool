.class final Lcom/jodo/pccs3/view/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/ax;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/ay;->a:Lcom/jodo/pccs3/view/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/jodo/pccs3/view/ay;->a:Lcom/jodo/pccs3/view/ax;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ax;->c:Landroid/content/Context;

    instance-of v0, v0, Lcom/jodo/pccs3/view/ChatActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/pccs3/view/ay;->a:Lcom/jodo/pccs3/view/ax;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ax;->c:Landroid/content/Context;

    check-cast v0, Lcom/jodo/pccs3/view/ChatActivity;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/ChatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/jodo/pccs3/view/e;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/jodo/pccs3/view/e;

    iget v0, v0, Lcom/jodo/pccs3/view/e;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/jodo/pccs3/view/ay;->a:Lcom/jodo/pccs3/view/ax;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ax;->b:Lcom/jodo/pccs3/message/a;

    instance-of v0, v0, Lcom/jodo/pccs3/message/e;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    iget-object v0, p0, Lcom/jodo/pccs3/view/ay;->a:Lcom/jodo/pccs3/view/ax;

    iget-object v2, v0, Lcom/jodo/pccs3/view/ax;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/jodo/pccs3/view/ay;->a:Lcom/jodo/pccs3/view/ax;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ax;->b:Lcom/jodo/pccs3/message/a;

    check-cast v0, Lcom/jodo/pccs3/message/e;

    new-instance v3, Lcom/jodo/pccs3/view/az;

    invoke-direct {v3, p0}, Lcom/jodo/pccs3/view/az;-><init>(Lcom/jodo/pccs3/view/ay;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;Lcom/jodo/pccs3/a/g;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jodo/pccs3/view/ay;->a:Lcom/jodo/pccs3/view/ax;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ax;->b:Lcom/jodo/pccs3/message/a;

    instance-of v0, v0, Lcom/jodo/pccs3/message/b;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    iget-object v0, p0, Lcom/jodo/pccs3/view/ay;->a:Lcom/jodo/pccs3/view/ax;

    iget-object v2, v0, Lcom/jodo/pccs3/view/ax;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/jodo/pccs3/view/ay;->a:Lcom/jodo/pccs3/view/ax;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ax;->b:Lcom/jodo/pccs3/message/a;

    check-cast v0, Lcom/jodo/pccs3/message/b;

    new-instance v3, Lcom/jodo/pccs3/view/ba;

    invoke-direct {v3, p0}, Lcom/jodo/pccs3/view/ba;-><init>(Lcom/jodo/pccs3/view/ay;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;Lcom/jodo/pccs3/a/g;)V

    goto :goto_0
.end method
