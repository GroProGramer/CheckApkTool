.class final Lcom/jodo/pccs3/view/photoview/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/photoview/d;

.field private final b:Lcom/jodo/pccs3/view/photoview/c/d;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/jodo/pccs3/view/photoview/d;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/jodo/pccs3/view/photoview/h;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/jodo/pccs3/view/photoview/c/c;

    invoke-direct {v0, p2}, Lcom/jodo/pccs3/view/photoview/c/c;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/h;->b:Lcom/jodo/pccs3/view/photoview/c/d;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/jodo/pccs3/view/photoview/c/a;

    invoke-direct {v0, p2}, Lcom/jodo/pccs3/view/photoview/c/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jodo/pccs3/view/photoview/c/b;

    invoke-direct {v0, p2}, Lcom/jodo/pccs3/view/photoview/c/b;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/jodo/pccs3/view/photoview/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jodo/pccs3/view/photoview/b/a;->a()Lcom/jodo/pccs3/view/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "Cancel Fling"

    invoke-interface {v0, v1, v2}, Lcom/jodo/pccs3/view/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/h;->b:Lcom/jodo/pccs3/view/photoview/c/d;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/photoview/c/d;->b()V

    return-void
.end method

.method public final a(IIII)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/h;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/photoview/d;->b()Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v4, p1

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v5, v0

    :goto_1
    iget v2, v3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v4, p2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v4, p2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v7, v0

    :goto_2
    iput v1, p0, Lcom/jodo/pccs3/view/photoview/h;->c:I

    iput v2, p0, Lcom/jodo/pccs3/view/photoview/h;->d:I

    invoke-static {}, Lcom/jodo/pccs3/view/photoview/d;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jodo/pccs3/view/photoview/b/a;->a()Lcom/jodo/pccs3/view/photoview/b/b;

    move-result-object v0

    const-string v3, "PhotoViewAttacher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "fling. StartX:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " StartY:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " MaxX:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " MaxY:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/jodo/pccs3/view/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v1, v6, :cond_3

    if-eq v2, v8, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/h;->b:Lcom/jodo/pccs3/view/photoview/c/d;

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/jodo/pccs3/view/photoview/c/d;->a(IIIIIIII)V

    goto/16 :goto_0

    :cond_4
    move v5, v1

    move v6, v1

    goto :goto_1

    :cond_5
    move v7, v2

    move v8, v2

    goto :goto_2
.end method

.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/h;->b:Lcom/jodo/pccs3/view/photoview/c/d;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/photoview/c/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/h;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/h;->b:Lcom/jodo/pccs3/view/photoview/c/d;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/photoview/c/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/h;->b:Lcom/jodo/pccs3/view/photoview/c/d;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/photoview/c/d;->d()I

    move-result v1

    iget-object v2, p0, Lcom/jodo/pccs3/view/photoview/h;->b:Lcom/jodo/pccs3/view/photoview/c/d;

    invoke-virtual {v2}, Lcom/jodo/pccs3/view/photoview/c/d;->e()I

    move-result v2

    invoke-static {}, Lcom/jodo/pccs3/view/photoview/d;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/jodo/pccs3/view/photoview/b/a;->a()Lcom/jodo/pccs3/view/photoview/b/b;

    move-result-object v3

    const-string v4, "PhotoViewAttacher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fling run(). CurrentX:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jodo/pccs3/view/photoview/h;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CurrentY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/jodo/pccs3/view/photoview/h;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NewX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NewY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/jodo/pccs3/view/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/h;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-static {v3}, Lcom/jodo/pccs3/view/photoview/d;->b(Lcom/jodo/pccs3/view/photoview/d;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/jodo/pccs3/view/photoview/h;->c:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/jodo/pccs3/view/photoview/h;->d:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/h;->a:Lcom/jodo/pccs3/view/photoview/d;

    iget-object v4, p0, Lcom/jodo/pccs3/view/photoview/h;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v4}, Lcom/jodo/pccs3/view/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jodo/pccs3/view/photoview/d;->a(Lcom/jodo/pccs3/view/photoview/d;Landroid/graphics/Matrix;)V

    iput v1, p0, Lcom/jodo/pccs3/view/photoview/h;->c:I

    iput v2, p0, Lcom/jodo/pccs3/view/photoview/h;->d:I

    invoke-static {v0, p0}, Lcom/jodo/pccs3/view/photoview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
