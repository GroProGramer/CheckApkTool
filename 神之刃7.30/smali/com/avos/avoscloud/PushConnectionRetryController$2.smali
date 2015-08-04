.class Lcom/avos/avoscloud/PushConnectionRetryController$2;
.super Landroid/os/Handler;
.source "PushConnectionRetryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/PushConnectionRetryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushConnectionRetryController;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushConnectionRetryController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avos/avoscloud/PushConnectionRetryController$2;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController$2;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()V

    .line 66
    return-void
.end method
