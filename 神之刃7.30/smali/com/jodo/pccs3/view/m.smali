.class final Lcom/jodo/pccs3/view/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/l;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/l;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/m;->a:Lcom/jodo/pccs3/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/pccs3/view/m;->a:Lcom/jodo/pccs3/view/l;

    iget-object v0, v0, Lcom/jodo/pccs3/view/l;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/m;->a:Lcom/jodo/pccs3/view/l;

    iget-object v0, v0, Lcom/jodo/pccs3/view/l;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/m;->a:Lcom/jodo/pccs3/view/l;

    iget-object v1, v1, Lcom/jodo/pccs3/view/l;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "jodoplay_service_tips_the_problem_solved_cant_send_msg"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
