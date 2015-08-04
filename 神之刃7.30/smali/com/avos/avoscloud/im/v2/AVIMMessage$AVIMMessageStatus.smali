.class public final enum Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
.super Ljava/lang/Enum;
.source "AVIMMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVIMMessageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field public static final enum AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;


# instance fields
.field statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const-string v1, "AVIMMessageStatusNone"

    invoke-direct {v0, v1, v2, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const-string v1, "AVIMMessageStatusSending"

    invoke-direct {v0, v1, v3, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const-string v1, "AVIMMessageStatusSent"

    invoke-direct {v0, v1, v4, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 229
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const-string v1, "AVIMMessageStatusReceipt"

    invoke-direct {v0, v1, v5, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    const-string v1, "AVIMMessageStatusFailed"

    invoke-direct {v0, v1, v6, v6}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 227
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->statusCode:I

    .line 234
    return-void
.end method

.method public static getMessageStatus(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    .locals 1
    .param p0, "statusCode"    # I

    .prologue
    .line 241
    packed-switch p0, :pswitch_data_0

    .line 253
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 243
    :pswitch_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    goto :goto_0

    .line 245
    :pswitch_1
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    goto :goto_0

    .line 247
    :pswitch_2
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    goto :goto_0

    .line 249
    :pswitch_3
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    goto :goto_0

    .line 251
    :pswitch_4
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object v0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->statusCode:I

    return v0
.end method
