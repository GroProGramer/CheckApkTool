.class public Lcom/avos/avoscloud/im/v2/AVIMMessage;
.super Ljava/lang/Object;
.source "AVIMMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;,
        Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field content:Ljava/lang/String;

.field conversationId:Ljava/lang/String;

.field from:Ljava/lang/String;

.field ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

.field messageId:Ljava/lang/String;

.field receiptTimestamp:J

.field status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 10
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeOut:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setReceiptTimestamp(J)V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getMessageStatus(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->getMessageIOType(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, 0x0

    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "receiptTimestamp"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    .line 21
    iput-wide p3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    .line 22
    iput-wide p5, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->receiptTimestamp:J

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIOType()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object v0
.end method

.method public getReceiptTimestamp()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->receiptTimestamp:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->content:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V
    .locals 0
    .param p1, "ioType"    # Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 142
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 114
    return-void
.end method

.method public setReceiptTimestamp(J)V
    .locals 0
    .param p1, "receiptTimestamp"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->receiptTimestamp:J

    .line 105
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->receiptTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->getIOType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void
.end method
