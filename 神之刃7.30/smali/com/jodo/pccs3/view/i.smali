.class final Lcom/jodo/pccs3/view/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/pccs3/a/f;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/e;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/pccs3/message/a;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    iget-object v1, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v1}, Lcom/jodo/pccs3/view/e;->b(Lcom/jodo/pccs3/view/e;)Lcom/jodo/pccs3/view/v;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/jodo/pccs3/view/v;->a(Ljava/util/List;Z)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;J)I

    iget-object v0, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v1}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->d(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->c(Lcom/jodo/pccs3/view/e;)I

    move-result v0

    const/16 v2, 0x63

    if-le v0, v2, :cond_2

    const-string v0, "99+"

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->c(Lcom/jodo/pccs3/view/e;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->d(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->c(Lcom/jodo/pccs3/view/e;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/i;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v1}, Lcom/jodo/pccs3/view/e;->b(Lcom/jodo/pccs3/view/e;)Lcom/jodo/pccs3/view/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/v;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method
