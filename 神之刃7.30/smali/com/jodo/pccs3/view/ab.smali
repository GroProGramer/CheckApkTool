.class final Lcom/jodo/pccs3/view/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/ImageShowActivity;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/ImageShowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/ab;->a:Lcom/jodo/pccs3/view/ImageShowActivity;

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

    iget-object v0, p0, Lcom/jodo/pccs3/view/ab;->a:Lcom/jodo/pccs3/view/ImageShowActivity;

    invoke-static {v0}, Lcom/jodo/pccs3/view/ImageShowActivity;->a(Lcom/jodo/pccs3/view/ImageShowActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ab;->a:Lcom/jodo/pccs3/view/ImageShowActivity;

    invoke-static {v0}, Lcom/jodo/pccs3/view/ImageShowActivity;->b(Lcom/jodo/pccs3/view/ImageShowActivity;)Lcom/jodo/pccs3/view/photoview/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/photoview/d;->k()V

    return-void
.end method

.method public final onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    return-void
.end method

.method public final onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/ab;->a:Lcom/jodo/pccs3/view/ImageShowActivity;

    invoke-static {v0}, Lcom/jodo/pccs3/view/ImageShowActivity;->a(Lcom/jodo/pccs3/view/ImageShowActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
