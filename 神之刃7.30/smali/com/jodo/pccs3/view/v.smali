.class final Lcom/jodo/pccs3/view/v;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/e;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jodo/pccs3/message/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private final d:Landroid/widget/AbsListView$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/jodo/pccs3/view/e;)V
    .locals 3

    iput-object p1, p0, Lcom/jodo/pccs3/view/v;->a:Lcom/jodo/pccs3/view/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/v;->d:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p1}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/jodo/pccs3/view/v;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/message/a;

    invoke-interface {v0}, Lcom/jodo/pccs3/message/a;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/pccs3/message/a;",
            ">;Z)J"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jodo/pccs3/view/v;->a(Ljava/util/List;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/util/List;ZZ)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/pccs3/message/a;",
            ">;ZZ)J"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const-wide/16 v10, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    if-eqz p3, :cond_2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/message/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v1

    int-to-long v4, v4

    invoke-interface {v0, v4, v5}, Lcom/jodo/pccs3/message/a;->a(J)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr v2, v10

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/message/a;

    iget-object v5, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-long/2addr v2, v10

    goto :goto_2

    :cond_3
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/message/a;

    invoke-interface {v0}, Lcom/jodo/pccs3/message/a;->c()J

    move-result-wide v4

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v1, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/message/a;

    invoke-interface {v0}, Lcom/jodo/pccs3/message/a;->c()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-long v0, v1, v10

    :goto_4
    move-wide v1, v0

    goto :goto_3

    :cond_4
    move-wide v2, v1

    :cond_5
    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->a()V

    goto/16 :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/message/a;

    iget-object v5, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-long/2addr v2, v10

    goto :goto_5

    :cond_7
    move-wide v0, v1

    goto :goto_4
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/jodo/pccs3/view/v;->a:Lcom/jodo/pccs3/view/e;

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->m(Lcom/jodo/pccs3/view/e;)I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->m(Lcom/jodo/pccs3/view/e;)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;I)I

    if-nez p2, :cond_2

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->d:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/message/a;

    if-nez p1, :cond_4

    move v2, v3

    :goto_2
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jodo/pccs3/view/v;->a:Lcom/jodo/pccs3/view/e;

    invoke-interface {v0}, Lcom/jodo/pccs3/message/a;->b()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/jodo/pccs3/view/e;->b(Lcom/jodo/pccs3/view/e;J)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/jodo/pccs3/view/ad;->a()Lcom/jodo/pccs3/view/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/pccs3/view/v;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/jodo/pccs3/view/ad;->a(Lcom/jodo/pccs3/message/a;Landroid/content/Context;)Lcom/jodo/pccs3/view/c;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/pccs3/view/v;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2}, Lcom/jodo/pccs3/view/c;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->b()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->d:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/jodo/pccs3/view/ad;->a()Lcom/jodo/pccs3/view/ad;

    move-result-object v0

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/view/ad;->a(Landroid/view/View;)V

    :goto_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/v;->d:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, p2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/jodo/pccs3/view/ad;->a()Lcom/jodo/pccs3/view/ad;

    move-result-object v0

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/view/ad;->a(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Lcom/jodo/pccs3/message/a;->b()J

    move-result-wide v5

    iget-object v2, p0, Lcom/jodo/pccs3/view/v;->b:Ljava/util/ArrayList;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jodo/pccs3/message/a;

    invoke-interface {v2}, Lcom/jodo/pccs3/message/a;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x493e0

    cmp-long v2, v5, v7

    if-lez v2, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_2
.end method
