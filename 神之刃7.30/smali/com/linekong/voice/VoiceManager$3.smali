.class Lcom/linekong/voice/VoiceManager$3;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linekong/voice/VoiceManager;->uploadRecord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linekong/voice/VoiceManager;

.field final synthetic val$recordID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/linekong/voice/VoiceManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager$3;->this$0:Lcom/linekong/voice/VoiceManager;

    iput-object p2, p0, Lcom/linekong/voice/VoiceManager$3;->val$recordID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 353
    iget-object v2, p0, Lcom/linekong/voice/VoiceManager$3;->val$recordID:Ljava/lang/String;

    invoke-static {v2}, Lcom/linekong/voice/util/CacheFile;->doUpload(Ljava/lang/String;)I

    move-result v1

    .line 354
    .local v1, "response":I
    iget-object v2, p0, Lcom/linekong/voice/VoiceManager$3;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/linekong/voice/VoiceManager;->access$000(Lcom/linekong/voice/VoiceManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 356
    iget-object v2, p0, Lcom/linekong/voice/VoiceManager$3;->val$recordID:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    iget-object v2, p0, Lcom/linekong/voice/VoiceManager$3;->this$0:Lcom/linekong/voice/VoiceManager;

    # getter for: Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/linekong/voice/VoiceManager;->access$000(Lcom/linekong/voice/VoiceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    return-void
.end method
