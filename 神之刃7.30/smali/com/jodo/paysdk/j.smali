.class final Lcom/jodo/paysdk/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/JodoAutoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoAutoLoginActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->Finish()V

    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoSysNoticeActivity;->OnLoginSuccess(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget-boolean v0, v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mIsCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget v0, v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mInterval:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    # invokes: Lcom/jodo/paysdk/JodoAutoLoginActivity;->login()V
    invoke-static {v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->access$000(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget v1, v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mInterval:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mInterval:I

    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget-object v1, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget v1, v1, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mInterval:I

    # invokes: Lcom/jodo/paysdk/JodoAutoLoginActivity;->renderTitle(I)V
    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->access$100(Lcom/jodo/paysdk/JodoAutoLoginActivity;I)V

    iget-object v0, p0, Lcom/jodo/paysdk/j;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    # invokes: Lcom/jodo/paysdk/JodoAutoLoginActivity;->sendInterval()V
    invoke-static {v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->access$200(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
