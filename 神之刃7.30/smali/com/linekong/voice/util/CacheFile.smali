.class public Lcom/linekong/voice/util/CacheFile;
.super Ljava/lang/Object;
.source "CacheFile.java"


# static fields
.field public static final DOWNLOAD_FAILED_NETWORD:I = -0x1

.field public static final DOWNLOAD_FAILED_UNKNOWN:I = -0x2

.field public static final DOWNLOAD_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Cache"

.field public static final UPLOAD_FAILED_NETWORK_ERROR:I = -0x1

.field public static final UPLOAD_FAILED_NO_CACHE_FILE:I = -0x2

.field public static final UPLOAD_FAILED_UNKNOWN:I = -0x3

.field public static final UPLOAD_SUCCESS:I

.field private static mDataCacheDir:Ljava/lang/String;

.field private static mDataCacheTmpDir:Ljava/lang/String;

.field private static mExtCacheDir:Ljava/lang/String;

.field private static mExtTmpCacheDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lk/cache/audio/retain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lk/cache/audio/tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    .line 104
    const-string v0, "lk_speech_cache"

    sput-object v0, Lcom/linekong/voice/util/CacheFile;->mDataCacheDir:Ljava/lang/String;

    .line 105
    const-string v0, "lk_speech_tmp_cache"

    sput-object v0, Lcom/linekong/voice/util/CacheFile;->mDataCacheTmpDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 347
    const/4 v6, 0x1

    .line 350
    .local v6, "result":Z
    const/4 v1, 0x0

    .line 352
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 353
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/linekong/voice/VoiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 356
    :cond_0
    if-eqz v1, :cond_2

    .line 357
    sget-object v7, Lcom/linekong/voice/util/CacheFile;->mDataCacheDir:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 358
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 359
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 360
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    sget-object v7, Lcom/linekong/voice/util/CacheFile;->mDataCacheTmpDir:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 365
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 366
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 367
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 366
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 373
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    new-instance v2, Ljava/io/File;

    sget-object v7, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v2    # "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 376
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 375
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 380
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    new-instance v2, Ljava/io/File;

    .end local v2    # "dir":Ljava/io/File;
    sget-object v7, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .restart local v2    # "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v3, v0, v4

    .line 383
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 382
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 387
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_4
    return v6
.end method

.method public static clearRecord(Ljava/lang/String;I)V
    .locals 5
    .param p0, "audioId"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 321
    sget-object v2, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    .line 322
    .local v2, "dirName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 323
    .local v3, "file":Ljava/io/File;
    if-nez p1, :cond_0

    .line 324
    sget-object v2, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    .line 325
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 331
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linekong/voice/VoiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 333
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lcom/linekong/voice/util/CacheFile;->mDataCacheDir:Ljava/lang/String;

    .line 334
    if-nez p1, :cond_2

    .line 335
    sget-object v2, Lcom/linekong/voice/util/CacheFile;->mDataCacheTmpDir:Ljava/lang/String;

    .line 338
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 339
    .local v1, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static clearTmpCache()V
    .locals 8

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 298
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 299
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/linekong/voice/VoiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 303
    :cond_0
    if-eqz v1, :cond_1

    .line 304
    sget-object v6, Lcom/linekong/voice/util/CacheFile;->mDataCacheTmpDir:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 305
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 307
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 306
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .restart local v2    # "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 314
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 315
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method public static deleteCacheFile(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v3, 0x1

    .line 266
    .local v3, "result":Z
    const/4 v0, 0x0

    .line 267
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 268
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linekong/voice/VoiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    :cond_0
    const/4 v2, 0x0

    .line 272
    .local v2, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 273
    sget-object v4, Lcom/linekong/voice/util/CacheFile;->mDataCacheDir:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 274
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 278
    .end local v1    # "dir":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v4, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    invoke-direct {v2, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 283
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v4, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    invoke-direct {v2, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 288
    :cond_3
    return v3
.end method

.method public static doDownload(Ljava/lang/String;I)I
    .locals 9
    .param p0, "audioID"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 76
    invoke-static {p0}, Lcom/linekong/voice/util/Params;->fetchDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "downloadUrl":Ljava/lang/String;
    const/4 v5, 0x0

    .line 79
    .local v5, "response":I
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v6, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 83
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 84
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 85
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {p0, p1}, Lcom/linekong/voice/util/CacheFile;->openCacheWriteStream(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 99
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return v5

    .line 87
    .restart local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    const-string v6, "Cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http response is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    const/4 v5, -0x1

    goto :goto_0

    .line 91
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    const/4 v5, -0x2

    .line 93
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, -0x2

    .line 96
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static doUpload(Ljava/lang/String;)I
    .locals 8
    .param p0, "audioID"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/linekong/voice/util/Params;->fetchUploadUrl()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "uploadUrl":Ljava/lang/String;
    invoke-static {p0}, Lcom/linekong/voice/util/CacheFile;->openCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 49
    .local v1, "file":Ljava/io/File;
    const/4 v2, -0x2

    .line 50
    .local v2, "response":I
    if-eqz v1, :cond_0

    .line 53
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v4, v5, p0, v1}, Lcom/linekong/voice/util/FileUpload;->doUpload(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "responseStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 65
    .end local v3    # "responseStr":Ljava/lang/String;
    :goto_0
    const-string v5, "Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upload response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 57
    const/4 v2, -0x3

    .line 64
    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    const/4 v2, -0x3

    .line 64
    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 63
    const/4 v2, -0x3

    goto :goto_0
.end method

.method public static getCacheFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 197
    if-nez p1, :cond_1

    .line 199
    sget-object v0, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    .line 204
    .local v0, "dirName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 209
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 201
    .end local v0    # "dirName":Ljava/lang/String;
    .end local v1    # "folder":Ljava/io/File;
    :cond_1
    sget-object v0, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    .restart local v0    # "dirName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 391
    const-wide/16 v3, 0x0

    .line 393
    .local v3, "size":J
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    invoke-direct {v2, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 424
    :cond_0
    :goto_0
    return-wide v3

    .line 397
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v5, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    invoke-direct {v2, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 399
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_0

    .line 401
    :cond_2
    const/4 v0, 0x0

    .line 403
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 404
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linekong/voice/VoiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    :cond_3
    if-eqz v0, :cond_0

    .line 408
    sget-object v5, Lcom/linekong/voice/util/CacheFile;->mDataCacheDir:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 409
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 411
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_0

    .line 413
    :cond_4
    sget-object v5, Lcom/linekong/voice/util/CacheFile;->mDataCacheTmpDir:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 414
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 416
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lk/cache/audio/retain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lk/cache/audio/tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 117
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    sget-object v1, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v0    # "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_1
    invoke-static {}, Lcom/linekong/voice/util/CacheFile;->clearTmpCache()V

    .line 123
    return-void
.end method

.method public static openCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 129
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linekong/voice/VoiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    .line 134
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v3, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    sget-object v3, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    sget-object v3, Lcom/linekong/voice/util/CacheFile;->mDataCacheDir:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 139
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    sget-object v3, Lcom/linekong/voice/util/CacheFile;->mDataCacheTmpDir:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    const/4 v2, 0x0

    .line 152
    .end local v1    # "dir":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public static openCacheReadStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v6, 0x0

    .line 157
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 159
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 160
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/linekong/voice/VoiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    :cond_0
    const/4 v4, 0x0

    .line 164
    .local v4, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 166
    :try_start_0
    new-instance v5, Ljava/io/File;

    sget-object v8, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    invoke-direct {v5, v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 168
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :goto_0
    move-object v4, v5

    .line 191
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v6

    .line 170
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_2
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    invoke-direct {v8, v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 172
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v5, v4

    .line 174
    .end local v4    # "file":Ljava/io/File;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    :goto_2
    const-string v8, "Cache"

    const-string v9, "Not found cache file in SD card!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :try_start_2
    sget-object v8, Lcom/linekong/voice/util/CacheFile;->mDataCacheDir:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 177
    .local v1, "dir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 179
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 181
    :cond_3
    sget-object v8, Lcom/linekong/voice/util/CacheFile;->mDataCacheTmpDir:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 182
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 184
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    move-object v4, v5

    .line 186
    .end local v5    # "file":Ljava/io/File;
    .local v3, "e1":Ljava/io/FileNotFoundException;
    .restart local v4    # "file":Ljava/io/File;
    :goto_3
    const-string v8, "Cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not found cache file in data dir!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    .restart local v1    # "dir":Ljava/io/File;
    :catch_2
    move-exception v3

    goto :goto_3

    .line 172
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static openCacheWriteStream(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 213
    const/4 v6, 0x0

    .line 214
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 216
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 217
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/linekong/voice/VoiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 220
    :cond_0
    if-eqz v0, :cond_2

    .line 222
    if-nez p1, :cond_3

    .line 224
    sget-object v2, Lcom/linekong/voice/util/CacheFile;->mExtTmpCacheDir:Ljava/lang/String;

    .line 229
    .local v2, "dirName":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v5, "folder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 231
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 235
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v2    # "dirName":Ljava/lang/String;
    .end local v5    # "folder":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-object v6

    .line 226
    :cond_3
    sget-object v2, Lcom/linekong/voice/util/CacheFile;->mExtCacheDir:Ljava/lang/String;

    .restart local v2    # "dirName":Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "folder":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "Cache"

    const-string v8, "SD Card is unavailable!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-nez p1, :cond_5

    .line 240
    sget-object v2, Lcom/linekong/voice/util/CacheFile;->mDataCacheTmpDir:Ljava/lang/String;

    .line 247
    :goto_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 248
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 252
    :cond_4
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 242
    .end local v1    # "dir":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    sget-object v2, Lcom/linekong/voice/util/CacheFile;->mDataCacheDir:Ljava/lang/String;

    goto :goto_2

    .line 253
    :catch_1
    move-exception v4

    .line 254
    .local v4, "e1":Ljava/io/FileNotFoundException;
    const-string v7, "Cache"

    const-string v8, "Open Cache file failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v6, 0x0

    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static short2byte([S[BI)V
    .locals 4
    .param p0, "in"    # [S
    .param p1, "out"    # [B
    .param p2, "length"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 35
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v2, p0, v0

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 36
    mul-int/lit8 v1, v0, 0x2

    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
