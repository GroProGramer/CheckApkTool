.class final Lcom/jodo/pccs3/view/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/pccs3/a/a;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/e;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/jodo/pccs3/e/b;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->e(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v2}, Lcom/jodo/pccs3/view/e;->f(Lcom/jodo/pccs3/view/e;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/jodo/pccs3/view/k;

    invoke-direct {v3, p0}, Lcom/jodo/pccs3/view/k;-><init>(Lcom/jodo/pccs3/view/j;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/util/List;Lcom/jodo/pccs3/a/g;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "jodoplay_service_connect_success"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    check-cast p1, Lcom/jodo/pccs3/e/h;

    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->g(Lcom/jodo/pccs3/view/e;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "conversation_created_not_init"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1}, Lcom/jodo/pccs3/e/h;->l()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->i(Lcom/jodo/pccs3/view/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->h(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/pccs3/a;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v1}, Lcom/jodo/pccs3/view/e;->j(Lcom/jodo/pccs3/view/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/pccs3/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v5, Lcom/jodo/pccs3/view/e;->c:Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->h(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/a;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    iput-boolean v5, v0, Lcom/jodo/pccs3/view/e;->b:Z

    sput-boolean v4, Lcom/jodo/pccs3/view/e;->c:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
