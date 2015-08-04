.class final Lcom/jodo/paysdk/d/x;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/d/x;->a:Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/jodo/paysdk/d/x;->a:Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;

    invoke-interface {v2, v0, v1}, Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;->onProgressCallback(II)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/jodo/paysdk/d/x;->a:Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;->onResultCallback(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/jodo/paysdk/d/x;->a:Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;->onResultCallback(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/jodo/paysdk/d/x;->a:Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;->onResultCallback(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/jodo/paysdk/d/x;->a:Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;->onResultCallback(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x63 -> :sswitch_3
    .end sparse-switch
.end method
