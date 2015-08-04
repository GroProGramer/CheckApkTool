.class public Lcom/linekong/voice/util/Params;
.super Ljava/lang/Object;
.source "Params.java"


# static fields
.field public static final DOWNLOAD_FINISH:I = 0x10

.field public static final PLAY_BY_FILE:I = 0x6

.field public static final PLAY_BY_NET:I = 0x5

.field public static final PLAY_FINISH:I = 0x8

.field public static final PLAY_START:I = 0x7

.field public static final RECORD_FINISH:I = 0x4

.field public static final RECORD_ID:I = 0x1

.field public static final RECORD_START:I = 0x3

.field public static final UPLOAD_FINISH:I = 0x9

.field public static final mFormat:I = 0x2

.field public static final mFrequency:I = 0x1f40

.field public static mGameID:Ljava/lang/String;

.field public static mServerUrl:Ljava/lang/String;

.field public static mUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "unknown"

    sput-object v0, Lcom/linekong/voice/util/Params;->mGameID:Ljava/lang/String;

    .line 7
    const-string v0, "unknown"

    sput-object v0, Lcom/linekong/voice/util/Params;->mUserID:Ljava/lang/String;

    .line 8
    const-string v0, "http://img.linekong.com"

    sput-object v0, Lcom/linekong/voice/util/Params;->mServerUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/linekong/voice/util/Params;->mServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/acceptVoice/index.php?act=sendVoice&file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fetchUploadUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/linekong/voice/util/Params;->mServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/acceptVoice/index.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
