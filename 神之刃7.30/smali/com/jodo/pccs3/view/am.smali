.class final Lcom/jodo/pccs3/view/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/an;

.field final synthetic b:Lcom/jodo/pccs3/view/ak;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/ak;Lcom/jodo/pccs3/view/an;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/am;->b:Lcom/jodo/pccs3/view/ak;

    iput-object p2, p0, Lcom/jodo/pccs3/view/am;->a:Lcom/jodo/pccs3/view/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/am;->a:Lcom/jodo/pccs3/view/an;

    iget-object v0, v0, Lcom/jodo/pccs3/view/an;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/am;->a:Lcom/jodo/pccs3/view/an;

    iget-object v0, v0, Lcom/jodo/pccs3/view/an;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/am;->a:Lcom/jodo/pccs3/view/an;

    iget-object v0, v0, Lcom/jodo/pccs3/view/an;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
