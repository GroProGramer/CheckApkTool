.class final Lcom/jodo/paysdk/demo/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/demo/SingleGame_MainActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/demo/SingleGame_MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/demo/f;->a:Lcom/jodo/paysdk/demo/SingleGame_MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/jodo/paysdk/demo/f;->a:Lcom/jodo/paysdk/demo/SingleGame_MainActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/jodo/paysdk/demo/f;->a:Lcom/jodo/paysdk/demo/SingleGame_MainActivity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/jodo/paysdk/demo/f;->a:Lcom/jodo/paysdk/demo/SingleGame_MainActivity;

    const-string v1, "\u5728\u4e4b\u524d\u5df2\u53d1\u8d27\uff0c\u65e0\u9700\u91cd\u65b0\u5904\u7406"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jodo/paysdk/demo/f;->a:Lcom/jodo/paysdk/demo/SingleGame_MainActivity;

    const-string v1, "\u5904\u7406\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u652f\u4ed8\u9875\u9762\u5904\u7406"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jodo/paysdk/demo/f;->a:Lcom/jodo/paysdk/demo/SingleGame_MainActivity;

    const-string v1, "\u652f\u4ed8\u5f02\u5e38\uff0c\u8bf7\u67e5\u770b\u65e5\u5fd7"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
