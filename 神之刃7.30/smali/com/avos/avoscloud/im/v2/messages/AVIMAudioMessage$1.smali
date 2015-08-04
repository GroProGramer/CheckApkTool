.class Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMAudioMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;->getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$meta:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;->val$meta:Ljava/util/Map;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 100
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 83
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 84
    .local v4, "response":Lcom/alibaba/fastjson/JSONObject;
    const-string v7, "format"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 85
    .local v3, "formatInfo":Lcom/alibaba/fastjson/JSONObject;
    const-string v7, "format_name"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "fileFormat":Ljava/lang/String;
    const-string v7, "duration"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 87
    .local v0, "durationInDouble":Ljava/lang/Double;
    const-string v7, "size"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 88
    .local v5, "size":J
    iget-object v7, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;->val$meta:Ljava/util/Map;

    const-string v8, "size"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v7, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;->val$meta:Ljava/util/Map;

    const-string v8, "duration"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v7, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;->val$meta:Ljava/util/Map;

    const-string v8, "format"

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "durationInDouble":Ljava/lang/Double;
    .end local v2    # "fileFormat":Ljava/lang/String;
    .end local v3    # "formatInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "response":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "size":J
    :goto_0
    iget-object v7, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 95
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e1":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v8, Lcom/avos/avoscloud/AVException;

    invoke-direct {v8, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
