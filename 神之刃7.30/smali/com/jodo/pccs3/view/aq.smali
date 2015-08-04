.class public Lcom/jodo/pccs3/view/aq;
.super Lcom/jodo/pccs3/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/c;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/jodo/pccs3/view/d;)V
    .locals 0

    invoke-static {p0}, Lcom/jodo/pccs3/view/aq;->c(Lcom/jodo/pccs3/view/d;)V

    return-void
.end method

.method private static c(Lcom/jodo/pccs3/view/d;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    move-object v0, p0

    check-cast v0, Lcom/jodo/pccs3/view/av;

    iput-boolean v1, v0, Lcom/jodo/pccs3/view/av;->d:Z

    move-object v0, p0

    check-cast v0, Lcom/jodo/pccs3/view/av;

    iget-object v0, v0, Lcom/jodo/pccs3/view/av;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move-object v0, p0

    check-cast v0, Lcom/jodo/pccs3/view/av;

    iget-object v0, v0, Lcom/jodo/pccs3/view/av;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    check-cast p0, Lcom/jodo/pccs3/view/av;

    iget-object v0, p0, Lcom/jodo/pccs3/view/av;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/jodo/pccs3/view/d;)V
    .locals 4

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/jodo/pccs3/view/av;

    iget-object v1, p0, Lcom/jodo/pccs3/view/aq;->b:Lcom/jodo/pccs3/message/a;

    invoke-interface {v1}, Lcom/jodo/pccs3/message/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/jodo/pccs3/view/aq;->c(Lcom/jodo/pccs3/view/d;)V

    const-string v1, "yes"

    iget-object v2, p0, Lcom/jodo/pccs3/view/aq;->b:Lcom/jodo/pccs3/message/a;

    invoke-interface {v2}, Lcom/jodo/pccs3/message/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/jodo/pccs3/view/av;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    const-string v2, "jodoplay_service_solvedask_ans_positive"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/jodo/pccs3/view/av;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    const-string v2, "jodoplay_service_solvedask_ans_negative"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    instance-of v1, v1, Lcom/jodo/pccs3/view/ChatActivity;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jodo/pccs3/view/ChatActivity;->a:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/jodo/pccs3/view/e;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jodo/pccs3/view/ChatActivity;->a:Landroid/support/v4/app/Fragment;

    check-cast v1, Lcom/jodo/pccs3/view/e;

    iget v1, v1, Lcom/jodo/pccs3/view/e;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lcom/jodo/pccs3/view/aq;->c(Lcom/jodo/pccs3/view/d;)V

    iget-object v0, v0, Lcom/jodo/pccs3/view/av;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    const-string v2, "jodoplay_service_solvedask_ans_negative"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/jodo/pccs3/view/av;->a:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, v0, Lcom/jodo/pccs3/view/av;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    check-cast p1, Lcom/jodo/pccs3/view/av;

    iget-object v0, p1, Lcom/jodo/pccs3/view/av;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "jodoplay_service_chat_item_problemsolved"

    return-object v0
.end method

.method protected final d()Lcom/jodo/pccs3/view/d;
    .locals 5

    new-instance v1, Lcom/jodo/pccs3/view/av;

    invoke-direct {v1}, Lcom/jodo/pccs3/view/av;-><init>()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/aq;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_chatting_ans_negative"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/jodo/pccs3/view/av;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/jodo/pccs3/view/aq;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_chatting_ans_positive"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/jodo/pccs3/view/av;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/jodo/pccs3/view/aq;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_service_solvedask_selection_text"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/jodo/pccs3/view/av;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/jodo/pccs3/view/av;->a:Landroid/widget/Button;

    new-instance v2, Lcom/jodo/pccs3/view/ar;

    invoke-direct {v2, p0, v1}, Lcom/jodo/pccs3/view/ar;-><init>(Lcom/jodo/pccs3/view/aq;Lcom/jodo/pccs3/view/av;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/jodo/pccs3/view/av;->b:Landroid/widget/Button;

    new-instance v2, Lcom/jodo/pccs3/view/at;

    invoke-direct {v2, p0, v1}, Lcom/jodo/pccs3/view/at;-><init>(Lcom/jodo/pccs3/view/aq;Lcom/jodo/pccs3/view/av;)V

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
