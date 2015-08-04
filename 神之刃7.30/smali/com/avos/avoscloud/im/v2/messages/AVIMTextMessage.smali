.class public Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.source "AVIMTextMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x1
.end annotation


# instance fields
.field attrs:Ljava/util/Map;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lcattrs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lctext"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttrs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->attrs:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->text:Ljava/lang/String;

    .line 23
    return-void
.end method
