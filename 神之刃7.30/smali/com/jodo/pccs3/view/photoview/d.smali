.class public final Lcom/jodo/pccs3/view/photoview/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/jodo/pccs3/view/photoview/a/f;
.implements Lcom/jodo/pccs3/view/photoview/c;


# static fields
.field static final a:Landroid/view/animation/Interpolator;

.field private static final c:Z


# instance fields
.field private A:Z

.field private B:Landroid/widget/ImageView$ScaleType;

.field private C:F

.field b:I

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/GestureDetector;

.field private j:Lcom/jodo/pccs3/view/photoview/a/e;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/RectF;

.field private final o:[F

.field private p:Lcom/jodo/pccs3/view/photoview/i;

.field private q:Lcom/jodo/pccs3/view/photoview/j;

.field private r:Lcom/jodo/pccs3/view/photoview/k;

.field private s:Landroid/view/View$OnLongClickListener;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Lcom/jodo/pccs3/view/photoview/h;

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/jodo/pccs3/view/photoview/d;->c:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/jodo/pccs3/view/photoview/d;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/jodo/pccs3/view/photoview/d;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jodo/pccs3/view/photoview/d;->d:F

    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lcom/jodo/pccs3/view/photoview/d;->e:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/jodo/pccs3/view/photoview/d;->f:F

    iput-boolean v3, p0, Lcom/jodo/pccs3/view/photoview/d;->g:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->l:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->m:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->n:Landroid/graphics/RectF;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->o:[F

    const/4 v0, 0x2

    iput v0, p0, Lcom/jodo/pccs3/view/photoview/d;->y:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/pccs3/view/photoview/d;->z:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/pccs3/view/photoview/d;->C:F

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {p1}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    new-instance v0, Lcom/jodo/pccs3/view/photoview/a/a;

    invoke-direct {v0, v1}, Lcom/jodo/pccs3/view/photoview/a/a;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-interface {v0, p0}, Lcom/jodo/pccs3/view/photoview/a/e;->a(Lcom/jodo/pccs3/view/photoview/a/f;)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->j:Lcom/jodo/pccs3/view/photoview/a/e;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/jodo/pccs3/view/photoview/e;

    invoke-direct {v2, p0}, Lcom/jodo/pccs3/view/photoview/e;-><init>(Lcom/jodo/pccs3/view/photoview/d;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->i:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->i:Landroid/view/GestureDetector;

    new-instance v1, Lcom/jodo/pccs3/view/photoview/b;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/photoview/b;-><init>(Lcom/jodo/pccs3/view/photoview/d;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    iput-boolean v3, p0, Lcom/jodo/pccs3/view/photoview/d;->A:Z

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->k()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_3

    new-instance v0, Lcom/jodo/pccs3/view/photoview/a/b;

    invoke-direct {v0, v1}, Lcom/jodo/pccs3/view/photoview/a/b;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/jodo/pccs3/view/photoview/a/c;

    invoke-direct {v0, v1}, Lcom/jodo/pccs3/view/photoview/a/c;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->o:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->o:[F

    aget v0, v0, p2

    return v0
.end method

.method private a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->n:Landroid/graphics/RectF;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/jodo/pccs3/view/photoview/d;)Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->s:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/jodo/pccs3/view/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lcom/jodo/pccs3/view/photoview/d;->c(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    int-to-float v4, v2

    div-float v4, v1, v4

    int-to-float v5, v3

    div-float v5, v0, v5

    iget-object v6, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_2

    iget-object v4, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->q()V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v5, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v5, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_4
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v4, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Lcom/jodo/pccs3/view/photoview/f;->a:[I

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/jodo/pccs3/view/photoview/c;

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/view/photoview/d;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jodo/pccs3/view/photoview/d;->b(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static b(Landroid/widget/ImageView;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/jodo/pccs3/view/photoview/d;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->m:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private b(Landroid/graphics/Matrix;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/jodo/pccs3/view/photoview/c;

    if-nez v2, :cond_0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->p:Lcom/jodo/pccs3/view/photoview/i;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    :cond_1
    return-void
.end method

.method private static c(Landroid/widget/ImageView;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/jodo/pccs3/view/photoview/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->o()V

    return-void
.end method

.method static synthetic m()Z
    .locals 1

    sget-boolean v0, Lcom/jodo/pccs3/view/photoview/d;->c:Z

    return v0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->x:Lcom/jodo/pccs3/view/photoview/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->x:Lcom/jodo/pccs3/view/photoview/h;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/photoview/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->x:Lcom/jodo/pccs3/view/photoview/h;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/pccs3/view/photoview/d;->b(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private p()Z
    .locals 11

    const/4 v3, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v5

    if-nez v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v4}, Lcom/jodo/pccs3/view/photoview/d;->c(Landroid/widget/ImageView;)I

    move-result v7

    int-to-float v8, v7

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_2

    sget-object v8, Lcom/jodo/pccs3/view/photoview/f;->a:[I

    iget-object v9, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    int-to-float v7, v7

    sub-float v0, v7, v0

    div-float/2addr v0, v10

    iget v7, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v7

    :goto_1
    invoke-static {v4}, Lcom/jodo/pccs3/view/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_4

    sget-object v1, Lcom/jodo/pccs3/view/photoview/f;->a:[I

    iget-object v2, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    int-to-float v1, v4

    sub-float/2addr v1, v6

    div-float/2addr v1, v10

    iget v2, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    :goto_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/jodo/pccs3/view/photoview/d;->y:I

    :goto_3
    iget-object v2, p0, Lcom/jodo/pccs3/view/photoview/d;->m:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v0, v3

    goto :goto_0

    :pswitch_0
    iget v0, v5, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    :pswitch_1
    int-to-float v7, v7

    sub-float v0, v7, v0

    iget v7, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v7

    goto :goto_1

    :cond_2
    iget v0, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, v5, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    :cond_3
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v7

    cmpg-float v0, v0, v8

    if-gez v0, :cond_7

    int-to-float v0, v7

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v7

    goto :goto_1

    :pswitch_2
    iget v1, v5, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_2

    :pswitch_3
    int-to-float v1, v4

    sub-float/2addr v1, v6

    iget v2, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_4
    iget v6, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_5

    iput v2, p0, Lcom/jodo/pccs3/view/photoview/d;->y:I

    iget v1, v5, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_3

    :cond_5
    iget v2, v5, Landroid/graphics/RectF;->right:F

    int-to-float v6, v4

    cmpg-float v2, v2, v6

    if-gez v2, :cond_6

    int-to-float v1, v4

    iget v2, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v3, p0, Lcom/jodo/pccs3/view/photoview/d;->y:I

    goto :goto_3

    :cond_6
    const/4 v2, -0x1

    iput v2, p0, Lcom/jodo/pccs3/view/photoview/d;->y:I

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/pccs3/view/photoview/d;->b(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->p()Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->n()V

    :cond_2
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->i:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->i:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_3
    iput-object v3, p0, Lcom/jodo/pccs3/view/photoview/d;->p:Lcom/jodo/pccs3/view/photoview/i;

    iput-object v3, p0, Lcom/jodo/pccs3/view/photoview/d;->q:Lcom/jodo/pccs3/view/photoview/j;

    iput-object v3, p0, Lcom/jodo/pccs3/view/photoview/d;->r:Lcom/jodo/pccs3/view/photoview/k;

    iput-object v3, p0, Lcom/jodo/pccs3/view/photoview/d;->h:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->j:Lcom/jodo/pccs3/view/photoview/a/e;

    invoke-interface {v0}, Lcom/jodo/pccs3/view/photoview/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/jodo/pccs3/view/photoview/d;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jodo/pccs3/view/photoview/b/a;->a()Lcom/jodo/pccs3/view/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "onDrag: dx: %.2f. dy: %.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jodo/pccs3/view/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->o()V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jodo/pccs3/view/photoview/d;->g:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/jodo/pccs3/view/photoview/d;->y:I

    if-eq v1, v7, :cond_4

    iget v1, p0, Lcom/jodo/pccs3/view/photoview/d;->y:I

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/jodo/pccs3/view/photoview/d;->y:I

    if-ne v1, v5, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    :cond_4
    if-eqz v0, :cond_0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public final a(FFF)V
    .locals 6

    sget-boolean v0, Lcom/jodo/pccs3/view/photoview/d;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jodo/pccs3/view/photoview/b/a;->a()Lcom/jodo/pccs3/view/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jodo/pccs3/view/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->g()F

    move-result v0

    iget v1, p0, Lcom/jodo/pccs3/view/photoview/d;->f:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->o()V

    :cond_2
    return-void
.end method

.method public final a(FFFF)V
    .locals 6

    sget-boolean v0, Lcom/jodo/pccs3/view/photoview/d;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jodo/pccs3/view/photoview/b/a;->a()Lcom/jodo/pccs3/view/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFling. sX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Vx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Vy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jodo/pccs3/view/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/jodo/pccs3/view/photoview/h;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/jodo/pccs3/view/photoview/h;-><init>(Lcom/jodo/pccs3/view/photoview/d;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->x:Lcom/jodo/pccs3/view/photoview/h;

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->x:Lcom/jodo/pccs3/view/photoview/h;

    invoke-static {v0}, Lcom/jodo/pccs3/view/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v2

    invoke-static {v0}, Lcom/jodo/pccs3/view/photoview/d;->c(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jodo/pccs3/view/photoview/h;->a(IIII)V

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->x:Lcom/jodo/pccs3/view/photoview/h;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/photoview/d;->s:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final a(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->k()V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/jodo/pccs3/view/photoview/f;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/jodo/pccs3/view/photoview/j;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/photoview/d;->q:Lcom/jodo/pccs3/view/photoview/j;

    return-void
.end method

.method public final b()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->p()Z

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final b(FFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v0, p0, Lcom/jodo/pccs3/view/photoview/d;->d:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/jodo/pccs3/view/photoview/d;->f:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/jodo/pccs3/view/photoview/b/a;->a()Lcom/jodo/pccs3/view/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "Scale must be within the range of minScale and maxScale"

    invoke-interface {v0, v1, v2}, Lcom/jodo/pccs3/view/photoview/b/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/jodo/pccs3/view/photoview/g;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->g()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jodo/pccs3/view/photoview/g;-><init>(Lcom/jodo/pccs3/view/photoview/d;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final c()Landroid/widget/ImageView;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->h:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->a()V

    const-string v1, "PhotoViewAttacher"

    const-string v2, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/view/photoview/d;->d:F

    return v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/view/photoview/d;->e:F

    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/view/photoview/d;->f:F

    return v0
.end method

.method public final g()F
    .locals 5

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->m:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->m:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public final h()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->B:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final i()Lcom/jodo/pccs3/view/photoview/j;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->q:Lcom/jodo/pccs3/view/photoview/j;

    return-object v0
.end method

.method public final j()Lcom/jodo/pccs3/view/photoview/k;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->r:Lcom/jodo/pccs3/view/photoview/k;

    return-object v0
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/jodo/pccs3/view/photoview/d;->A:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->q()V

    goto :goto_0
.end method

.method public final l()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->l:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->l:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/d;->l:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final onGlobalLayout()V
    .locals 6

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/jodo/pccs3/view/photoview/d;->A:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/jodo/pccs3/view/photoview/d;->t:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/jodo/pccs3/view/photoview/d;->v:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Lcom/jodo/pccs3/view/photoview/d;->w:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/jodo/pccs3/view/photoview/d;->u:I

    if-eq v2, v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/graphics/drawable/Drawable;)V

    iput v1, p0, Lcom/jodo/pccs3/view/photoview/d;->t:I

    iput v2, p0, Lcom/jodo/pccs3/view/photoview/d;->u:I

    iput v3, p0, Lcom/jodo/pccs3/view/photoview/d;->v:I

    iput v4, p0, Lcom/jodo/pccs3/view/photoview/d;->w:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/pccs3/view/photoview/d;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/jodo/pccs3/view/photoview/d;->A:Z

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v6

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->j:Lcom/jodo/pccs3/view/photoview/a/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->j:Lcom/jodo/pccs3/view/photoview/a/e;

    invoke-interface {v1, p2}, Lcom/jodo/pccs3/view/photoview/a/e;->c(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    :cond_1
    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->i:Landroid/view/GestureDetector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jodo/pccs3/view/photoview/d;->i:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_4

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_3
    invoke-direct {p0}, Lcom/jodo/pccs3/view/photoview/d;->n()V

    move v0, v1

    goto :goto_1

    :cond_4
    const-string v0, "PhotoViewAttacher"

    const-string v2, "onTouch getParent() returned null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->g()F

    move-result v0

    iget v2, p0, Lcom/jodo/pccs3/view/photoview/d;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->b()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v0, Lcom/jodo/pccs3/view/photoview/g;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/photoview/d;->g()F

    move-result v2

    iget v3, p0, Lcom/jodo/pccs3/view/photoview/d;->d:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jodo/pccs3/view/photoview/g;-><init>(Lcom/jodo/pccs3/view/photoview/d;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
