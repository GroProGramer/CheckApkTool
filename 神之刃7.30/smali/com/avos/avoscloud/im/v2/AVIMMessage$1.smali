.class final Lcom/avos/avoscloud/im/v2/AVIMMessage$1;
.super Ljava/lang/Object;
.source "AVIMMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 210
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Landroid/os/Parcel;)V

    .line 211
    .local v0, "message":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 217
    new-array v0, p1, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage$1;->newArray(I)[Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    return-object v0
.end method
