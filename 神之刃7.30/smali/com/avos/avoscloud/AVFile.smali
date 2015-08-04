.class public Lcom/avos/avoscloud/AVFile;
.super Ljava/lang/Object;
.source "AVFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVFile$2;,
        Lcom/avos/avoscloud/AVFile$AVDownloader;
    }
.end annotation


# static fields
.field private static final ELDERMETADATAKEYFORIOSFIX:Ljava/lang/String; = "metadata"

.field private static final ETAG_FILE_EXTENSION:Ljava/lang/String; = ".tg"

.field static final FILE_NAME_KEY:Ljava/lang/String; = "_name"

.field private static final FILE_SUM_KEY:Ljava/lang/String; = "_checksum"

.field private static final THUMBNAIL_FMT:Ljava/lang/String; = "?imageView/%d/w/%d/h/%d/q/%d/format/%s"

.field private static defaultMimeType:Ljava/lang/String;


# instance fields
.field private acl:Lcom/avos/avoscloud/AVACL;

.field private bucket:Ljava/lang/String;

.field private transient data:[B

.field private dirty:Z

.field private transient downloader:Lcom/avos/avoscloud/AVFile$AVDownloader;

.field private fileObject:Lcom/avos/avoscloud/AVObject;

.field private final metaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private transient uploader:Lcom/avos/avoscloud/AVUploader;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "application/octet-stream"

    sput-object v0, Lcom/avos/avoscloud/AVFile;->defaultMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/avos/avoscloud/AVACL;

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVACL;-><init>(Lcom/avos/avoscloud/AVACL;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->acl:Lcom/avos/avoscloud/AVACL;

    .line 69
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 446
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 447
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p3, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    .line 100
    if-eqz p3, :cond_0

    .line 101
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v1, "__source"

    const-string v2, "external"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;-><init>()V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 119
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile;->data:[B

    .line 121
    iget-object v2, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v3, "size"

    if-eqz p2, :cond_1

    array-length v1, p2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_checksum"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 124
    .local v0, "currentUser":Lcom/avos/avoscloud/AVUser;
    iget-object v2, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v3, "owner"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_name"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void

    .line 121
    .end local v0    # "currentUser":Lcom/avos/avoscloud/AVUser;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    .restart local v0    # "currentUser":Lcom/avos/avoscloud/AVUser;
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;[B)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVFile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->fetchCacheTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/avos/avoscloud/AVFile;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->localPath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AVFile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getFileSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/AVFile;)[B
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->fetchCacheData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/AVFile;)[B
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->data:[B

    return-object v0
.end method

.method static synthetic access$502(Lcom/avos/avoscloud/AVFile;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile;
    .param p1, "x1"    # [B

    .prologue
    .line 46
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->data:[B

    return-object p1
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/AVFile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->removeCacheTag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/AVFile;[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVFile;->cacheFile([BLjava/lang/String;)V

    return-void
.end method

.method private cacheFile([BLjava/lang/String;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "etag"    # Ljava/lang/String;

    .prologue
    .line 926
    iget-object v7, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 927
    iget-object v7, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 928
    .local v4, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 930
    .local v1, "etagFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 931
    .local v2, "etagOS":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 933
    .local v5, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    .end local v2    # "etagOS":Ljava/io/FileOutputStream;
    .local v3, "etagOS":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v7, "UTF-8"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 935
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 937
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->localPath()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 938
    .end local v5    # "output":Ljava/io/OutputStream;
    .local v6, "output":Ljava/io/OutputStream;
    const/4 v7, 0x0

    :try_start_2
    array-length v8, p1

    invoke-virtual {v6, p1, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 939
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 945
    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 946
    invoke-static {v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 949
    .end local v1    # "etagFile":Ljava/io/File;
    .end local v3    # "etagOS":Ljava/io/FileOutputStream;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "output":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 940
    .restart local v1    # "etagFile":Ljava/io/File;
    .restart local v2    # "etagOS":Ljava/io/FileOutputStream;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 942
    const-string v7, "AVFile cache failure"

    invoke-static {v7}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 945
    :cond_1
    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 946
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 945
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 946
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 945
    .end local v2    # "etagOS":Ljava/io/FileOutputStream;
    .restart local v3    # "etagOS":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "etagOS":Ljava/io/FileOutputStream;
    .restart local v2    # "etagOS":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "etagOS":Ljava/io/FileOutputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v3    # "etagOS":Ljava/io/FileOutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "etagOS":Ljava/io/FileOutputStream;
    .restart local v2    # "etagOS":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 940
    .end local v2    # "etagOS":Ljava/io/FileOutputStream;
    .restart local v3    # "etagOS":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "etagOS":Ljava/io/FileOutputStream;
    .restart local v2    # "etagOS":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "etagOS":Ljava/io/FileOutputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v3    # "etagOS":Ljava/io/FileOutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "etagOS":Ljava/io/FileOutputStream;
    .restart local v2    # "etagOS":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private cancelDownloadIfNeed()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFile$AVDownloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFile$AVDownloader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->cancel(Z)Z

    .line 695
    :cond_0
    return-void
.end method

.method private cancelUploadIfNeed()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVUploader;->cancel(Z)Z

    .line 699
    :cond_0
    return-void
.end method

.method static className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    const-string v0, "File"

    return-object v0
.end method

.method private static createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 4
    .param p0, "object"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 259
    new-instance v0, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .local v0, "file":Lcom/avos/avoscloud/AVFile;
    const-string v1, "metadata"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "metadata"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, v0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "metadata"

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 264
    :cond_0
    const-string v1, "metaData"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, v0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "metaData"

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFile;->setObjectId(Ljava/lang/String;)V

    .line 268
    iput-object p0, v0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    .line 269
    const-string v1, "bucket"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFile;->setBucket(Ljava/lang/String;)V

    .line 270
    iget-object v1, v0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    iget-object v1, v0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_name"

    const-string v3, "name"

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_2
    return-object v0
.end method

.method private fetchCacheData()[B
    .locals 10

    .prologue
    .line 954
    const/4 v2, 0x0

    .line 955
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 958
    .local v4, "memOutput":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->localPath()Ljava/io/File;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 960
    .end local v4    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .local v5, "memOutput":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x2000

    :try_start_2
    new-array v1, v8, [B

    .line 961
    .local v1, "data":[B
    const-wide/16 v6, 0x0

    .line 963
    .local v6, "total":J
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .local v0, "count":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    .line 964
    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 965
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 969
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v6    # "total":J
    :catch_0
    move-exception v8

    move-object v4, v5

    .end local v5    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "memOutput":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 970
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 971
    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 973
    const/4 v8, 0x0

    :goto_2
    return-object v8

    .line 967
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "total":J
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 968
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    .line 970
    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 971
    invoke-static {v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "memOutput":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 970
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v6    # "total":J
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 971
    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 970
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "memOutput":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "memOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "memOutput":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 969
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private fetchCacheTag()Ljava/lang/String;
    .locals 9

    .prologue
    .line 977
    const/4 v4, 0x0

    .line 978
    .local v4, "s":Ljava/util/Scanner;
    iget-object v6, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 980
    :try_start_0
    iget-object v6, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 981
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 983
    .local v2, "etagFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 984
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    .end local v4    # "s":Ljava/util/Scanner;
    .local v5, "s":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 993
    .local v1, "etag":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_0
    move-object v4, v5

    .line 996
    .end local v1    # "etag":Ljava/lang/String;
    .end local v2    # "etagFile":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v5    # "s":Ljava/util/Scanner;
    .restart local v4    # "s":Ljava/util/Scanner;
    :goto_0
    return-object v1

    .line 993
    .restart local v2    # "etagFile":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 996
    .end local v2    # "etagFile":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 990
    const-string v6, "read etag exception"

    invoke-static {v6}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 993
    :cond_3
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    :cond_4
    throw v6

    .end local v4    # "s":Ljava/util/Scanner;
    .restart local v2    # "etagFile":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v5    # "s":Ljava/util/Scanner;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "s":Ljava/util/Scanner;
    .restart local v4    # "s":Ljava/util/Scanner;
    goto :goto_3

    .line 988
    .end local v4    # "s":Ljava/util/Scanner;
    .restart local v5    # "s":Ljava/util/Scanner;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "s":Ljava/util/Scanner;
    .restart local v4    # "s":Ljava/util/Scanner;
    goto :goto_2
.end method

.method private getFileSum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "_checksum"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1035
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 477
    sget-object v2, Lcom/avos/avoscloud/AVFile;->defaultMimeType:Ljava/lang/String;

    .line 478
    .local v2, "type":Ljava/lang/String;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 481
    .local v1, "mime":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 483
    .end local v1    # "mime":Landroid/webkit/MimeTypeMap;
    :cond_0
    if-nez v2, :cond_1

    .line 484
    sget-object v2, Lcom/avos/avoscloud/AVFile;->defaultMimeType:Ljava/lang/String;

    .line 486
    :cond_1
    return-object v2
.end method

.method private localPath()Ljava/io/File;
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseFileWithAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .param p0, "obj"    # Lcom/avos/avoscloud/AVObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->withAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileWithAbsoluteLocalPath(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "absoluteLocalFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVFile;->withAbsoluteLocalPath(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileWithFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileWithObjectId(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .param p0, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->withObjectId(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFileWithObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V
    .locals 0
    .param p0, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetFileCallback",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    .local p1, "cb":Lcom/avos/avoscloud/GetFileCallback;, "Lcom/avos/avoscloud/GetFileCallback<Lcom/avos/avoscloud/AVFile;>;"
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVFile;->withObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V

    .line 159
    return-void
.end method

.method private removeCacheTag()Z
    .locals 6

    .prologue
    .line 1000
    iget-object v3, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1002
    :try_start_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1005
    .local v1, "etagFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1006
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1015
    .end local v1    # "etagFile":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :goto_0
    return v3

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1010
    const-string v3, "remove etag exception"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 1012
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1015
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static withAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 3
    .param p0, "obj"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 250
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    .line 252
    .local v0, "file":Lcom/avos/avoscloud/AVFile;
    return-object v0

    .line 254
    .end local v0    # "file":Lcom/avos/avoscloud/AVFile;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid AVObject."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static withAbsoluteLocalPath(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "absoluteLocalFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    return-object v0
.end method

.method public static withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "null file object."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 334
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_2

    .line 335
    :cond_1
    new-instance v8, Ljava/io/FileNotFoundException;

    invoke-direct {v8}, Ljava/io/FileNotFoundException;-><init>()V

    throw v8

    .line 337
    :cond_2
    const/4 v2, 0x0

    .line 339
    .local v2, "data":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    const/4 v4, 0x0

    .line 342
    .local v4, "input":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 343
    .local v7, "totalBytesRead":I
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x2000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v4    # "input":Ljava/io/InputStream;
    .local v5, "input":Ljava/io/InputStream;
    :cond_3
    :goto_0
    :try_start_2
    array-length v8, v2

    if-ge v7, v8, :cond_4

    .line 345
    array-length v8, v2

    sub-int v1, v8, v7

    .line 346
    .local v1, "bytesRemaining":I
    invoke-virtual {v5, v2, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 347
    .local v0, "bytesRead":I
    if-lez v0, :cond_3

    .line 348
    add-int/2addr v7, v0

    goto :goto_0

    .line 352
    .end local v0    # "bytesRead":I
    .end local v1    # "bytesRemaining":I
    :cond_4
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 360
    new-instance v6, Lcom/avos/avoscloud/AVFile;

    invoke-direct {v6, p0, v2}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;[B)V

    .line 361
    .local v6, "object":Lcom/avos/avoscloud/AVFile;
    return-object v6

    .line 352
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v6    # "object":Lcom/avos/avoscloud/AVFile;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v8
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 354
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v7    # "totalBytesRead":I
    :catch_0
    move-exception v3

    .line 355
    .local v3, "ex":Ljava/io/FileNotFoundException;
    throw v3

    .line 356
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 357
    .local v3, "ex":Ljava/io/IOException;
    throw v3

    .line 352
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v7    # "totalBytesRead":I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static withObjectId(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 6
    .param p0, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v2, Lcom/avos/avoscloud/AVQuery;

    const-string v3, "_File"

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<Lcom/avos/avoscloud/AVObject;>;"
    invoke-virtual {v2, p0}, Lcom/avos/avoscloud/AVQuery;->get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    .line 221
    .local v1, "object":Lcom/avos/avoscloud/AVObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    invoke-static {v1}, Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object v0

    .line 223
    .local v0, "file":Lcom/avos/avoscloud/AVFile;
    return-object v0

    .line 225
    .end local v0    # "file":Lcom/avos/avoscloud/AVFile;
    :cond_0
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find file object by id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static withObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V
    .locals 2
    .param p0, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetFileCallback",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "cb":Lcom/avos/avoscloud/GetFileCallback;, "Lcom/avos/avoscloud/GetFileCallback<Lcom/avos/avoscloud/AVFile;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_File"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v1, Lcom/avos/avoscloud/AVFile$1;

    invoke-direct {v1, p1, p0}, Lcom/avos/avoscloud/AVFile$1;-><init>(Lcom/avos/avoscloud/GetFileCallback;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 191
    return-void
.end method


# virtual methods
.method public addMetaData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 686
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelUploadIfNeed()V

    .line 687
    return-void
.end method

.method public clearMetaData()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 437
    return-void
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->delete()V

    .line 730
    return-void

    .line 728
    :cond_0
    const/16 v0, 0x99

    const-string v1, "File object is not exists."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public deleteEventually()V
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->deleteEventually()V

    .line 738
    :cond_0
    return-void
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 747
    :cond_0
    return-void
.end method

.method public deleteInBackground()V
    .locals 1

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->deleteInBackground()V

    .line 755
    :cond_0
    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 769
    :goto_0
    return-void

    .line 766
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x99

    const-string v2, "File object is not exists."

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method protected getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->acl:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 619
    iget-object v3, p0, Lcom/avos/avoscloud/AVFile;->data:[B

    if-eqz v3, :cond_1

    .line 620
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->data:[B

    .line 638
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    iget-object v3, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 622
    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 623
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->fetchCacheData()[B

    move-result-object v0

    .line 624
    .local v0, "cachedData":[B
    if-eqz v0, :cond_2

    array-length v3, v0

    if-gtz v3, :cond_0

    .line 628
    .end local v0    # "cachedData":[B
    :cond_2
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 630
    new-instance v3, Lcom/avos/avoscloud/AVFile$AVDownloader;

    invoke-direct {v3, p0, v2, v2}, Lcom/avos/avoscloud/AVFile$AVDownloader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataCallback;)V

    iput-object v3, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFile$AVDownloader;

    .line 632
    iget-object v2, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFile$AVDownloader;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVFile$AVDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    .line 633
    .local v1, "exception":Lcom/avos/avoscloud/AVException;
    if-eqz v1, :cond_3

    throw v1

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->data:[B

    goto :goto_0

    .end local v1    # "exception":Lcom/avos/avoscloud/AVException;
    :cond_4
    move-object v0, v2

    .line 638
    goto :goto_0
.end method

.method public getDataInBackground(Lcom/avos/avoscloud/GetDataCallback;)V
    .locals 1
    .param p1, "dataCallback"    # Lcom/avos/avoscloud/GetDataCallback;

    .prologue
    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVFile;->getDataInBackground(Lcom/avos/avoscloud/GetDataCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 678
    return-void
.end method

.method public getDataInBackground(Lcom/avos/avoscloud/GetDataCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 5
    .param p1, "dataCallback"    # Lcom/avos/avoscloud/GetDataCallback;
    .param p2, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;

    .prologue
    const/4 v2, 0x0

    .line 651
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->data:[B

    if-eqz v1, :cond_1

    .line 652
    if-eqz p1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->data:[B

    invoke-virtual {p1, v1, v2}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 656
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 657
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 658
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->fetchCacheData()[B

    move-result-object v0

    .line 659
    .local v0, "cachedData":[B
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 660
    invoke-virtual {p1, v2}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 664
    .end local v0    # "cachedData":[B
    :cond_2
    new-instance v1, Lcom/avos/avoscloud/AVFile$AVDownloader;

    invoke-direct {v1, p0, p2, p1}, Lcom/avos/avoscloud/AVFile$AVDownloader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataCallback;)V

    iput-object v1, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFile$AVDownloader;

    .line 665
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFile$AVDownloader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVFile$AVDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 666
    :cond_3
    if-eqz p1, :cond_0

    .line 667
    new-instance v1, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x7e

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method getFileObject()Lcom/avos/avoscloud/AVObject;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "_File"

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getMetaData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMetaData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v1, "_name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    const-string v0, "owner"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile;->getMetaData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 404
    const-string v1, "size"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVFile;->getMetaData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 405
    .local v0, "size":Ljava/lang/Number;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 408
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getThumbnailUrl(ZII)Ljava/lang/String;
    .locals 6
    .param p1, "scaleToFit"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 527
    const/16 v4, 0x64

    const-string v5, "png"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVFile;->getThumbnailUrl(ZIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl(ZIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "scaleToFit"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "quality"    # I
    .param p5, "fmt"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 541
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;

    move-result-object v4

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    if-eq v4, v5, :cond_0

    .line 542
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "We only support this method for qiniu storage."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 544
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 545
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid width or height."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 547
    :cond_2
    if-lt p4, v3, :cond_3

    const/16 v4, 0x64

    if-le p4, v4, :cond_4

    .line 548
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid quality,valid range is 0-100."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 551
    :cond_5
    const-string p5, "png"

    .line 553
    :cond_6
    if-eqz p1, :cond_7

    move v0, v2

    .line 554
    .local v0, "mode":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?imageView/%d/w/%d/h/%d/q/%d/format/%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    aput-object p5, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "resultUrl":Ljava/lang/String;
    return-object v1

    .end local v0    # "mode":I
    .end local v1    # "resultUrl":Ljava/lang/String;
    :cond_7
    move v0, v3

    .line 553
    goto :goto_0
.end method

.method public getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/AVUploader;
    .locals 3
    .param p1, "saveCallback"    # Lcom/avos/avoscloud/SaveCallback;
    .param p2, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    new-instance v0, Lcom/avos/avoscloud/UrlDirectlyUploader;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/UrlDirectlyUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 809
    :goto_0
    return-object v0

    .line 797
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7e

    const-string v2, "Invalid File URL"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 800
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVFile$2;->$SwitchMap$com$avos$avoscloud$AVOSCloud$StorageType:[I

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSCloud$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 806
    invoke-static {}, Lcom/avos/avoscloud/LogUtil$log;->e()V

    .line 809
    const/4 v0, 0x0

    goto :goto_0

    .line 802
    :pswitch_0
    new-instance v0, Lcom/avos/avoscloud/QiniuUploader;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/QiniuUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    goto :goto_0

    .line 804
    :pswitch_1
    new-instance v0, Lcom/avos/avoscloud/S3Uploader;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/S3Uploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "uniqueName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 713
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    .line 714
    const-string v0, "_File"

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    .line 715
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 716
    iput-object p3, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    .line 717
    return-void
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    return v0
.end method

.method mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    :goto_0
    return-object v0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 777
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVFile;->defaultMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public removeMetaData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public save()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 569
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelUploadIfNeed()V

    .line 571
    invoke-virtual {p0, v1, v1}, Lcom/avos/avoscloud/AVFile;->getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/AVUploader;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    .line 573
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVUploader;->doWork()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 574
    .local v0, "exception":Lcom/avos/avoscloud/AVException;
    if-eqz v0, :cond_0

    throw v0

    .line 575
    :cond_0
    return-void
.end method

.method public saveInBackground()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 609
    return-void
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    .line 602
    return-void
.end method

.method public declared-synchronized saveInBackground(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 2
    .param p1, "saveCallback"    # Lcom/avos/avoscloud/SaveCallback;
    .param p2, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelUploadIfNeed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVFile;->getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/AVUploader;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;
    :try_end_1
    .catch Lcom/avos/avoscloud/AVException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/AVUploader;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVUploader;->execute()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Lcom/avos/avoscloud/AVException;
    :try_start_3
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 586
    .end local v0    # "e":Lcom/avos/avoscloud/AVException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0
    .param p1, "acl"    # Lcom/avos/avoscloud/AVACL;

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->acl:Lcom/avos/avoscloud/AVACL;

    .line 1029
    return-void
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->bucket:Ljava/lang/String;

    .line 921
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    .line 144
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    .line 561
    return-void
.end method

.method protected toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 1040
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1041
    .local v1, "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object v0

    .line 1042
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "url"

    iget-object v3, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    return-object v1
.end method
