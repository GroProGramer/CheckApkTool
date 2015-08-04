.class final Lcom/jodo/jpoint/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jodo/jpoint/JPoint_Splash;


# direct methods
.method constructor <init>(Lcom/jodo/jpoint/JPoint_Splash;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/jpoint/a;->a:Lcom/jodo/jpoint/JPoint_Splash;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/jodo/jpoint/a;->a:Lcom/jodo/jpoint/JPoint_Splash;

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/jpoint/a;->a:Lcom/jodo/jpoint/JPoint_Splash;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jodo/jpoint/a;->a:Lcom/jodo/jpoint/JPoint_Splash;

    invoke-static {v4}, Lcom/jodo/jpoint/JPoint_Splash;->a(Lcom/jodo/jpoint/JPoint_Splash;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v0, v3, v4}, Lcom/jodo/paysdk/d/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
