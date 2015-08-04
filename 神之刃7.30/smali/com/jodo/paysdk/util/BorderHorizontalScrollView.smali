.class public Lcom/jodo/paysdk/util/BorderHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;


# instance fields
.field private a:Lcom/jodo/paysdk/util/f;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/jodo/paysdk/util/f;)V
    .locals 1

    iput-object p1, p0, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->a:Lcom/jodo/paysdk/util/f;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->b:Landroid/view/View;

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->a:Lcom/jodo/paysdk/util/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->getScrollX()I

    :cond_1
    return-void
.end method
