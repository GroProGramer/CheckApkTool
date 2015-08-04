.class final Lcom/jodo/pccs3/view/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/av;

.field final synthetic b:Lcom/jodo/pccs3/view/aq;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/aq;Lcom/jodo/pccs3/view/av;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/at;->b:Lcom/jodo/pccs3/view/aq;

    iput-object p2, p0, Lcom/jodo/pccs3/view/at;->a:Lcom/jodo/pccs3/view/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jodo/pccs3/view/at;->a:Lcom/jodo/pccs3/view/av;

    invoke-static {v0}, Lcom/jodo/pccs3/view/aq;->b(Lcom/jodo/pccs3/view/d;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/at;->b:Lcom/jodo/pccs3/view/aq;

    iget-object v0, v0, Lcom/jodo/pccs3/view/aq;->b:Lcom/jodo/pccs3/message/a;

    const-string v1, "yes"

    invoke-interface {v0, v1}, Lcom/jodo/pccs3/message/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/at;->b:Lcom/jodo/pccs3/view/aq;

    iget-object v0, v0, Lcom/jodo/pccs3/view/aq;->b:Lcom/jodo/pccs3/message/a;

    iget-object v1, p0, Lcom/jodo/pccs3/view/at;->b:Lcom/jodo/pccs3/view/aq;

    iget-object v1, v1, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/jodo/pccs3/message/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/at;->a:Lcom/jodo/pccs3/view/av;

    iget-object v0, v0, Lcom/jodo/pccs3/view/av;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jodo/pccs3/view/at;->b:Lcom/jodo/pccs3/view/aq;

    iget-object v1, v1, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    const-string v2, "jodoplay_service_solvedask_ans_positive"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/at;->a:Lcom/jodo/pccs3/view/av;

    iget-object v0, v0, Lcom/jodo/pccs3/view/av;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/at;->a:Lcom/jodo/pccs3/view/av;

    iput-boolean v3, v0, Lcom/jodo/pccs3/view/av;->e:Z

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/at;->b:Lcom/jodo/pccs3/view/aq;

    iget-object v1, v1, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lcom/jodo/pccs3/view/au;

    invoke-direct {v3, p0}, Lcom/jodo/pccs3/view/au;-><init>(Lcom/jodo/pccs3/view/at;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;ZLcom/jodo/pccs3/a/g;)V

    return-void
.end method
