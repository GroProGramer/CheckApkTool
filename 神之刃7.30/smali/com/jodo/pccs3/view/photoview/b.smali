.class public final Lcom/jodo/pccs3/view/photoview/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private a:Lcom/jodo/pccs3/view/photoview/d;


# direct methods
.method public constructor <init>(Lcom/jodo/pccs3/view/photoview/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/photoview/d;->g()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/photoview/d;->e()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/photoview/d;->e()F

    move-result v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/jodo/pccs3/view/photoview/d;->b(FFF)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/photoview/d;->e()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/photoview/d;->f()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/photoview/d;->f()F

    move-result v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/jodo/pccs3/view/photoview/d;->b(FFF)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/photoview/d;->d()F

    move-result v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/jodo/pccs3/view/photoview/d;->b(FFF)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/photoview/d;->i()Lcom/jodo/pccs3/view/photoview/j;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/photoview/d;->b()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    iget v0, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/photoview/d;->i()Lcom/jodo/pccs3/view/photoview/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/jodo/pccs3/view/photoview/j;->a()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/photoview/d;->j()Lcom/jodo/pccs3/view/photoview/k;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/b;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/photoview/d;->j()Lcom/jodo/pccs3/view/photoview/k;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    goto :goto_0
.end method
