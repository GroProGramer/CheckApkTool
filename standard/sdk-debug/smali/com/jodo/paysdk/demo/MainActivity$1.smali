.class Lcom/jodo/paysdk/demo/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jodo/paysdk/demo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jodo/paysdk/demo/MainActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/demo/MainActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jodo/paysdk/demo/MainActivity$1;->this$0:Lcom/jodo/paysdk/demo/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :pswitch_0
    return-void

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
