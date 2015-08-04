.class public Lcom/jodo/pccs3/view/ao;
.super Lcom/jodo/pccs3/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/jodo/pccs3/view/d;)V
    .locals 2

    check-cast p1, Lcom/jodo/pccs3/view/ap;

    new-instance v1, Lcom/jodo/pccs3/e/d;

    invoke-direct {v1}, Lcom/jodo/pccs3/e/d;-><init>()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ao;->b:Lcom/jodo/pccs3/message/a;

    check-cast v0, Lcom/jodo/pccs3/message/e;

    invoke-virtual {v1, v0}, Lcom/jodo/pccs3/e/d;->a(Lcom/jodo/pccs3/message/e;)V

    iget-object v0, p1, Lcom/jodo/pccs3/view/ap;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jodo/pccs3/e/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "jodoplay_service_chat_item_textmsg_sender"

    return-object v0
.end method

.method protected final d()Lcom/jodo/pccs3/view/d;
    .locals 5

    new-instance v1, Lcom/jodo/pccs3/view/ap;

    invoke-direct {v1}, Lcom/jodo/pccs3/view/ap;-><init>()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/ao;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/ao;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_chatting_msg"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/jodo/pccs3/view/ap;->a:Landroid/widget/TextView;

    return-object v1
.end method

.method final e()V
    .locals 0

    return-void
.end method

.method final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/ao;->d:Lcom/jodo/pccs3/view/d;

    check-cast v0, Lcom/jodo/pccs3/view/ap;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ap;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
