.class final Lcom/mqgame/lib/SUtility$5;
.super Ljava/lang/Object;
.source "SUtility.java"

# interfaces
.implements Lcom/linekong/voice/VoiceManager$PlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SUtility;->voiceStartPlay(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerFinish(Ljava/lang/String;)V
    .locals 3
    .param p1, "recordID"    # Ljava/lang/String;

    .prologue
    .line 2236
    const-string v0, "OnRecordEvent.PlayFinish(\'%s\')"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->excFromUIThread(Ljava/lang/String;)V

    .line 2237
    return-void
.end method

.method public onPlayerStart()V
    .locals 0

    .prologue
    .line 2234
    return-void
.end method

.method public onPlayerStatus(Ljava/lang/String;I)V
    .locals 0
    .param p1, "recordID"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 2230
    if-eqz p2, :cond_0

    .line 2231
    invoke-virtual {p0, p1}, Lcom/mqgame/lib/SUtility$5;->onPlayerFinish(Ljava/lang/String;)V

    .line 2232
    :cond_0
    return-void
.end method
