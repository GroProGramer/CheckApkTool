.class Lcom/avos/avoscloud/QiniuUploader;
.super Lcom/avos/avoscloud/HttpClientUploader;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;,
        Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x400000

.field private static final DEFAULT_RETRY_TIMES:I = 0x6

.field private static final NONWIFI_CHUNK_SIZE:I = 0x10000

.field private static final PROGRESS_COMPLETE:I = 0x64

.field private static final PROGRESS_GET_TOKEN:I = 0xa

.field private static final PROGRESS_UPLOAD_FILE:I = 0x5a

.field private static final QINIU_BRICK_UPLOAD_EP:Ljava/lang/String; = "http://upload.qiniu.com/bput/%s/%d"

.field private static final QINIU_CREATE_BLOCK_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkblk/%d"

.field private static final QINIU_HOST:Ljava/lang/String; = "http://upload.qiniu.com"

.field private static final QINIU_MKFILE_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkfile/%d/key/%s"

.field private static final WIFI_CHUNK_SIZE:I = 0x40000


# instance fields
.field private blockCount:I

.field private bucket:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field uploadChunkSize:I

.field private uploadFileCtx:[Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 1
    .param p1, "parseFile"    # Lcom/avos/avoscloud/AVFile;
    .param p2, "saveCallback"    # Lcom/avos/avoscloud/SaveCallback;
    .param p3, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 54
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/QiniuUploader;Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/QiniuUploader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/QiniuUploader;->handleGetBucketResponse(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method private createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .locals 11
    .param p1, "blockOffset"    # I
    .param p2, "blockSize"    # I
    .param p3, "retry"    # I
    .param p4, "data"    # [B

    .prologue
    .line 182
    :try_start_0
    const-string v7, "try to mkblk"

    invoke-static {v7}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 183
    const-string v7, "http://upload.qiniu.com/mkblk/%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "endPoint":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "createBlockRequest":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, p1, p4}, Lcom/avos/avoscloud/QiniuUploader;->getNextChunkSize(I[B)I

    move-result v5

    .line 187
    .local v5, "nextChunkSize":I
    new-instance v4, Lcom/avos/avoscloud/QiniuUploader$1;

    invoke-direct {v4, p0, v5, p4, p1}, Lcom/avos/avoscloud/QiniuUploader$1;-><init>(Lcom/avos/avoscloud/QiniuUploader;I[BI)V

    .line 216
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 217
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/QiniuUploader;->executeRequest(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 218
    .local v1, "createBlockResp":Lorg/apache/http/HttpResponse;
    const-class v7, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    invoke-direct {p0, v1, v7}, Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    .line 229
    .end local v0    # "createBlockRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v1    # "createBlockResp":Lorg/apache/http/HttpResponse;
    .end local v3    # "endPoint":Ljava/lang/String;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "nextChunkSize":I
    :goto_0
    return-object v7

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    add-int/lit8 v6, p3, -0x1

    .end local p3    # "retry":I
    .local v6, "retry":I
    if-lez p3, :cond_0

    .line 222
    :try_start_2
    invoke-direct {p0, p1, p2, v6, p4}, Lcom/avos/avoscloud/QiniuUploader;->createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    .line 227
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    move p3, v6

    .end local v6    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_0

    .line 224
    .end local p3    # "retry":I
    .restart local v6    # "retry":I
    :cond_0
    :try_start_3
    const-string v7, "Exception during file upload"

    invoke-static {v7, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    .line 229
    const/4 v7, 0x0

    move p3, v6

    .end local v6    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_0

    .line 227
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    throw v7

    .end local p3    # "retry":I
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "retry":I
    :catchall_1
    move-exception v7

    move p3, v6

    .end local v6    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_1
.end method

.method private destroyFileObject()V
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    :try_start_0
    const-string v1, "_File"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 462
    .local v0, "fileObject":Lcom/avos/avoscloud/AVObject;
    new-instance v1, Lcom/avos/avoscloud/QiniuUploader$3;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/QiniuUploader$3;-><init>(Lcom/avos/avoscloud/QiniuUploader;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0    # "fileObject":Lcom/avos/avoscloud/AVObject;
    :cond_0
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private executeRequest(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpPost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/QiniuUploader;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentBlockSize([BI)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "blockOffset"    # I

    .prologue
    const/high16 v0, 0x400000

    .line 155
    array-length v1, p1

    mul-int v2, p2, v0

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    mul-int/2addr v0, p2

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getGetBucketParameters()Ljava/lang/String;
    .locals 3

    .prologue
    .line 496
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 497
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "key"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v1, "name"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v1, "metaData"

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v1, "__type"

    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 506
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNextChunkSize(I[B)I
    .locals 3
    .param p1, "blockOffset"    # I
    .param p2, "data"    # [B

    .prologue
    const/high16 v2, 0x400000

    .line 161
    array-length v0, p2

    mul-int v1, p1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    :goto_0
    return v0

    :cond_0
    array-length v0, p2

    mul-int v1, p1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleGetBucketResponse(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)Lcom/avos/avoscloud/AVException;
    .locals 4
    .param p1, "responseStr"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 478
    if-eqz p2, :cond_0

    .line 492
    .end local p2    # "exception":Lcom/avos/avoscloud/AVException;
    :goto_0
    return-object p2

    .line 480
    .restart local p2    # "exception":Lcom/avos/avoscloud/AVException;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "bucket"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->bucket:Ljava/lang/String;

    .line 482
    const-string v2, "objectId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    .line 483
    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    .line 484
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->token:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    new-instance p2, Lcom/avos/avoscloud/AVException;

    .end local p2    # "exception":Lcom/avos/avoscloud/AVException;
    const/4 v2, -0x1

    const-string v3, "No token return for qiniu upload"

    invoke-direct {p2, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Lorg/json/JSONException;
    new-instance p2, Lcom/avos/avoscloud/AVException;

    invoke-direct {p2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 487
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local p2    # "exception":Lcom/avos/avoscloud/AVException;
    :cond_1
    :try_start_1
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->url:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 492
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;
    .locals 12
    .param p1, "dataSize"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    const-string v8, "http://upload.qiniu.com/mkfile/%d/key/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "endPoint":Ljava/lang/String;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 310
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    invoke-static {v4, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 311
    const-string v8, ","

    invoke-static {v4, v8}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "joinedFileCtx":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 314
    .local v5, "putRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v5, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 316
    invoke-direct {p0, v5}, Lcom/avos/avoscloud/QiniuUploader;->executeRequest(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 317
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const-class v8, Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;

    invoke-direct {p0, v6, v8}, Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    .line 327
    .end local v1    # "endPoint":Ljava/lang/String;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "joinedFileCtx":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "putRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v8

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v7, p3, -0x1

    .end local p3    # "retry":I
    .local v7, "retry":I
    if-lez p3, :cond_0

    .line 320
    :try_start_1
    invoke-direct {p0, p1, p2, v7}, Lcom/avos/avoscloud/QiniuUploader;->makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 325
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    move p3, v7

    .end local v7    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_0

    .line 322
    .end local p3    # "retry":I
    .restart local v7    # "retry":I
    :cond_0
    :try_start_2
    const-string v8, "Exception during file upload"

    invoke-static {v8, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    .line 327
    const/4 v8, 0x0

    move p3, v7

    .end local v7    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_0

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    throw v8

    .end local p3    # "retry":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "retry":I
    :catchall_1
    move-exception v8

    move p3, v7

    .end local v7    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_1
.end method

.method private parseFileKey()V
    .locals 4

    .prologue
    .line 78
    const/16 v2, 0x28

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "idx":I
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 84
    :cond_0
    if-lez v0, :cond_1

    .line 85
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "postFix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    .line 88
    .end local v1    # "postFix":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private parseQiniuResponse(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .param p1, "resp"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 332
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 333
    .local v0, "code":I
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "phrase":Ljava/lang/String;
    const-string v6, "X-Log"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 336
    .local v2, "h":Lorg/apache/http/Header;
    if-nez v2, :cond_0

    const-string v5, ""

    .line 338
    .local v5, "xl":Ljava/lang/String;
    :goto_0
    const/16 v6, 0x191

    if-ne v0, v6, :cond_1

    .line 339
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "unauthorized to create Qiniu Block"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    .end local v5    # "xl":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 341
    .restart local v5    # "xl":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "responseData":Ljava/lang/String;
    :try_start_0
    div-int/lit8 v6, v0, 0x64

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 344
    invoke-static {v4, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 350
    .local v1, "data":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 352
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 355
    :cond_2
    :goto_1
    return-object v1

    .line 350
    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    :cond_3
    if-nez v4, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 352
    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 359
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 360
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 347
    :catch_0
    move-exception v6

    .line 350
    if-nez v4, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 352
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 353
    :catch_1
    move-exception v6

    goto :goto_2

    .line 350
    :catchall_0
    move-exception v6

    if-nez v4, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 352
    :try_start_4
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 355
    :cond_5
    :goto_3
    throw v6

    .line 362
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 363
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 365
    :cond_7
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 353
    :catch_2
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v6

    goto :goto_2

    .restart local v1    # "data":Ljava/lang/Object;, "TT;"
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method private putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .locals 20
    .param p1, "blockOffset"    # I
    .param p2, "data"    # [B
    .param p3, "lastChunk"    # Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .param p4, "retry"    # I

    .prologue
    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/QiniuUploader;->getCurrentBlockSize([BI)I

    move-result v11

    .line 235
    .local v11, "currentBlockLength":I
    const/high16 v6, 0x400000

    mul-int v6, v6, p1

    move-object/from16 v0, p3

    iget v8, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    add-int/2addr v6, v8

    mul-int/lit8 v6, v6, 0x50

    move-object/from16 v0, p2

    array-length v8, v0

    div-int/2addr v6, v8

    add-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V

    .line 237
    move-object/from16 v0, p3

    iget v6, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    sub-int v15, v11, v6

    .line 239
    .local v15, "remainingBlockLength":I
    if-lez v15, :cond_4

    move-object/from16 v0, p3

    iget v6, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    if-lez v6, :cond_4

    .line 241
    :try_start_0
    const-string v6, "http://upload.qiniu.com/bput/%s/%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p3

    iget v0, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 242
    .local v13, "endPoint":Ljava/lang/String;
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v14, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 243
    .local v14, "putRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "Content-Type"

    const-string v8, "application/octet-stream"

    invoke-virtual {v14, v6, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object/from16 v10, p3

    .line 245
    .local v10, "chunkData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    if-le v15, v6, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    .line 248
    .local v7, "nextChunkSize":I
    :goto_0
    new-instance v5, Lcom/avos/avoscloud/QiniuUploader$2;

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/avos/avoscloud/QiniuUploader$2;-><init>(Lcom/avos/avoscloud/QiniuUploader;I[BILcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;)V

    .line 278
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v14, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 279
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/avos/avoscloud/QiniuUploader;->executeRequest(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 280
    .local v17, "response":Lorg/apache/http/HttpResponse;
    const-class v6, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    .line 282
    .local v16, "respData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    if-eqz v16, :cond_2

    .line 283
    move-object/from16 v0, v16

    iget v6, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    if-ge v6, v11, :cond_1

    .line 284
    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/avos/avoscloud/QiniuUploader;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 297
    .end local v16    # "respData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    .line 303
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "nextChunkSize":I
    .end local v10    # "chunkData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .end local v13    # "endPoint":Ljava/lang/String;
    .end local v14    # "putRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v16

    .restart local v10    # "chunkData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .restart local v13    # "endPoint":Ljava/lang/String;
    .restart local v14    # "putRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    move v7, v15

    .line 245
    goto :goto_0

    .line 297
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "nextChunkSize":I
    .restart local v16    # "respData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    .line 303
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "nextChunkSize":I
    .end local v10    # "chunkData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .end local v13    # "endPoint":Ljava/lang/String;
    .end local v14    # "putRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v16    # "respData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    const/16 v16, 0x0

    goto :goto_1

    .line 289
    :catch_0
    move-exception v12

    .line 290
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    add-int/lit8 v18, p4, -0x1

    .end local p4    # "retry":I
    .local v18, "retry":I
    if-lez p4, :cond_3

    .line 292
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/QiniuUploader;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v16

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    move/from16 p4, v18

    .end local v18    # "retry":I
    .restart local p4    # "retry":I
    goto :goto_1

    .line 294
    .end local p4    # "retry":I
    .restart local v18    # "retry":I
    :cond_3
    :try_start_3
    const-string v6, "Exception during file upload"

    invoke-static {v6, v12}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    move/from16 p4, v18

    .line 298
    .end local v18    # "retry":I
    .restart local p4    # "retry":I
    goto :goto_2

    .line 297
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    throw v6

    :cond_4
    move-object/from16 v16, p3

    .line 301
    goto :goto_1

    .line 297
    .end local p4    # "retry":I
    .restart local v12    # "e":Ljava/lang/Exception;
    .restart local v18    # "retry":I
    :catchall_1
    move-exception v6

    move/from16 p4, v18

    .end local v18    # "retry":I
    .restart local p4    # "retry":I
    goto :goto_3
.end method

.method private uploadWithBlocks()Lcom/avos/avoscloud/AVException;
    .locals 11

    .prologue
    .line 100
    :try_start_0
    iget-object v7, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v7}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v1

    .line 101
    .local v1, "bytes":[B
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->fetchUploadBucket()Lcom/avos/avoscloud/AVException;

    move-result-object v4

    .line 102
    .local v4, "getBucketException":Lcom/avos/avoscloud/AVException;
    if-eqz v4, :cond_0

    .line 151
    .end local v1    # "bytes":[B
    .end local v4    # "getBucketException":Lcom/avos/avoscloud/AVException;
    :goto_0
    return-object v4

    .line 105
    .restart local v1    # "bytes":[B
    .restart local v4    # "getBucketException":Lcom/avos/avoscloud/AVException;
    :cond_0
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V

    .line 106
    array-length v7, v1

    const/high16 v8, 0x400000

    div-int v8, v7, v8

    array-length v7, v1

    const/high16 v9, 0x400000

    rem-int/2addr v7, v9

    if-lez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    add-int/2addr v7, v8

    iput v7, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    .line 107
    iget v7, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    .line 109
    const/4 v6, 0x0

    .line 110
    .local v6, "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    const/4 v0, 0x0

    .local v0, "blockOffset":I
    :goto_2
    iget v7, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    if-ge v0, v7, :cond_4

    .line 112
    invoke-direct {p0, v1, v0}, Lcom/avos/avoscloud/QiniuUploader;->getCurrentBlockSize([BI)I

    move-result v2

    .line 114
    .local v2, "currentBlockSize":I
    const/4 v7, 0x6

    invoke-direct {p0, v0, v2, v7, v1}, Lcom/avos/avoscloud/QiniuUploader;->createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_1

    .line 118
    const/4 v7, 0x6

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/avos/avoscloud/QiniuUploader;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v6

    .line 120
    if-eqz v6, :cond_3

    .line 121
    iget-object v7, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    iget-object v8, v6, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    aput-object v8, v7, v0

    .line 125
    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v7, v7, 0x50

    iget v8, p0, Lcom/avos/avoscloud/QiniuUploader;->blockCount:I

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0xa

    invoke-virtual {p0, v7}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 106
    .end local v0    # "blockOffset":I
    .end local v2    # "currentBlockSize":I
    .end local v6    # "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 123
    .restart local v0    # "blockOffset":I
    .restart local v2    # "currentBlockSize":I
    .restart local v6    # "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :cond_3
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Upload File failure"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0    # "blockOffset":I
    .end local v1    # "bytes":[B
    .end local v2    # "currentBlockSize":I
    .end local v4    # "getBucketException":Lcom/avos/avoscloud/AVException;
    .end local v6    # "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 148
    new-instance v4, Lcom/avos/avoscloud/AVException;

    invoke-direct {v4, v3}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "blockOffset":I
    .restart local v1    # "bytes":[B
    .restart local v4    # "getBucketException":Lcom/avos/avoscloud/AVException;
    .restart local v6    # "respBlockData":Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :cond_4
    const/4 v5, 0x0

    .line 131
    .local v5, "mkfileResp":Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;
    if-eqz v6, :cond_5

    .line 132
    :try_start_1
    array-length v7, v1

    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    const/4 v9, 0x6

    invoke-direct {p0, v7, v8, v9}, Lcom/avos/avoscloud/QiniuUploader;->makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;

    move-result-object v5

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_8

    .line 137
    if-eqz v5, :cond_6

    iget-object v7, v5, Lcom/avos/avoscloud/QiniuUploader$QiniuMKFileResponseData;->key:Ljava/lang/String;

    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 138
    :cond_6
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 139
    const/4 v7, -0x1

    const-string v8, "upload file failure"

    invoke-static {v7, v8}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v4

    goto/16 :goto_0

    .line 141
    :cond_7
    iget-object v7, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    iget-object v8, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    iget-object v9, p0, Lcom/avos/avoscloud/QiniuUploader;->objectId:Ljava/lang/String;

    iget-object v10, p0, Lcom/avos/avoscloud/QiniuUploader;->url:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/avos/avoscloud/AVFile;->handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Lcom/avos/avoscloud/QiniuUploader;->publishProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    :cond_8
    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->closeExpiredConnections()V

    .line 151
    const/4 v4, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method doWork()Lcom/avos/avoscloud/AVException;
    .locals 5

    .prologue
    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->parseFileKey()V

    .line 60
    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isWifi(Landroid/content/Context;)Z

    move-result v2

    .line 61
    .local v2, "isWifi":Z
    if-nez v2, :cond_0

    .line 63
    const/high16 v3, 0x10000

    iput v3, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    .line 65
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploading with chunk size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/avos/avoscloud/QiniuUploader;->uploadChunkSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v0

    .line 71
    .local v0, "bytes":[B
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->uploadWithBlocks()Lcom/avos/avoscloud/AVException;
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    .end local v0    # "bytes":[B
    .end local v2    # "isWifi":Z
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lcom/avos/avoscloud/AVException;
    goto :goto_0
.end method

.method protected fetchUploadBucket()Lcom/avos/avoscloud/AVException;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 515
    new-array v0, v6, [Lcom/avos/avoscloud/AVException;

    .line 516
    .local v0, "exceptionWhenGetBucket":[Lcom/avos/avoscloud/AVException;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/QiniuUploader;->getUploadPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->getGetBucketParameters()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avos/avoscloud/QiniuUploader$4;

    invoke-direct {v4, p0, v0}, Lcom/avos/avoscloud/QiniuUploader$4;-><init>(Lcom/avos/avoscloud/QiniuUploader;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 528
    aget-object v1, v0, v5

    if-eqz v1, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/avos/avoscloud/QiniuUploader;->destroyFileObject()V

    .line 530
    aget-object v1, v0, v5

    .line 532
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getUploadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const-string v0, "qiniu"

    return-object v0
.end method
