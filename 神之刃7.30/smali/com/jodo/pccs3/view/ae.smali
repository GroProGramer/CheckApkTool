.class public abstract Lcom/jodo/pccs3/view/ae;
.super Lcom/jodo/pccs3/view/c;


# instance fields
.field private e:Lcom/jodo/pccs3/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/jodo/pccs3/view/ae;->a:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/ae;->c:Landroid/content/Context;

    const-string v1, "layout"

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/ae;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/view/ae;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/ae;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/pccs3/view/ae;->c:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_service_content"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jodo/pccs3/view/ae;->e:Lcom/jodo/pccs3/view/c;

    invoke-virtual {v1, p1}, Lcom/jodo/pccs3/view/c;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/jodo/pccs3/view/af;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/af;-><init>(Lcom/jodo/pccs3/view/ae;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ae;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(Lcom/jodo/pccs3/view/c;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/ae;->e:Lcom/jodo/pccs3/view/c;

    return-void
.end method

.method protected a(Lcom/jodo/pccs3/view/d;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-super {p0}, Lcom/jodo/pccs3/view/c;->b()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ae;->e:Lcom/jodo/pccs3/view/c;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->b()V

    return-void
.end method

.method protected d()Lcom/jodo/pccs3/view/d;
    .locals 5

    new-instance v1, Lcom/jodo/pccs3/view/ag;

    invoke-direct {v1}, Lcom/jodo/pccs3/view/ag;-><init>()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ae;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ae;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_content"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/jodo/pccs3/view/ag;->a:Landroid/widget/RelativeLayout;

    return-object v1
.end method

.method final e()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/ae;->d:Lcom/jodo/pccs3/view/d;

    check-cast v0, Lcom/jodo/pccs3/view/ag;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ag;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-static {}, Lcom/jodo/pccs3/view/ad;->a()Lcom/jodo/pccs3/view/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/ae;->e:Lcom/jodo/pccs3/view/c;

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/view/ad;->a(Lcom/jodo/pccs3/view/c;)V

    return-void
.end method

.method final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/ae;->e:Lcom/jodo/pccs3/view/c;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
