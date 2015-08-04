.class public final enum Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
.super Ljava/lang/Enum;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVIMOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

.field public static final enum CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;


# instance fields
.field private final code:I

.field private final header:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_CREATION"

    const v2, 0x9c40

    const-string v3, "com.avoscloud.v2.im.conversation.creation."

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 32
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_ADD_MEMBER"

    const v2, 0x9c41

    const-string v3, "com.avoscloud.v2.im.conversation.members."

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 33
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_RM_MEMBER"

    const v2, 0x9c42

    const-string v3, "com.avoscloud.v2.im.conversation.members."

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 34
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_JOIN"

    const v2, 0x9c43

    const-string v3, "com.avoscloud.v2.im.conversation.join."

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 35
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_QUIT"

    const v2, 0x9c44

    const-string v3, "com.avoscloud.v2.im.conversation.quit."

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 36
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_SEND_MESSAGE"

    const/4 v2, 0x5

    const v3, 0x9c45

    const-string v4, "com.avoscloud.v2.im.conversation.message."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 37
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CLIENT_OPEN"

    const/4 v2, 0x6

    const v3, 0x9c46

    const-string v4, "com.avoscloud.v2.im.client.initialize."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 38
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CLIENT_DISCONNECT"

    const/4 v2, 0x7

    const v3, 0x9c47

    const-string v4, "com.avoscloud.v2.im.client.quit."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 39
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_QUERY"

    const/16 v2, 0x8

    const v3, 0x9c48

    const-string v4, "com.avoscloud.v2.im.conversation.query."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 40
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_UPDATE"

    const/16 v2, 0x9

    const v3, 0x9c49

    const-string v4, "com.avoscloud.v2.im.conversation.update."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 41
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_MESSAGE_QUERY"

    const/16 v2, 0xa

    const v3, 0x9c4a

    const-string v4, "com.avoscloud.v2.im.conversation.message.query."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 42
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_MUTE"

    const/16 v2, 0xb

    const v3, 0x9c4b

    const-string v4, "com.avoscloud.v2.im.conversation.mute."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 43
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_UNMUTE"

    const/16 v2, 0xc

    const v3, 0x9c4c

    const-string v4, "com.avoscloud.v2.im.conversation.unmute"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 44
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CONVERSATION_MEMBER_COUNT_QUERY"

    const/16 v2, 0xd

    const v3, 0x9c4d

    const-string v4, "com.avoscloud.v2.im.conversation.membercount."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 45
    new-instance v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v1, "CLIENT_ONLINE_QUERY"

    const/16 v2, 0xe

    const v3, 0x9c4e

    const-string v4, "com.avoscloud.v2.im.client.onlineQuery."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    .line 30
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->$VALUES:[Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "operationCode"    # I
    .param p4, "operationHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->code:I

    .line 52
    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->header:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 64
    packed-switch p0, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 68
    :pswitch_1
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 70
    :pswitch_2
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 72
    :pswitch_3
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 74
    :pswitch_4
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 76
    :pswitch_5
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 78
    :pswitch_6
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 80
    :pswitch_7
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 82
    :pswitch_8
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 84
    :pswitch_9
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 86
    :pswitch_a
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 88
    :pswitch_b
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 90
    :pswitch_c
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 92
    :pswitch_d
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 94
    :pswitch_e
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x9c40
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->$VALUES:[Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->code:I

    return v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->header:Ljava/lang/String;

    return-object v0
.end method
