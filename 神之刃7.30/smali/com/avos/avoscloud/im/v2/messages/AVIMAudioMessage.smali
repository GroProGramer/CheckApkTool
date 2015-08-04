.class public Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;
.super Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;
.source "AVIMAudioMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x3
.end annotation


# instance fields
.field localFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVFile;)V
    .locals 0
    .param p1, "file"    # Lcom/avos/avoscloud/AVFile;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "localFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->localFile:Ljava/io/File;

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;-><init>(Ljava/io/File;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->localFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 77
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getDirectlyClientForUse()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    .line 78
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?avinfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avos/avoscloud/GetHttpResponseHandler;

    new-instance v4, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-direct {v3, v4}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 105
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public getDuration()D
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    .line 68
    .local v0, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 69
    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 71
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getFileMetaData()Ljava/util/Map;
    .locals 3
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
    .line 46
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->file:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->file:Ljava/util/Map;

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->file:Ljava/util/Map;

    const-string v2, "metaData"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->file:Ljava/util/Map;

    const-string v2, "metaData"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 58
    :goto_0
    return-object v1

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->localFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->localFile:Ljava/io/File;

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessageAccessor;->mediaInfo(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 54
    .local v0, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "size"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->file:Ljava/util/Map;

    const-string v2, "metaData"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 56
    goto :goto_0

    .line 58
    .end local v0    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
