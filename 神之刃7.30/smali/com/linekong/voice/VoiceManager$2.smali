.class Lcom/linekong/voice/VoiceManager$2;
.super Ljava/util/TimerTask;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linekong/voice/VoiceManager;->startRecord(Lcom/linekong/voice/VoiceManager$RecordListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linekong/voice/VoiceManager;


# direct methods
.method constructor <init>(Lcom/linekong/voice/VoiceManager;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager$2;->this$0:Lcom/linekong/voice/VoiceManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    # getter for: Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->access$500()Lcom/linekong/voice/VoiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    # getter for: Lcom/linekong/voice/VoiceManager;->_instance:Lcom/linekong/voice/VoiceManager;
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->access$500()Lcom/linekong/voice/VoiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linekong/voice/VoiceManager;->stopRecord()V

    .line 249
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager$2;->this$0:Lcom/linekong/voice/VoiceManager;

    const/4 v1, 0x0

    # setter for: Lcom/linekong/voice/VoiceManager;->mTimeoutTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/linekong/voice/VoiceManager;->access$602(Lcom/linekong/voice/VoiceManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 251
    :cond_0
    return-void
.end method
