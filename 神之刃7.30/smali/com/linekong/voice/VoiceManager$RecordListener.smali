.class public interface abstract Lcom/linekong/voice/VoiceManager$RecordListener;
.super Ljava/lang/Object;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linekong/voice/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordListener"
.end annotation


# virtual methods
.method public abstract onRecordFinish(Ljava/lang/String;I)V
.end method

.method public abstract onRecordStart()V
.end method

.method public abstract onUploadFinish(Ljava/lang/String;I)V
.end method
