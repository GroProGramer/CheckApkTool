.class public abstract Lcom/jodo/pccs3/view/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Lcom/jodo/pccs3/message/a;

.field protected c:Landroid/content/Context;

.field protected d:Lcom/jodo/pccs3/view/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/c;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/jodo/pccs3/view/c;->a:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/c;->c:Landroid/content/Context;

    const-string v1, "layout"

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/view/c;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/c;->a:Landroid/view/View;

    return-object v0
.end method

.method final a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/c;->c:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/jodo/pccs3/message/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/c;->b:Lcom/jodo/pccs3/message/a;

    return-void
.end method

.method protected abstract a(Lcom/jodo/pccs3/view/d;)V
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/c;->d()Lcom/jodo/pccs3/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/view/c;->d:Lcom/jodo/pccs3/view/d;

    iget-object v0, p0, Lcom/jodo/pccs3/view/c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/pccs3/view/c;->d:Lcom/jodo/pccs3/view/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/c;->d:Lcom/jodo/pccs3/view/d;

    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/view/c;->a(Lcom/jodo/pccs3/view/d;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/d;

    iput-object v0, p0, Lcom/jodo/pccs3/view/c;->d:Lcom/jodo/pccs3/view/d;

    goto :goto_0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Lcom/jodo/pccs3/view/d;
.end method

.method abstract e()V
.end method

.method abstract f()Ljava/lang/String;
.end method
