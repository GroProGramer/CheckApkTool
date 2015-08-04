.class public Lcom/jodo/pccs3/view/ak;
.super Lcom/jodo/pccs3/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/c;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/jodo/pccs3/view/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/jodo/pccs3/view/d;)V
    .locals 5

    check-cast p1, Lcom/jodo/pccs3/view/an;

    iget-object v0, p0, Lcom/jodo/pccs3/view/ak;->b:Lcom/jodo/pccs3/message/a;

    check-cast v0, Lcom/jodo/pccs3/message/b;

    invoke-virtual {v0}, Lcom/jodo/pccs3/message/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/pccs3/view/ak;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/ak;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/jodo/pccs3/view/z;->a(Landroid/content/Context;)Lcom/jodo/pccs3/view/z;

    sget-object v1, Lcom/jodo/pccs3/view/z;->d:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p1, Lcom/jodo/pccs3/view/an;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jodo/pccs3/view/ak;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/jodo/pccs3/view/z;->a(Landroid/content/Context;)Lcom/jodo/pccs3/view/z;

    sget-object v3, Lcom/jodo/pccs3/view/z;->a:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v4, Lcom/jodo/pccs3/view/am;

    invoke-direct {v4, p0, p1}, Lcom/jodo/pccs3/view/am;-><init>(Lcom/jodo/pccs3/view/ak;Lcom/jodo/pccs3/view/an;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "jodoplay_service_chat_item_imagemsg_sender"

    return-object v0
.end method

.method protected final d()Lcom/jodo/pccs3/view/d;
    .locals 5

    new-instance v1, Lcom/jodo/pccs3/view/an;

    invoke-direct {v1}, Lcom/jodo/pccs3/view/an;-><init>()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ak;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ak;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_chatting_msg"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/jodo/pccs3/view/an;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jodo/pccs3/view/ak;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ak;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_chatting_progressBar"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/jodo/pccs3/view/an;->b:Landroid/widget/ProgressBar;

    iget-object v0, v1, Lcom/jodo/pccs3/view/an;->a:Landroid/widget/ImageView;

    new-instance v2, Lcom/jodo/pccs3/view/al;

    invoke-direct {v2, p0}, Lcom/jodo/pccs3/view/al;-><init>(Lcom/jodo/pccs3/view/ak;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method final e()V
    .locals 0

    return-void
.end method

.method final f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
