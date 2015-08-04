.class Lcom/avos/avoscloud/IntervalTimer$1;
.super Landroid/os/Handler;
.source "IntervalTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/IntervalTimer;-><init>(Landroid/os/Looper;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/IntervalTimer;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/IntervalTimer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget-object v3, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    monitor-enter v3

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    # getter for: Lcom/avos/avoscloud/IntervalTimer;->mCancelled:Z
    invoke-static {v2}, Lcom/avos/avoscloud/IntervalTimer;->access$000(Lcom/avos/avoscloud/IntervalTimer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    monitor-exit v3

    .line 64
    :goto_0
    return-void

    .line 44
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 63
    :cond_1
    :goto_1
    :pswitch_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 46
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    # getter for: Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J
    invoke-static {v2}, Lcom/avos/avoscloud/IntervalTimer;->access$100(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 47
    .local v0, "millisLeft":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_2

    .line 48
    iget-object v2, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-virtual {v2}, Lcom/avos/avoscloud/IntervalTimer;->onTrigger()V

    .line 50
    iget-object v2, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    iget-object v4, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    # getter for: Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J
    invoke-static {v4}, Lcom/avos/avoscloud/IntervalTimer;->access$100(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    # getter for: Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J
    invoke-static {v6}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v6

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    # setter for: Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J
    invoke-static {v2, v4, v5}, Lcom/avos/avoscloud/IntervalTimer;->access$102(Lcom/avos/avoscloud/IntervalTimer;J)J

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/IntervalTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    # getter for: Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J
    invoke-static {v4}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/avos/avoscloud/IntervalTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 53
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    # getter for: Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J
    invoke-static {v2}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    .line 55
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/IntervalTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/avos/avoscloud/IntervalTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 59
    .end local v0    # "millisLeft":J
    :pswitch_2
    iget-object v2, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    # getter for: Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J
    invoke-static {v6}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v6

    add-long/2addr v4, v6

    # setter for: Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J
    invoke-static {v2, v4, v5}, Lcom/avos/avoscloud/IntervalTimer;->access$102(Lcom/avos/avoscloud/IntervalTimer;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 44
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
