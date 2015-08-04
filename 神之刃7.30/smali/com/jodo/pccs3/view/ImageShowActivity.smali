.class public Lcom/jodo/pccs3/view/ImageShowActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Lcom/jodo/pccs3/view/photoview/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/view/ImageShowActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/jodo/pccs3/view/ImageShowActivity;)Lcom/jodo/pccs3/view/photoview/d;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->d:Lcom/jodo/pccs3/view/photoview/d;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "layout"

    const-string v1, "jodoplay_service_chatting_showimage"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/view/ImageShowActivity;->setContentView(I)V

    const-string v0, "id"

    const-string v1, "jodoplay_service_gestureImageView"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/view/ImageShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->b:Landroid/widget/ImageView;

    const-string v0, "id"

    const-string v1, "jodoplay_service_chatting_progressBar"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/view/ImageShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->c:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/jodo/pccs3/view/photoview/d;

    iget-object v1, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->b:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/jodo/pccs3/view/photoview/d;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->d:Lcom/jodo/pccs3/view/photoview/d;

    iget-object v0, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->d:Lcom/jodo/pccs3/view/photoview/d;

    new-instance v1, Lcom/jodo/pccs3/view/ac;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/ac;-><init>(Lcom/jodo/pccs3/view/ImageShowActivity;)V

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/view/photoview/d;->a(Lcom/jodo/pccs3/view/photoview/j;)V

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/ImageShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/jodo/pccs3/view/z;->a(Landroid/content/Context;)Lcom/jodo/pccs3/view/z;

    sget-object v0, Lcom/jodo/pccs3/view/z;->d:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ImageShowActivity;->b:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/jodo/pccs3/view/z;->a(Landroid/content/Context;)Lcom/jodo/pccs3/view/z;

    sget-object v3, Lcom/jodo/pccs3/view/z;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v4, Lcom/jodo/pccs3/view/ab;

    invoke-direct {v4, p0}, Lcom/jodo/pccs3/view/ab;-><init>(Lcom/jodo/pccs3/view/ImageShowActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method
