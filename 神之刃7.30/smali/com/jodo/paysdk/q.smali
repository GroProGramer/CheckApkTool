.class final Lcom/jodo/paysdk/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Integer;

.field final synthetic e:Lcom/jodo/paysdk/JodoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoLoginActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    iput-boolean p2, p0, Lcom/jodo/paysdk/q;->a:Z

    iput-object p3, p0, Lcom/jodo/paysdk/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jodo/paysdk/q;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/jodo/paysdk/q;->d:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/jodo/paysdk/q;->a:Z

    if-eqz v0, :cond_1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/jodo/paysdk/f/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/f/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    # getter for: Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookAuthCallBack:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->access$600(Lcom/jodo/paysdk/JodoLoginActivity;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/f/a;->a(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/jodo/paysdk/q;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/q;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/jodo/paysdk/q;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcom/jodo/paysdk/JodoLoginActivity;->oauthLogin(ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/JodoLoginActivity;->access$300(Lcom/jodo/paysdk/JodoLoginActivity;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/f/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    # getter for: Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookAuthCallBack:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->access$600(Lcom/jodo/paysdk/JodoLoginActivity;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/f/a;->a(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://account.jodoplay.com/feedback/facebook_privacy_policy_kkfun.html"

    const/16 v2, 0xf99

    const/4 v3, 0x1

    new-instance v4, Lcom/jodo/paysdk/r;

    invoke-direct {v4, p0}, Lcom/jodo/paysdk/r;-><init>(Lcom/jodo/paysdk/q;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    goto :goto_0

    :cond_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/f/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    # getter for: Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookAuthCallBack:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->access$600(Lcom/jodo/paysdk/JodoLoginActivity;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/f/a;->a(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jodo/paysdk/q;->e:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://account.jodoplay.com/feedback/facebook_privacy_policy_kkfun.html"

    const/16 v2, 0xf99

    const/4 v3, 0x1

    new-instance v4, Lcom/jodo/paysdk/s;

    invoke-direct {v4, p0}, Lcom/jodo/paysdk/s;-><init>(Lcom/jodo/paysdk/q;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
