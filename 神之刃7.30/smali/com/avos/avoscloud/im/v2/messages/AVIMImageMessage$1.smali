.class Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMImageMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$meta:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 114
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 101
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 102
    .local v1, "response":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    const-string v3, "format"

    const-string v4, "format"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    const-string v3, "height"

    const-string v4, "height"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    const-string v3, "width"

    const-string v4, "width"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "response":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e1":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v3, Lcom/avos/avoscloud/AVException;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
