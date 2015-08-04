.class final Lcom/jodo/paysdk/d/i;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "jodo unzip"

    const-string v1, "receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/d/g;->e()Lcom/jodo/shares/net/shares/b;

    move-result-object v0

    invoke-static {}, Lcom/jodo/paysdk/d/g;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jodo/shares/net/shares/b;->b(J)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "jodo unzip"

    const-string v1, "STATUS_PAUSED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_1
    const-string v0, "jodo unzip"

    const-string v1, "STATUS_PENDING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_2
    const-string v0, "jodo unzip"

    const-string v1, "STATUS_RUNNING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    const-string v0, "jodo unzip"

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/d/g;->f()V

    invoke-static {}, Lcom/jodo/paysdk/d/g;->h()Landroid/view/ViewManager;

    move-result-object v0

    invoke-static {}, Lcom/jodo/paysdk/d/g;->g()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/jodo/paysdk/d/g;->i()Lcom/jodo/paysdk/model/UnzipInfo;

    move-result-object v0

    invoke-static {}, Lcom/jodo/paysdk/d/g;->j()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/jodo/paysdk/d/y;->a(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "jodo unzip"

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "jodo unzip"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eventHandler:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/d/g;->j()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/d/g;->h()Landroid/view/ViewManager;

    move-result-object v0

    invoke-static {}, Lcom/jodo/paysdk/d/g;->g()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/jodo/paysdk/d/g;->j()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/jodo/paysdk/d/g;->j()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "jodo unzip"

    const-string v1, "after hanlder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/d/g;->e()Lcom/jodo/shares/net/shares/b;

    move-result-object v0

    new-array v1, v3, [J

    invoke-static {}, Lcom/jodo/paysdk/d/g;->d()J

    move-result-wide v2

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/b;->a([J)V

    invoke-static {}, Lcom/jodo/paysdk/d/g;->f()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method
