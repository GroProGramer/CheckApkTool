.class public Lcom/jodo/paysdk/CustomerServiceActivity;
.super Landroid/app/Activity;


# static fields
.field public static final KEY_DESC:Ljava/lang/String; = "problem_desc"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final PROBLEM_TYPE:Ljava/lang/String; = "problem_type"

.field public static final TYPE_FAQ:I = 0x1

.field public static final TYPE_LIVECHAT:I = 0x2


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jodo/paysdk/CustomerServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "problem_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "problem_desc"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->isLiveChatOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jodoplay_service_livechat_closed_tips"

    invoke-static {p0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getCsContact(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->isHelpCenterOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jodoplay_service_helpcenter_closed_tips"

    invoke-static {p0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getCsContact(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/CustomerServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/CustomerServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "problem_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/paysdk/CustomerServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "problem_desc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jodo/paysdk/d;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/jodo/paysdk/d;-><init>(Lcom/jodo/paysdk/CustomerServiceActivity;ILjava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->isSDKInitFinished:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/pccs3/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, v4, v3}, Lcom/jodo/paysdk/InitSDKService;->call(Landroid/content/Context;ZLcom/jodo/pccs3/a/d;)V

    goto :goto_0
.end method
