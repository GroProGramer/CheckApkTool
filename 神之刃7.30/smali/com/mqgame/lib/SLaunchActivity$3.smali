.class Lcom/mqgame/lib/SLaunchActivity$3;
.super Ljava/util/TimerTask;
.source "SLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SLaunchActivity;->startComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqgame/lib/SLaunchActivity;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SLaunchActivity;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/mqgame/lib/SLaunchActivity$3;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 799
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 800
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 801
    const v1, 0x7f09012e

    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$3;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->curcommonTxtIdx:I
    invoke-static {v2}, Lcom/mqgame/lib/SLaunchActivity;->access$500(Lcom/mqgame/lib/SLaunchActivity;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 802
    iget-object v1, p0, Lcom/mqgame/lib/SLaunchActivity$3;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iget-object v1, v1, Lcom/mqgame/lib/SLaunchActivity;->UpdateTips:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 803
    iget-object v1, p0, Lcom/mqgame/lib/SLaunchActivity$3;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iget-object v1, v1, Lcom/mqgame/lib/SLaunchActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 807
    iget-object v1, p0, Lcom/mqgame/lib/SLaunchActivity$3;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$3;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->curcommonTxtIdx:I
    invoke-static {v2}, Lcom/mqgame/lib/SLaunchActivity;->access$500(Lcom/mqgame/lib/SLaunchActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x1a

    # setter for: Lcom/mqgame/lib/SLaunchActivity;->curcommonTxtIdx:I
    invoke-static {v1, v2}, Lcom/mqgame/lib/SLaunchActivity;->access$502(Lcom/mqgame/lib/SLaunchActivity;I)I

    .line 808
    return-void
.end method
