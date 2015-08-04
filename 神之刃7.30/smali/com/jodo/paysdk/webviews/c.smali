.class final Lcom/jodo/paysdk/webviews/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/a;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/jodo/paysdk/webviews/a;->g:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/webviews/a;->c()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/jodo/paysdk/webviews/a;->d:Landroid/view/ViewGroup;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const v1, 0x40002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v3, v3, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/jodo/paysdk/util/ae;->a(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/jodo/paysdk/util/ae;->b(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/a;->g:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v2, v2, Lcom/jodo/paysdk/webviews/a;->d:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/jodo/paysdk/webviews/c;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/jodo/paysdk/util/ae;->c(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
