.class public Lcom/jodo/pccs3/view/ax;
.super Lcom/jodo/pccs3/view/ae;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/jodo/pccs3/view/d;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x4

    invoke-super {p0, p1}, Lcom/jodo/pccs3/view/ae;->a(Lcom/jodo/pccs3/view/d;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ax;->b:Lcom/jodo/pccs3/message/a;

    invoke-interface {v0}, Lcom/jodo/pccs3/message/a;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/jodo/pccs3/view/bb;

    iget-object v0, v0, Lcom/jodo/pccs3/view/bb;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, p1

    check-cast v0, Lcom/jodo/pccs3/view/bb;

    iget-object v0, v0, Lcom/jodo/pccs3/view/bb;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jodo/pccs3/view/ax;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ax;->c:Landroid/content/Context;

    const-string v3, "anim"

    const-string v4, "jodoplay_service_progress_rotate"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    check-cast p1, Lcom/jodo/pccs3/view/bb;

    iget-object v0, p1, Lcom/jodo/pccs3/view/bb;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/jodo/pccs3/view/bb;

    iget-object v0, v0, Lcom/jodo/pccs3/view/bb;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    move-object v0, p1

    check-cast v0, Lcom/jodo/pccs3/view/bb;

    iget-object v0, v0, Lcom/jodo/pccs3/view/bb;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    check-cast p1, Lcom/jodo/pccs3/view/bb;

    iget-object v0, p1, Lcom/jodo/pccs3/view/bb;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/jodo/pccs3/view/bb;

    iget-object v0, v0, Lcom/jodo/pccs3/view/bb;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    move-object v0, p1

    check-cast v0, Lcom/jodo/pccs3/view/bb;

    iget-object v0, v0, Lcom/jodo/pccs3/view/bb;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    check-cast p1, Lcom/jodo/pccs3/view/bb;

    iget-object v0, p1, Lcom/jodo/pccs3/view/bb;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "jodoplay_service_send_container"

    return-object v0
.end method

.method protected final d()Lcom/jodo/pccs3/view/d;
    .locals 5

    new-instance v1, Lcom/jodo/pccs3/view/bb;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/jodo/pccs3/view/bb;-><init>(B)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ax;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ax;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_content"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/jodo/pccs3/view/bb;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/jodo/pccs3/view/ax;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ax;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_msg_sender_sending"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/jodo/pccs3/view/bb;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jodo/pccs3/view/ax;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ax;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_msg_sender_failed"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/jodo/pccs3/view/bb;->c:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/jodo/pccs3/view/bb;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/jodo/pccs3/view/ay;

    invoke-direct {v2, p0}, Lcom/jodo/pccs3/view/ay;-><init>(Lcom/jodo/pccs3/view/ax;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
