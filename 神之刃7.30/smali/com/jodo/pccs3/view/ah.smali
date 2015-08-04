.class public Lcom/jodo/pccs3/view/ah;
.super Lcom/jodo/pccs3/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/jodo/pccs3/view/d;)V
    .locals 0

    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "jodoplay_service_chat_item_entrytosubmit"

    return-object v0
.end method

.method protected final d()Lcom/jodo/pccs3/view/d;
    .locals 5

    new-instance v1, Lcom/jodo/pccs3/view/aj;

    invoke-direct {v1}, Lcom/jodo/pccs3/view/aj;-><init>()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ah;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ah;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_chatitem_entrytosubmit_btn"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/jodo/pccs3/view/aj;->a:Landroid/widget/Button;

    iget-object v0, v1, Lcom/jodo/pccs3/view/aj;->a:Landroid/widget/Button;

    new-instance v2, Lcom/jodo/pccs3/view/ai;

    invoke-direct {v2, p0}, Lcom/jodo/pccs3/view/ai;-><init>(Lcom/jodo/pccs3/view/ah;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
