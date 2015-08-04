.class final Lcom/jodo/pccs3/view/photoview/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/photoview/d;

.field private final b:F

.field private final c:F

.field private final d:J

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Lcom/jodo/pccs3/view/photoview/d;FFFF)V
    .locals 2

    iput-object p1, p0, Lcom/jodo/pccs3/view/photoview/g;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/jodo/pccs3/view/photoview/g;->b:F

    iput p5, p0, Lcom/jodo/pccs3/view/photoview/g;->c:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jodo/pccs3/view/photoview/g;->d:J

    iput p2, p0, Lcom/jodo/pccs3/view/photoview/g;->e:F

    iput p3, p0, Lcom/jodo/pccs3/view/photoview/g;->f:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/g;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/jodo/pccs3/view/photoview/g;->d:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/jodo/pccs3/view/photoview/g;->a:Lcom/jodo/pccs3/view/photoview/d;

    iget v2, v2, Lcom/jodo/pccs3/view/photoview/d;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sget-object v2, Lcom/jodo/pccs3/view/photoview/d;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/jodo/pccs3/view/photoview/g;->e:F

    iget v3, p0, Lcom/jodo/pccs3/view/photoview/g;->f:F

    iget v4, p0, Lcom/jodo/pccs3/view/photoview/g;->e:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/g;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/photoview/d;->g()F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/jodo/pccs3/view/photoview/g;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-static {v3}, Lcom/jodo/pccs3/view/photoview/d;->b(Lcom/jodo/pccs3/view/photoview/d;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/jodo/pccs3/view/photoview/g;->b:F

    iget v5, p0, Lcom/jodo/pccs3/view/photoview/g;->c:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v2, p0, Lcom/jodo/pccs3/view/photoview/g;->a:Lcom/jodo/pccs3/view/photoview/d;

    invoke-static {v2}, Lcom/jodo/pccs3/view/photoview/d;->c(Lcom/jodo/pccs3/view/photoview/d;)V

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    invoke-static {v0, p0}, Lcom/jodo/pccs3/view/photoview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
