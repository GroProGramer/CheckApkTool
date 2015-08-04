.class public Lcom/jodo/pccs3/view/ChatActivity;
.super Landroid/support/v4/app/FragmentActivity;


# static fields
.field public static a:Landroid/support/v4/app/Fragment;

.field private static b:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/jodo/pccs3/view/ChatActivity;->a:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/jodo/pccs3/view/w;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jodo/pccs3/view/ChatActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/jodo/pccs3/view/ChatActivity;->a:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/jodo/pccs3/view/bd;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jodo/pccs3/view/w;->a()Lcom/jodo/pccs3/view/w;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jodo/pccs3/view/ChatActivity;->a:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/jodo/pccs3/view/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/pccs3/view/ChatActivity;->a:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/jodo/pccs3/view/e;

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getIsOpenHelpCenter(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/jodo/pccs3/view/e;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :cond_3
    :pswitch_0
    invoke-static {}, Lcom/jodo/pccs3/view/w;->a()Lcom/jodo/pccs3/view/w;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, v0, Lcom/jodo/pccs3/view/e;->b:Z

    if-eqz v0, :cond_3

    :pswitch_2
    invoke-static {}, Lcom/jodo/pccs3/view/bd;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, v0, Lcom/jodo/pccs3/view/e;->b:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/jodo/pccs3/view/bd;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/jodo/pccs3/view/ChatActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jodo/pccs3/view/ChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "problem_desc"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "problem_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 4

    instance-of v0, p1, Lcom/jodo/pccs3/view/w;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->isHelpCenterOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jodo/pccs3/view/ChatActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/jodo/pccs3/view/w;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->isLiveChatOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jodo/pccs3/view/ChatActivity;->b:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "jodoplay_service_livechat_closed_tips"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/jodo/pccs3/view/ChatActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/jodo/paysdk/config/JodoConfig;->getCsContact(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jodo/pccs3/view/ChatActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jodo/pccs3/view/ChatActivity;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/jodo/pccs3/view/ChatActivity;->b:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "id"

    const-string v3, "jodoplay_service_container"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    invoke-static {p0}, Lcom/jodo/pccs3/a;->f(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/jodo/pccs3/view/bd;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/jodo/pccs3/view/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-static {p0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/jodo/pccs3/view/ChatActivity;->b:Landroid/support/v4/app/FragmentActivity;

    const-string v0, "layout"

    const-string v1, "jodoplay_service_activity_container"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/view/ChatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/jodo/pccs3/view/w;->a()Lcom/jodo/pccs3/view/w;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "problem_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "problem_desc"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
