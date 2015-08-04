.class final Lcom/jodo/paysdk/buoy/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:F

.field b:F

.field c:J

.field d:Z

.field e:Z

.field f:Z

.field final synthetic g:Lcom/jodo/paysdk/buoy/a;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/WindowManager;

.field private j:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/jodo/paysdk/buoy/a;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/buoy/d;->h:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/jodo/paysdk/buoy/d;->d:Z

    iput-boolean v1, p0, Lcom/jodo/paysdk/buoy/d;->e:Z

    iput-boolean v1, p0, Lcom/jodo/paysdk/buoy/d;->f:Z

    iput-object p2, p0, Lcom/jodo/paysdk/buoy/d;->i:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private c()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/util/ae;->b(Landroid/content/Context;)I

    move-result v2

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v6, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v6, v6, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v7, "layout"

    const-string v8, "jodoplay_buoy_detail_window_container"

    invoke-static {v6, v7, v8}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v5, Lcom/jodo/paysdk/buoy/a;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->h:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v5, v5, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->h:Landroid/widget/LinearLayout;

    sget v5, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    sget v6, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-int v5, v2, v3

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    sub-int v0, v2, v3

    int-to-float v0, v0

    :cond_0
    aget v5, v1, v9

    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_3

    aget v2, v1, v9

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    aget v5, v1, v9

    int-to-float v5, v5

    sub-float v5, v0, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/lit8 v3, v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->i:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v3, v3, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    iget-object v5, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v2, v2, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v9

    float-to-int v3, v0

    sub-int/2addr v2, v3

    aget v1, v1, v10

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v1, v3

    float-to-int v0, v0

    invoke-static {v2, v1, v0}, Lcom/jodo/paysdk/buoy/a;->a(III)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-boolean v10, p0, Lcom/jodo/paysdk/buoy/d;->f:Z

    :goto_1
    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->i:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v2, v2, Lcom/jodo/paysdk/buoy/a;->h:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v10, p0, Lcom/jodo/paysdk/buoy/d;->d:Z

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    invoke-static {v0}, Lcom/jodo/paysdk/buoy/a;->b(Lcom/jodo/paysdk/buoy/a;)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v5, Lcom/jodo/paysdk/buoy/a;->h:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    :cond_3
    aget v5, v1, v9

    add-int/2addr v5, v3

    sub-int v5, v2, v5

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    aget v7, v1, v9

    add-int/2addr v7, v3

    sub-int/2addr v2, v7

    int-to-float v2, v2

    sub-float v2, v0, v2

    sub-float v2, v6, v2

    float-to-int v2, v2

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/lit8 v5, v5, 0x0

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->i:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v5, v5, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    iget-object v6, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v2, v2, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v9

    add-int/2addr v2, v3

    aget v1, v1, v10

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v1, v3

    float-to-int v0, v0

    invoke-static {v2, v1, v0}, Lcom/jodo/paysdk/buoy/a;->a(III)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-boolean v9, p0, Lcom/jodo/paysdk/buoy/d;->f:Z

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->i:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/jodo/paysdk/buoy/d;->d:Z

    return-void
.end method

.method public final b()V
    .locals 6

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jodo/paysdk/buoy/d;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v2, v2, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "jodoplay_buoy_detail_window"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    invoke-static {v0}, Lcom/jodo/paysdk/buoy/a;->a(Lcom/jodo/paysdk/buoy/a;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->j:Lcom/jodo/paysdk/util/BorderHorizontalScrollView;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v2, v2, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_buoy_detail_window_horiscrollview"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;

    iput-object v0, v1, Lcom/jodo/paysdk/buoy/a;->j:Lcom/jodo/paysdk/util/BorderHorizontalScrollView;

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->j:Lcom/jodo/paysdk/util/BorderHorizontalScrollView;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/util/BorderHorizontalScrollView;->a(Lcom/jodo/paysdk/util/f;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyGiftcardcenterEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_giftcardcenter"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyBbsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_bbs"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyWebpayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_webpay"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyFacebookFansUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_fb_fans"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyJpointUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_jpoint"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getEnableannouncepage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_sys_notice"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getIsOpenHelpCenter(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_helpcenter"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->isLiveChatOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_livechat"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_usercenter"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/buoy/e;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/buoy/e;-><init>(Lcom/jodo/paysdk/buoy/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_giftcardcenter"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/buoy/f;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/buoy/f;-><init>(Lcom/jodo/paysdk/buoy/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_webpay"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/buoy/g;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/buoy/g;-><init>(Lcom/jodo/paysdk/buoy/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_fb_fans"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/buoy/h;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/buoy/h;-><init>(Lcom/jodo/paysdk/buoy/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_jpoint"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/buoy/i;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/buoy/i;-><init>(Lcom/jodo/paysdk/buoy/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_sys_notice"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/buoy/k;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/buoy/k;-><init>(Lcom/jodo/paysdk/buoy/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_bbs"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/buoy/l;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/buoy/l;-><init>(Lcom/jodo/paysdk/buoy/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_helpcenter"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/buoy/m;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/buoy/m;-><init>(Lcom/jodo/paysdk/buoy/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_buoy_detail_window_livechat"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/buoy/n;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/buoy/n;-><init>(Lcom/jodo/paysdk/buoy/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/jodo/paysdk/buoy/d;->c()V

    goto/16 :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v5, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v2, v2, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_buoy_logo_bg"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    iput v2, p0, Lcom/jodo/paysdk/buoy/d;->a:F

    iput v3, p0, Lcom/jodo/paysdk/buoy/d;->b:F

    iput-boolean v6, p0, Lcom/jodo/paysdk/buoy/d;->e:Z

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/jodo/paysdk/buoy/d;->a:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    iget v1, p0, Lcom/jodo/paysdk/buoy/d;->b:F

    sub-float v1, v3, v1

    float-to-int v1, v1

    if-gt v0, v5, :cond_1

    if-le v1, v5, :cond_2

    :cond_1
    const-string v2, "A_M_TIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "__"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jodo/paysdk/buoy/d;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/d;->i:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jodo/paysdk/buoy/d;->c:J

    iput-boolean v7, p0, Lcom/jodo/paysdk/buoy/d;->e:Z

    iget-boolean v0, p0, Lcom/jodo/paysdk/buoy/d;->d:Z

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/jodo/paysdk/buoy/d;->a()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v2, v2, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "jodoplay_buoy_icon_bg_normal"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    iget-boolean v0, p0, Lcom/jodo/paysdk/buoy/d;->e:Z

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/jodo/paysdk/buoy/d;->e:Z

    iget-boolean v0, p0, Lcom/jodo/paysdk/buoy/d;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/jodo/paysdk/buoy/d;->b()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
