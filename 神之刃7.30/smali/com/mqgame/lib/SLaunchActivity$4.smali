.class Lcom/mqgame/lib/SLaunchActivity$4;
.super Ljava/util/TimerTask;
.source "SLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SLaunchActivity;->moveProcess(II)V
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
    .line 882
    iput-object p1, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 885
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->progressdest:I
    invoke-static {v2}, Lcom/mqgame/lib/SLaunchActivity;->access$600(Lcom/mqgame/lib/SLaunchActivity;)I

    move-result v2

    if-gez v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/mqgame/lib/SLaunchActivity;->access$700(Lcom/mqgame/lib/SLaunchActivity;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 900
    :goto_0
    return-void

    .line 890
    :cond_0
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->progress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/mqgame/lib/SLaunchActivity;->access$800(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 891
    .local v0, "curprocess":I
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->progressrate:I
    invoke-static {v2}, Lcom/mqgame/lib/SLaunchActivity;->access$900(Lcom/mqgame/lib/SLaunchActivity;)I

    move-result v2

    add-int v1, v0, v2

    .line 892
    .local v1, "nto":I
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->progressdest:I
    invoke-static {v2}, Lcom/mqgame/lib/SLaunchActivity;->access$600(Lcom/mqgame/lib/SLaunchActivity;)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 893
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->progressdest:I
    invoke-static {v2}, Lcom/mqgame/lib/SLaunchActivity;->access$600(Lcom/mqgame/lib/SLaunchActivity;)I

    move-result v1

    .line 894
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v2, v1}, Lcom/mqgame/lib/SLaunchActivity;->setProgressRate(I)V

    .line 895
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->progresstimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/mqgame/lib/SLaunchActivity;->access$700(Lcom/mqgame/lib/SLaunchActivity;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 898
    :cond_1
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$4;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v2, v1}, Lcom/mqgame/lib/SLaunchActivity;->setProgressRate(I)V

    goto :goto_0
.end method
