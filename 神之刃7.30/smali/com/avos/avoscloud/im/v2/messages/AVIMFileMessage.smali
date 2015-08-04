.class public Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.source "AVIMFileMessage.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    type = -0x6
.end annotation


# static fields
.field static final DURATION:Ljava/lang/String; = "duration"

.field static final FILE_META:Ljava/lang/String; = "metaData"

.field static final FILE_SIZE:Ljava/lang/String; = "size"

.field static final FILE_URL:Ljava/lang/String; = "url"

.field static final FORMAT:Ljava/lang/String; = "format"

.field static final OBJECT_ID:Ljava/lang/String; = "objId"


# instance fields
.field actualFile:Lcom/avos/avoscloud/AVFile;

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

.field protected file:Ljava/util/Map;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lcfile"
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

.field progressCallback:Lcom/avos/avoscloud/ProgressCallback;

.field text:Ljava/lang/String;
    .annotation runtime Lcom/avos/avoscloud/im/v2/AVIMMessageField;
        name = "_lctext"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVFile;)V
    .locals 0
    .param p1, "file"    # Lcom/avos/avoscloud/AVFile;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 52
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
    .line 46
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;-><init>()V

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 48
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
    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;-><init>(Ljava/io/File;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected fulFillFileInfo(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFile()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 177
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v2, "objId"

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVFile;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v2, "url"

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v0, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    const-string v1, "size"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const-string v1, "size"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$2;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V

    .line 195
    .end local v0    # "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFile()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    goto :goto_1
.end method

.method public getAVFile()Lcom/avos/avoscloud/AVFile;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v2, :cond_1

    .line 65
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v4, "url"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "avfileMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v4, "metaData"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v4, "metaData"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "avfileMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v1, Ljava/util/Map;

    .line 71
    .restart local v1    # "avfileMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Lcom/avos/avoscloud/AVFile;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v4, "url"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v1}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    .local v0, "avfile":Lcom/avos/avoscloud/AVFile;
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v3, "objId"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v3, "objId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVFile;->setObjectId(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "avfile":Lcom/avos/avoscloud/AVFile;
    .end local v1    # "avfileMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    move-object v0, v3

    .line 77
    goto :goto_0
.end method

.method protected getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
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
    .line 198
    .local p1, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 199
    return-void
.end method

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
    .line 165
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getFile()Ljava/util/Map;
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
    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    return-object v0
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
    .line 106
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v2, "metaData"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "size"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_0
    return-object v0

    .line 114
    .end local v0    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v2, "metaData"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .restart local v0    # "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()J
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->getFileMetaData()Ljava/util/Map;

    move-result-object v0

    .line 126
    .local v0, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 127
    const-string v1, "size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 129
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->text:Ljava/lang/String;

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
    .line 169
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->attrs:Ljava/util/Map;

    .line 170
    return-void
.end method

.method protected setFile(Ljava/util/Map;)V
    .locals 4
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
    .line 81
    .local p1, "file":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->file:Ljava/util/Map;

    .line 82
    const-string v1, "metaData"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 83
    .local v0, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/avos/avoscloud/AVFile;

    const/4 v3, 0x0

    const-string v1, "url"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    .line 84
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    const-string v1, "objId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/AVFile;->setObjectId(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setProgressCallback(Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/avos/avoscloud/ProgressCallback;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    .line 154
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->text:Ljava/lang/String;

    .line 162
    return-void
.end method

.method protected upload(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->actualFile:Lcom/avos/avoscloud/AVFile;

    new-instance v1, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;-><init>(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Lcom/avos/avoscloud/SaveCallback;)V

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->fulFillFileInfo(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method
