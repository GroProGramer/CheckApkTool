.class final Lcom/jodo/paysdk/w;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/JodoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctk"

    const-string v2, "got"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    iget-object v0, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    # invokes: Lcom/jodo/paysdk/JodoLoginActivity;->getDefaultMail()Ljava/lang/String;
    invoke-static {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->access$100(Lcom/jodo/paysdk/JodoLoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    # invokes: Lcom/jodo/paysdk/JodoLoginActivity;->getDefaultPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->access$200(Lcom/jodo/paysdk/JodoLoginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v1, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jodoplay_ctk_get_google_account_success"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v1, p0, Lcom/jodo/paysdk/w;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jodoplay_ctk_get_google_account_failed"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
