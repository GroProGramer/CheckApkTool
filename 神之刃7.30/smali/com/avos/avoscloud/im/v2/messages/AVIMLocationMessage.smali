.class public Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.source "AVIMLocationMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x5
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

.field location:Lcom/avos/avoscloud/AVGeoPoint;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lcloc"
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
    .line 14
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
    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getLocation()Lcom/avos/avoscloud/AVGeoPoint;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->location:Lcom/avos/avoscloud/AVGeoPoint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->text:Ljava/lang/String;

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
    .line 36
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->attrs:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public setLocation(Lcom/avos/avoscloud/AVGeoPoint;)V
    .locals 0
    .param p1, "location"    # Lcom/avos/avoscloud/AVGeoPoint;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->location:Lcom/avos/avoscloud/AVGeoPoint;

    .line 45
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;->text:Ljava/lang/String;

    .line 29
    return-void
.end method
