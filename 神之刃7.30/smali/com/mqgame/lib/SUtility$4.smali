.class final Lcom/mqgame/lib/SUtility$4;
.super Ljava/lang/Object;
.source "SUtility.java"

# interfaces
.implements Lcom/linekong/voice/VoiceManager$RecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SUtility;->voiceStartRecord(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordFinish(Ljava/lang/String;I)V
    .locals 6
    .param p1, "recordID"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 2193
    const-string v2, "OnRecordEvent.RecFinish(\'%s\',%d,%d)"

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->excFromUIThread(Ljava/lang/String;)V

    .line 2194
    return-void

    :cond_0
    move v0, v1

    .line 2193
    goto :goto_0
.end method

.method public onRecordStart()V
    .locals 0

    .prologue
    .line 2191
    return-void
.end method

.method public onUploadFinish(Ljava/lang/String;I)V
    .locals 5
    .param p1, "recordID"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2196
    const-string v3, "OnRecordEvent.RecFinish(\'%s\',%d,%d)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v2

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->excFromUIThread(Ljava/lang/String;)V

    .line 2197
    return-void

    :cond_0
    move v0, v2

    .line 2196
    goto :goto_0
.end method
