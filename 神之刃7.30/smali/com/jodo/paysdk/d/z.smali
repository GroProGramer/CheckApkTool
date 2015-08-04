.class final Lcom/jodo/paysdk/d/z;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    invoke-static {}, Lcom/jodo/paysdk/d/y;->a()Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-static {}, Lcom/jodo/paysdk/d/y;->b()Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading... "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/jodo/paysdk/d/y;->d()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, Lcom/jodo/paysdk/d/y;->c()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/d/y;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/jodo/paysdk/d/y;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/jodo/paysdk/d/y;->g()Lcom/jodo/paysdk/model/UnzipInfo;

    move-result-object v1

    invoke-static {}, Lcom/jodo/paysdk/d/y;->h()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/d/g;->a(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
