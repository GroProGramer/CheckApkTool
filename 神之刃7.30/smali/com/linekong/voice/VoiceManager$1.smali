.class Lcom/linekong/voice/VoiceManager$1;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linekong/voice/VoiceManager;-><init>(Landroid/content/Context;)V
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
    .line 26
    iput-object p1, p0, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 32
    iget-object v0, p0, Lcom/linekong/voice/VoiceManager$1;->this$0:Lcom/linekong/voice/VoiceManager;

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/linekong/voice/VoiceManager$1$1;

    invoke-direct {v2, p0}, Lcom/linekong/voice/VoiceManager$1$1;-><init>(Lcom/linekong/voice/VoiceManager$1;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    # setter for: Lcom/linekong/voice/VoiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/linekong/voice/VoiceManager;->access$002(Lcom/linekong/voice/VoiceManager;Landroid/os/Handler;)Landroid/os/Handler;

    .line 99
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 100
    const-string v0, "VoiceManager"

    const-string v1, "Loop thread exit!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
