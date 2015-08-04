.class Lcom/linekong/voice/VoiceManager$1$1;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linekong/voice/VoiceManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linekong/voice/VoiceManager$1;


# direct methods
.method constructor <init>(Lcom/linekong/voice/VoiceManager$1;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 36
    const-string v1, "VoiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv handle message!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v4

    .line 42
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$300(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$300(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$RecordListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/linekong/voice/VoiceManager$RecordListener;->onRecordStart()V

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mPlayerListener:Lcom/linekong/voice/VoiceManager$PlayerListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$100(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$PlayerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mPlayerListener:Lcom/linekong/voice/VoiceManager$PlayerListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$100(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$PlayerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/linekong/voice/VoiceManager$PlayerListener;->onPlayerStart()V

    goto :goto_0

    .line 50
    :pswitch_3
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    iget-boolean v1, v1, Lcom/linekong/voice/VoiceManager;->mNeedPlay:Z

    if-eqz v1, :cond_3

    .line 51
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$200(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/io/PlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linekong/voice/io/PlayerClient;->start()V

    .line 52
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$200(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/io/PlayerClient;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    iput-boolean v4, v1, Lcom/linekong/voice/VoiceManager;->mNeedPlay:Z

    .line 61
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mPlayerListener:Lcom/linekong/voice/VoiceManager$PlayerListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$100(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$PlayerListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/linekong/voice/VoiceManager$PlayerListener;->onPlayerFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$200(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/io/PlayerClient;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # setter for: Lcom/linekong/voice/VoiceManager;->mCurrentPlayer:Lcom/linekong/voice/io/PlayerClient;
    invoke-static {v1, v5}, Lcom/linekong/voice/VoiceManager;->access$202(Lcom/linekong/voice/VoiceManager;Lcom/linekong/voice/io/PlayerClient;)Lcom/linekong/voice/io/PlayerClient;

    goto :goto_1

    .line 71
    :pswitch_4
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$400(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/io/PcmRecorder;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 72
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # setter for: Lcom/linekong/voice/VoiceManager;->mCurrentRecorder:Lcom/linekong/voice/io/PcmRecorder;
    invoke-static {v1, v5}, Lcom/linekong/voice/VoiceManager;->access$402(Lcom/linekong/voice/VoiceManager;Lcom/linekong/voice/io/PcmRecorder;)Lcom/linekong/voice/io/PcmRecorder;

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$300(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_5

    .line 77
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$300(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$RecordListener;

    move-result-object v1

    const-string v2, ""

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/linekong/voice/VoiceManager$RecordListener;->onRecordFinish(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$300(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$RecordListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v1, v3}, Lcom/linekong/voice/VoiceManager$RecordListener;->onRecordFinish(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 85
    :pswitch_5
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$300(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$RecordListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mRecordListener:Lcom/linekong/voice/VoiceManager$RecordListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$300(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$RecordListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v1, v3}, Lcom/linekong/voice/VoiceManager$RecordListener;->onUploadFinish(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 91
    :pswitch_6
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mPlayerListener:Lcom/linekong/voice/VoiceManager$PlayerListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$100(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$PlayerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/linekong/voice/VoiceManager$1$1;->this$1:Lcom/linekong/voice/VoiceManager$1;

    iget-object v1, v1, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mPlayerListener:Lcom/linekong/voice/VoiceManager$PlayerListener;
    invoke-static {v1}, Lcom/linekong/voice/VoiceManager;->access$100(Lcom/linekong/voice/VoiceManager;)Lcom/linekong/voice/VoiceManager$PlayerListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v1, v3}, Lcom/linekong/voice/VoiceManager$PlayerListener;->onPlayerStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
