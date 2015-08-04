.class public Lcom/avos/avoscloud/PaasClient;
.super Ljava/lang/Object;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/PaasClient$12;,
        Lcom/avos/avoscloud/PaasClient$ForgotCookieStore;
    }
.end annotation


# static fields
.field private static final COOKIE_STORE:Lorg/apache/http/client/CookieStore;

.field public static final DEFAULT_FAIL_STRING:Ljava/lang/String; = "request failed!!!"

.field static apiKeyField:Ljava/lang/String; = null

.field static applicationIdField:Ljava/lang/String; = null

.field private static final defaultContentType:Ljava/lang/String; = "application/json"

.field private static final defaultEncoding:Ljava/lang/String; = "UTF-8"

.field private static fileModifiedDateComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static internalObjectsForEventuallySave:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVObjectReferenceCount;",
            ">;"
        }
    .end annotation
.end field

.field private static isCN:Z = false

.field private static isUrulu:Z = false

.field private static lastModify:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastModifyEnabled:Z = false

.field public static final sdkVersion:Ljava/lang/String; = "v3.3.4"

.field static serviceClientMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/PaasClient;",
            ">;"
        }
    .end annotation
.end field

.field static serviceHostMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sessionTokenField:Ljava/lang/String; = null

.field private static final userAgent:Ljava/lang/String; = "AVOS Cloud android-v3.3.4 SDK"


# instance fields
.field private final apiVersion:Ljava/lang/String;

.field private asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

.field private baseUrl:Ljava/lang/String;

.field private currentUser:Lcom/avos/avoscloud/AVUser;

.field private defaultACL:Lcom/avos/avoscloud/AVACL;

.field private isProduction:Z

.field private syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    new-instance v0, Lcom/avos/avoscloud/PaasClient$ForgotCookieStore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/PaasClient$ForgotCookieStore;-><init>(Lcom/avos/avoscloud/PaasClient$1;)V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->COOKIE_STORE:Lorg/apache/http/client/CookieStore;

    .line 57
    sput-boolean v2, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 58
    sput-boolean v2, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    .line 81
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://api.leancloud.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    .line 989
    new-instance v0, Lcom/avos/avoscloud/PaasClient$11;

    invoke-direct {v0}, Lcom/avos/avoscloud/PaasClient$11;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->fileModifiedDateComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/PaasClient;->isProduction:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    .line 147
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    .line 149
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useUruluServer()V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useOfficalParseServer()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/PaasClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/util/Map;
    .param p6, "x6"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Z

    .prologue
    .line 22
    invoke-direct/range {p0 .. p9}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/PaasClient;Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/PaasClient;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/Map;
    .param p5, "x5"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Z

    .prologue
    .line 22
    invoke-direct/range {p0 .. p8}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/PaasClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Z

    .prologue
    .line 22
    invoke-direct/range {p0 .. p8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V
    .locals 4
    .param p1, "client"    # Lcom/loopj/android/http/AsyncHttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loopj/android/http/AsyncHttpClient;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 458
    :cond_0
    return-void

    .line 454
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 455
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 456
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "paramString"    # Ljava/lang/String;
    .param p4, "objectId"    # Ljava/lang/String;
    .param p5, "_internalId"    # Ljava/lang/String;

    .prologue
    .line 708
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCommandCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {p4, p5, p1, p2, p3}, Lcom/avos/avoscloud/AVUtils;->getArchiveRequestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 712
    .local v1, "theArchivedFile":Ljava/io/File;
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 713
    .local v0, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "method"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v2, "relativePath"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v2, "paramString"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v2, "objectId"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v2, "_internalId"

    invoke-interface {v0, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->toJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 721
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "did save to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 725
    :cond_0
    return-object v1
.end method

.method private batchRequest(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 539
    .local v0, "requests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "requests"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-object v0
.end method

.method private batchSaveRelativeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "batch/save"

    return-object v0
.end method

.method private batchUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 277
    const-string v0, "%s/%s/batch"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearLastModifyCache()V
    .locals 5

    .prologue
    .line 906
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 907
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 908
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 909
    .local v1, "pairs":Ljava/util/Map$Entry;
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lcom/avos/avoscloud/AVCacheManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    .end local v1    # "pairs":Ljava/util/Map$Entry;
    :cond_0
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 912
    return-void
.end method

.method public static cloudInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->FUNCTION_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method private configHttpClient(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 3
    .param p1, "client"    # Lcom/loopj/android/http/AsyncHttpClient;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/loopj/android/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 183
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getNetworkTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 184
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->COOKIE_STORE:Lorg/apache/http/client/CookieStore;

    invoke-virtual {p1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 185
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getThreadPoolSize()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setThreadPool(Ljava/util/concurrent/ExecutorService;)V

    .line 186
    return-void
.end method

.method private createGetHandler(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p2, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .param p3, "absoluteURLString"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/GetHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)V

    .line 288
    .local v0, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    return-object v0
.end method

.method private createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 292
    new-instance v0, Lcom/avos/avoscloud/PostHttpResponseHandler;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/PostHttpResponseHandler;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 293
    .local v0, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    return-object v0
.end method

.method protected static extractContentType([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 6
    .param p0, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 932
    if-eqz p0, :cond_1

    .line 933
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 934
    .local v1, "h":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 935
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 939
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "h":Lorg/apache/http/Header;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v4

    .line 933
    .restart local v0    # "arr$":[Lorg/apache/http/Header;
    .restart local v1    # "h":Lorg/apache/http/Header;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "h":Lorg/apache/http/Header;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getDebugClientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    .line 833
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "YourAppKey"

    goto :goto_0
.end method

.method public static getLastModify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "absolutURLString"    # Ljava/lang/String;

    .prologue
    .line 890
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    const/4 v0, 0x0

    .line 893
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleArchivedRequest(Ljava/io/File;Z)V
    .locals 1
    .param p1, "archivedFile"    # Ljava/io/File;
    .param p2, "sync"    # Z

    .prologue
    .line 729
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 730
    return-void
.end method

.method private handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 21
    .param p1, "archivedFile"    # Ljava/io/File;
    .param p2, "sync"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 735
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v17

    .line 736
    .local v17, "archivedFileContent":Ljava/lang/String;
    const/16 v19, 0x0

    .line 738
    .local v19, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v19, Ljava/util/Map;

    .line 739
    .restart local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 740
    const-string v3, "method"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 741
    .local v20, "method":Ljava/lang/String;
    const-string v3, "relativePath"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 742
    .local v4, "relativePath":Ljava/lang/String;
    const-string v3, "paramString"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 743
    .local v5, "paramString":Ljava/lang/String;
    const-string v3, "objectId"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 744
    .local v9, "objectId":Ljava/lang/String;
    const-string v3, "_internalId"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 745
    .local v10, "_internalId":Ljava/lang/String;
    new-instance v8, Lcom/avos/avoscloud/PaasClient$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/avos/avoscloud/PaasClient$10;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/io/File;)V

    .line 775
    .local v8, "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    if-nez v20, :cond_0

    .line 776
    new-instance v3, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v6, "Null method."

    invoke-direct {v3, v6}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v8, v3, v6}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 778
    :cond_0
    const-string v3, "post"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 779
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v5, v1, v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 789
    .end local v4    # "relativePath":Ljava/lang/String;
    .end local v5    # "paramString":Ljava/lang/String;
    .end local v8    # "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v9    # "objectId":Ljava/lang/String;
    .end local v10    # "_internalId":Ljava/lang/String;
    .end local v17    # "archivedFileContent":Ljava/lang/String;
    .end local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "method":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 780
    .restart local v4    # "relativePath":Ljava/lang/String;
    .restart local v5    # "paramString":Ljava/lang/String;
    .restart local v8    # "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .restart local v9    # "objectId":Ljava/lang/String;
    .restart local v10    # "_internalId":Ljava/lang/String;
    .restart local v17    # "archivedFileContent":Ljava/lang/String;
    .restart local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "method":Ljava/lang/String;
    :cond_2
    const-string v3, "put"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 781
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 786
    .end local v4    # "relativePath":Ljava/lang/String;
    .end local v5    # "paramString":Ljava/lang/String;
    .end local v8    # "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v9    # "objectId":Ljava/lang/String;
    .end local v10    # "_internalId":Ljava/lang/String;
    .end local v17    # "archivedFileContent":Ljava/lang/String;
    .end local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "method":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 787
    .local v18, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 782
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v4    # "relativePath":Ljava/lang/String;
    .restart local v5    # "paramString":Ljava/lang/String;
    .restart local v8    # "newCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .restart local v9    # "objectId":Ljava/lang/String;
    .restart local v10    # "_internalId":Ljava/lang/String;
    .restart local v17    # "archivedFileContent":Ljava/lang/String;
    .restart local v19    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "method":Ljava/lang/String;
    :cond_3
    const-string v3, "delete"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v11, p0

    move-object v12, v4

    move/from16 v13, p2

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    .line 783
    invoke-virtual/range {v11 .. v16}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private headerString(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 838
    const-string v5, " -H \"%s: %s\" -H \"%s: %s\" "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v7, v6, v9

    sget-object v7, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v7, v6, v10

    sget-object v7, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v7, v6, v11

    const/4 v7, 0x3

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 841
    .local v3, "string":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 842
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 843
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 844
    .local v4, "value":Ljava/lang/String;
    const-string v5, " -H \"%s: %s\" "

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v9

    aput-object v4, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 846
    goto :goto_0

    .line 848
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -H \"Content-Type: application/json\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 849
    return-object v3
.end method

.method public static isAVOSCloud()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    return v0
.end method

.method public static isJSONResponse(Ljava/lang/String;)Z
    .locals 2
    .param p0, "contentType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 925
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 928
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLastModifyEnabled()Z
    .locals 1

    .prologue
    .line 897
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    return v0
.end method

.method public static lastModifyFromHeaders([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 6
    .param p0, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 915
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 916
    .local v1, "h":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Last-Modified"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 917
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 920
    .end local v1    # "h":Lorg/apache/http/Header;
    :goto_1
    return-object v4

    .line 915
    .restart local v1    # "h":Lorg/apache/http/Header;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 920
    .end local v1    # "h":Lorg/apache/http/Header;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15
    .param p1, "list"    # Ljava/util/List;
    .param p2, "sync"    # Z
    .param p3, "isEventually"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "objectId"    # Ljava/lang/String;
    .param p7, "_internalId"    # Ljava/lang/String;
    .param p8, "dnsRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 575
    .local v14, "params":Ljava/util/Map;
    const-string v3, "requests"

    move-object/from16 v0, p1

    invoke-interface {v14, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-static {v14}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 578
    .local v13, "paramString":Ljava/lang/String;
    if-eqz p8, :cond_0

    .line 579
    new-instance v1, Lcom/avos/avoscloud/PaasClient$7;

    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/avos/avoscloud/PaasClient$7;-><init>(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/util/List;ZZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .local v1, "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    :goto_0
    if-eqz p3, :cond_1

    .line 591
    const-string v3, "post"

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchSaveRelativeUrl()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v5, v13

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 593
    .local v11, "archivedFile":Ljava/io/File;
    move/from16 v0, p2

    invoke-direct {p0, v11, v0, v1}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 608
    .end local v1    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v11    # "archivedFile":Ljava/io/File;
    .end local v13    # "paramString":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/Map;
    :goto_1
    return-void

    .line 588
    .restart local v13    # "paramString":Ljava/lang/String;
    .restart local v14    # "params":Ljava/util/Map;
    :cond_0
    move-object/from16 v1, p5

    .restart local v1    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    goto :goto_0

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchSaveRelativeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v3, "UTF-8"

    invoke-virtual {v13, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 597
    .local v5, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 598
    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v4, v13}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_2
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v7

    .line 601
    .local v7, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v2

    .line 602
    .local v2, "client":Lcom/loopj/android/http/AsyncHttpClient;
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0}, Lcom/avos/avoscloud/PaasClient;->addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V

    .line 603
    const/4 v3, 0x0

    const-string v6, "application/json"

    invoke-virtual/range {v2 .. v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 605
    .end local v1    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v2    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v7    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .end local v13    # "paramString":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/Map;
    :catch_0
    move-exception v12

    .line 606
    .local v12, "exception":Ljava/lang/Exception;
    move-object/from16 v0, p5

    invoke-direct {p0, v12, v0}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_1
.end method

.method private postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "isEventually"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "objectId"    # Ljava/lang/String;
    .param p7, "_internalId"    # Ljava/lang/String;
    .param p8, "dnsRetry"    # Z

    .prologue
    .line 626
    if-eqz p8, :cond_0

    .line 627
    :try_start_0
    new-instance v1, Lcom/avos/avoscloud/PaasClient$8;

    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v4, p5

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/avos/avoscloud/PaasClient$8;-><init>(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 638
    .local v1, "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    :goto_0
    if-eqz p4, :cond_1

    .line 639
    const-string v3, "post"

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 640
    .local v11, "archivedFile":Ljava/io/File;
    move/from16 v0, p3

    invoke-direct {p0, v11, v0, v1}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 653
    .end local v1    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v11    # "archivedFile":Ljava/io/File;
    :goto_1
    return-void

    .line 636
    :cond_0
    move-object/from16 v1, p5

    .restart local v1    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 644
    .local v5, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 645
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, p2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_2
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v7

    .line 648
    .local v7, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "application/json"

    invoke-virtual/range {v2 .. v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 650
    .end local v1    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v7    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    :catch_0
    move-exception v12

    .line 651
    .local v12, "exception":Ljava/lang/Exception;
    move-object/from16 v0, p5

    invoke-direct {p0, v12, v0}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_1
.end method

.method private processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "cb"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 504
    if-eqz p2, :cond_0

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 507
    :cond_0
    return-void
.end method

.method private putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "isEventually"    # Z
    .param p6, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p7, "objectId"    # Ljava/lang/String;
    .param p8, "_internalId"    # Ljava/lang/String;
    .param p9, "dnsRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p5, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p9, :cond_0

    .line 473
    :try_start_0
    new-instance v2, Lcom/avos/avoscloud/PaasClient$6;

    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/avos/avoscloud/PaasClient$6;-><init>(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .local v2, "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    :goto_0
    if-eqz p4, :cond_1

    .line 485
    const-string v4, "put"

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 486
    .local v13, "archivedFile":Ljava/io/File;
    move/from16 v0, p3

    invoke-direct {p0, v13, v0, v2}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 501
    .end local v2    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v13    # "archivedFile":Ljava/io/File;
    :goto_1
    return-void

    .line 482
    :cond_0
    move-object/from16 v2, p6

    .restart local v2    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "url":Ljava/lang/String;
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v4, "UTF-8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 490
    .local v6, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-direct {p0, v2}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v8

    .line 491
    .local v8, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 492
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v5, v1}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPutRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_2
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v3

    .line 495
    .local v3, "client":Lcom/loopj/android/http/AsyncHttpClient;
    move-object/from16 v0, p5

    invoke-direct {p0, v3, v0}, Lcom/avos/avoscloud/PaasClient;->addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V

    .line 496
    const/4 v4, 0x0

    const-string v7, "application/json"

    invoke-virtual/range {v3 .. v8}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 498
    .end local v2    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v3    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v8    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    :catch_0
    move-exception v14

    .line 499
    .local v14, "exception":Ljava/lang/Exception;
    move-object/from16 v0, p6

    invoke-direct {p0, v14, v0}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_1
.end method

.method protected static registerEventuallyObject(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .param p0, "object"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 959
    if-eqz p0, :cond_0

    .line 960
    monitor-enter p0

    .line 961
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    .line 962
    .local v0, "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    if-eqz v0, :cond_1

    .line 963
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObjectReferenceCount;->increment()I

    .line 968
    :goto_0
    monitor-exit p0

    .line 970
    .end local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :cond_0
    return-void

    .line 965
    .restart local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVObjectReferenceCount;

    .end local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObjectReferenceCount;-><init>(Lcom/avos/avoscloud/AVObject;)V

    .line 966
    .restart local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 968
    .end local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeLastModifyForUrl(Ljava/lang/String;)V
    .locals 1
    .param p0, "absolutURLString"    # Ljava/lang/String;

    .prologue
    .line 955
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    return-void
.end method

.method public static setLastModifyEnabled(Z)V
    .locals 0
    .param p0, "e"    # Z

    .prologue
    .line 901
    sput-boolean p0, Lcom/avos/avoscloud/PaasClient;->lastModifyEnabled:Z

    .line 902
    return-void
.end method

.method protected static setServiceHost(Lcom/avos/avoscloud/AVOSServices;Ljava/lang/String;)V
    .locals 2
    .param p0, "service"    # Lcom/avos/avoscloud/AVOSServices;
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 309
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method

.method protected static sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;
    .locals 4
    .param p0, "service"    # Lcom/avos/avoscloud/AVOSServices;

    .prologue
    .line 97
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v3, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 100
    .local v0, "host":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/PaasClient;

    .line 101
    .local v1, "instance":Lcom/avos/avoscloud/PaasClient;
    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/avos/avoscloud/PaasClient;

    .end local v1    # "instance":Lcom/avos/avoscloud/PaasClient;
    invoke-direct {v1}, Lcom/avos/avoscloud/PaasClient;-><init>()V

    .line 103
    .restart local v1    # "instance":Lcom/avos/avoscloud/PaasClient;
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/PaasClient;->setBaseUrl(Ljava/lang/String;)V

    .line 104
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceClientMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-object v1

    .line 97
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "instance":Lcom/avos/avoscloud/PaasClient;
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method private signRequest()Ljava/lang/String;
    .locals 6

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getCurrentTimestamp()J

    move-result-wide v2

    .line 159
    .local v2, "ts":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/avos/avoscloud/AVOSCloud;->clientKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static statistisInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->STATISTICS_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method public static storageInstance()Lcom/avos/avoscloud/PaasClient;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->sharedInstance(Lcom/avos/avoscloud/AVOSServices;)Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    return-object v0
.end method

.method private switchPushRouter(Ljava/lang/String;)V
    .locals 4
    .param p1, "routerServer"    # Ljava/lang/String;

    .prologue
    .line 243
    :try_start_0
    const-string v3, "com.avos.avospush.push.AVPushRouter"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 244
    .local v0, "avPushRouterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 245
    .local v2, "switchMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "avPushRouterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "switchMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "avpushRouter server didn\'t switched"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static unregisterEvtuallyObject(Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .param p0, "object"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 973
    if-eqz p0, :cond_1

    .line 974
    monitor-enter p0

    .line 975
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObjectReferenceCount;

    move-object v0, v1

    .line 979
    .local v0, "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :goto_0
    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObjectReferenceCount;->desc()I

    move-result v1

    if-gtz v1, :cond_0

    .line 981
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    :cond_0
    monitor-exit p0

    .line 987
    .end local v0    # "counter":Lcom/avos/avoscloud/AVObjectReferenceCount;
    :cond_1
    return-void

    .line 975
    :cond_2
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObjectReferenceCount;

    move-object v0, v1

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateHeaders(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 3
    .param p1, "client"    # Lcom/loopj/android/http/AsyncHttpClient;

    .prologue
    .line 167
    const-string v2, "X-Uluru-Application-Production"

    iget-boolean v1, p0, Lcom/avos/avoscloud/PaasClient;->isProduction:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {p1, v2, v1}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 169
    .local v0, "currAVUser":Lcom/avos/avoscloud/AVUser;
    sget-object v2, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v2, v1}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "AVOS Cloud android-v3.3.4 SDK"

    invoke-virtual {p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 178
    const-string v1, "x-avoscloud-request-sign"

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->signRequest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 167
    .end local v0    # "currAVUser":Lcom/avos/avoscloud/AVUser;
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 169
    .restart local v0    # "currAVUser":Lcom/avos/avoscloud/AVUser;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static updateLastModify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "absolutURLString"    # Ljava/lang/String;
    .param p1, "ts"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 943
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v0

    .line 947
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->lastModify:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method assembleBatchOpsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 529
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 531
    .local v2, "object":Ljava/lang/Object;
    const-string v4, "PUT"

    invoke-virtual {p0, v4, p2, v2}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 532
    .local v3, "opDict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "opDict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v1
.end method

.method batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/Object;
    .param p4, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "method"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v1, "path"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v1, "body"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    if-eqz p4, :cond_0

    .line 518
    const-string v1, "params"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_0
    return-object v0
.end method

.method public buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v0, "%s/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1
    .param p1, "sync"    # Z

    .prologue
    .line 189
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/avos/avoscloud/PaasClient$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/PaasClient$1;-><init>(Lcom/avos/avoscloud/PaasClient;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;

    .line 196
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->configHttpClient(Lcom/loopj/android/http/AsyncHttpClient;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/loopj/android/http/AsyncHttpClient;)V

    .line 199
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->syncHttpClient:Lcom/loopj/android/http/SyncHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    monitor-exit p0

    return-object v0

    .line 201
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v0, :cond_2

    .line 202
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    .line 203
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->configHttpClient(Lcom/loopj/android/http/AsyncHttpClient;)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->updateHeaders(Lcom/loopj/android/http/AsyncHttpClient;)V

    .line 206
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p4, "objectId"    # Ljava/lang/String;
    .param p5, "_internalId"    # Ljava/lang/String;

    .prologue
    .line 657
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method public deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "isEventually"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p5, "objectId"    # Ljava/lang/String;
    .param p6, "_internalId"    # Ljava/lang/String;

    .prologue
    .line 663
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 664
    return-void
.end method

.method public deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "isEventually"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p5, "objectId"    # Ljava/lang/String;
    .param p6, "_internalId"    # Ljava/lang/String;
    .param p7, "dnsRetry"    # Z

    .prologue
    .line 672
    if-eqz p7, :cond_0

    .line 673
    :try_start_0
    new-instance v1, Lcom/avos/avoscloud/PaasClient$9;

    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v4, p4

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/avos/avoscloud/PaasClient$9;-><init>(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 682
    .local v1, "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    :goto_0
    if-eqz p3, :cond_1

    .line 683
    const-string v3, "delete"

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/avos/avoscloud/PaasClient;->archiveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 684
    .local v10, "archivedFile":Ljava/io/File;
    move/from16 v0, p2

    invoke-direct {p0, v10, v0, v1}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    .line 696
    .end local v1    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v10    # "archivedFile":Ljava/io/File;
    :goto_1
    return-void

    .line 680
    :cond_0
    move-object/from16 v1, p4

    .restart local v1    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    goto :goto_0

    .line 686
    :cond_1
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 687
    .local v13, "url":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 688
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v13, v3}, Lcom/avos/avoscloud/PaasClient;->dumpHttpDeleteRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_2
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v12

    .line 691
    .local v12, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v2

    invoke-virtual {v2, v13, v12}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 693
    .end local v1    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v12    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .end local v13    # "url":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 694
    .local v11, "exception":Ljava/lang/Exception;
    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_1
.end method

.method public dumpHttpDeleteRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 865
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "curl -X DELETE %s  -d \'%s\' %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public dumpHttpGetRequest(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 815
    const-string v0, ""

    .line 816
    .local v0, "string":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 817
    const-string v1, "curl -X GET -H \"%s: %s\" -H \"%s: %s\" -G --data-urlencode \'%s\' %s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p2}, Lcom/loopj/android/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 826
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 827
    return-void

    .line 822
    :cond_0
    const-string v1, "curl -X GET -H \"%s: %s\" -H \"%s: %s\"  %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->getDebugClientKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p1, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "curl -X POST %s  -d \'%s\' %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public dumpHttpPutRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 853
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "curl -X PUT %s  -d \' %s \' %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->headerString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "string":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method generateQueryPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;
    .locals 3
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;

    .prologue
    .line 379
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "absolutURLString":Ljava/lang/String;
    return-object v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentUser()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method getDefaultACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient;->defaultACL:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;
    .locals 17
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .param p7, "maxAgeInMilliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 316
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "absolutURLString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/PaasClient;->updateHeaderForPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, "lastModify":Ljava/lang/String;
    sget-object v4, Lcom/avos/avoscloud/PaasClient$12;->$SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy:[I

    invoke-virtual/range {p6 .. p6}, Lcom/avos/avoscloud/AVQuery$CachePolicy;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 321
    invoke-virtual/range {p0 .. p6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    .line 375
    :goto_0
    return-object v5

    .line 324
    :pswitch_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    move-wide/from16 v6, p7

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-virtual/range {p0 .. p6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    new-instance v9, Lcom/avos/avoscloud/PaasClient$2;

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p6

    invoke-direct/range {v9 .. v16}, Lcom/avos/avoscloud/PaasClient$2;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    move-wide/from16 v6, p7

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 345
    :pswitch_3
    new-instance v9, Lcom/avos/avoscloud/PaasClient$3;

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move-object v12, v5

    move-wide/from16 v13, p7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/avos/avoscloud/PaasClient$3;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object v15, v9

    move-object/from16 v16, p6

    invoke-virtual/range {v10 .. v16}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    goto :goto_0

    .line 359
    :pswitch_4
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    new-instance v9, Lcom/avos/avoscloud/PaasClient$4;

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p6

    invoke-direct/range {v9 .. v16}, Lcom/avos/avoscloud/PaasClient$4;-><init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    move-wide/from16 v6, p7

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 7
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 441
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    .line 442
    return-void
.end method

.method public getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V
    .locals 8
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 386
    .local p4, "inputHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_ONLY:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-virtual {p6, v0}, Lcom/avos/avoscloud/AVQuery$CachePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Z)V

    .line 388
    return-void

    .line 386
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Z)V
    .locals 9
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .param p7, "fetchRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p4, "inputHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p7, :cond_0

    new-instance v0, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/DataFetchCallbackWithFailureRetry;-><init>(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;)V

    move-object v5, v0

    :goto_0
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;ZZ)V

    .line 397
    return-void

    :cond_0
    move-object v5, p5

    .line 393
    goto :goto_0
.end method

.method protected getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;ZZ)V
    .locals 17
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .param p7, "fetchRetry"    # Z
    .param p8, "dnsRetry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p4, "inputHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v15, p4

    .line 405
    .local v15, "myHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p4, :cond_0

    .line 406
    new-instance v15, Ljava/util/HashMap;

    .end local v15    # "myHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 408
    .restart local v15    # "myHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v15}, Lcom/avos/avoscloud/PaasClient;->updateHeaderForPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Ljava/util/Map;)Ljava/lang/String;

    .line 410
    invoke-virtual/range {p0 .. p1}, Lcom/avos/avoscloud/PaasClient;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 412
    .local v16, "url":Ljava/lang/String;
    if-eqz p8, :cond_2

    .line 413
    new-instance v3, Lcom/avos/avoscloud/PaasClient$5;

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/PaasClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v3 .. v12}, Lcom/avos/avoscloud/PaasClient$5;-><init>(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/AVQuery$CachePolicy;Z)V

    .line 428
    .local v3, "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v3, v1, v4}, Lcom/avos/avoscloud/PaasClient;->createGetHandler(Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;Ljava/lang/String;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v14

    .line 431
    .local v14, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/PaasClient;->dumpHttpGetRequest(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)V

    .line 434
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v13

    .line 435
    .local v13, "client":Lcom/loopj/android/http/AsyncHttpClient;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/avos/avoscloud/PaasClient;->addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V

    .line 436
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1, v14}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 437
    return-void

    .line 426
    .end local v3    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    .end local v13    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v14    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    :cond_2
    move-object/from16 v3, p5

    .restart local v3    # "retryCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    goto :goto_0
.end method

.method public handleAllArchivedRequest()V
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PaasClient;->handleAllArchivedRequest(Z)V

    .line 793
    return-void
.end method

.method protected handleAllArchivedRequest(Z)V
    .locals 8
    .param p1, "sync"    # Z

    .prologue
    .line 796
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCommandCacheDir()Ljava/io/File;

    move-result-object v2

    .line 797
    .local v2, "commandCacheDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 798
    .local v0, "archivedRequests":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v6, v0

    if-lez v6, :cond_2

    .line 799
    sget-object v6, Lcom/avos/avoscloud/PaasClient;->fileModifiedDateComparator:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 800
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 801
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 802
    invoke-direct {p0, v3, p1}, Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;Z)V

    .line 800
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 803
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 804
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is a dir"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 808
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method public postBatchObject(Ljava/util/List;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 9
    .param p2, "sync"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/PaasClient;->batchUrl()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "url":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PaasClient;->batchRequest(Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 549
    .local v8, "requests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "json":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v1, "UTF-8"

    invoke-virtual {v7, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 551
    .local v3, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    invoke-virtual {p0, p3, v2, v7}, Lcom/avos/avoscloud/PaasClient;->dumpHttpPostRequest(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_0
    invoke-direct {p0, p4}, Lcom/avos/avoscloud/PaasClient;->createPostHandler(Lcom/avos/avoscloud/GenericObjectCallback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v5

    .line 555
    .local v5, "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    .line 556
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/PaasClient;->addHeader(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/Map;)V

    .line 557
    const/4 v1, 0x0

    const-string v4, "application/json"

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v5    # "handler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "requests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v6

    .line 559
    .local v6, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v6, p4}, Lcom/avos/avoscloud/PaasClient;->processException(Ljava/lang/Exception;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "list"    # Ljava/util/List;
    .param p2, "sync"    # Z
    .param p3, "isEventually"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "objectId"    # Ljava/lang/String;
    .param p7, "_internalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 566
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 567
    return-void
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 8
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    const/4 v6, 0x0

    .line 612
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "isEventually"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "objectId"    # Ljava/lang/String;
    .param p7, "_internalId"    # Ljava/lang/String;

    .prologue
    .line 617
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 618
    return-void
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p5, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p6, "objectId"    # Ljava/lang/String;
    .param p7, "_internalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 447
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "isEventually"    # Z
    .param p6, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .param p7, "objectId"    # Ljava/lang/String;
    .param p8, "_internalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 463
    .local p5, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 465
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 302
    return-void
.end method

.method setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    .locals 0
    .param p1, "user"    # Lcom/avos/avoscloud/AVUser;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->currentUser:Lcom/avos/avoscloud/AVUser;

    .line 143
    return-void
.end method

.method setDefaultACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0
    .param p1, "acl"    # Lcom/avos/avoscloud/AVACL;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient;->defaultACL:Lcom/avos/avoscloud/AVACL;

    .line 127
    return-void
.end method

.method setProduction(Z)V
    .locals 0
    .param p1, "production"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/avos/avoscloud/PaasClient;->isProduction:Z

    .line 89
    return-void
.end method

.method public updateHeaderForPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "parameters"    # Lcom/loopj/android/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 875
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->isLastModifyEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 876
    const/4 v2, 0x0

    .line 886
    :cond_0
    :goto_0
    return-object v2

    .line 879
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "absoluteURLString":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->getLastModify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "modify":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 883
    .local v1, "exist":Z
    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    .line 884
    const-string v3, "If-Modified-Since"

    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public useAVCloudCN()V
    .locals 3

    .prologue
    .line 252
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 253
    const-string v0, "https://api.leancloud.cn"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 254
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "X-avoscloud-Application-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 256
    const-string v0, "X-avoscloud-Application-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 257
    const-string v0, "X-avoscloud-Session-Token"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 258
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 259
    const-string v0, "useAVOSCloudCN"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->switchPushRouter(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public useAVCloudUS()V
    .locals 3

    .prologue
    .line 230
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 231
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    .line 232
    const-string v0, "https://us-api.leancloud.cn"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "X-avoscloud-Application-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 235
    const-string v0, "X-avoscloud-Application-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 236
    const-string v0, "X-avoscloud-Session-Token"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeS3:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 238
    const-string v0, "useAVOSCloudUS"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/PaasClient;->switchPushRouter(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public useLocalStg()V
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 264
    const-string v0, "https://cn-stg1.avoscloud.com"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 265
    sget-object v0, Lcom/avos/avoscloud/PaasClient;->serviceHostMap:Ljava/util/Map;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVOSServices;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "X-avoscloud-Application-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 267
    const-string v0, "X-avoscloud-Application-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 268
    const-string v0, "X-avoscloud-Session-Token"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 269
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeQiniu:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 270
    return-void
.end method

.method public useOfficalParseServer()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PaasClient;->isUrulu:Z

    .line 222
    const-string v0, "https://api.parse.com"

    iput-object v0, p0, Lcom/avos/avoscloud/PaasClient;->baseUrl:Ljava/lang/String;

    .line 223
    const-string v0, "X-AVOSCloud-Application-Id"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->applicationIdField:Ljava/lang/String;

    .line 224
    const-string v0, "X-AVOSCloud-REST-API-Key"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->apiKeyField:Ljava/lang/String;

    .line 225
    const-string v0, "X-AVOSCloud-Session-Token"

    sput-object v0, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud$StorageType;->StorageTypeAV:Lcom/avos/avoscloud/AVOSCloud$StorageType;

    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setStorageType(Lcom/avos/avoscloud/AVOSCloud$StorageType;)V

    .line 227
    return-void
.end method

.method public useUruluServer()V
    .locals 1

    .prologue
    .line 213
    sget-boolean v0, Lcom/avos/avoscloud/PaasClient;->isCN:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useAVCloudCN()V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/PaasClient;->useAVCloudUS()V

    goto :goto_0
.end method

.method public userHeaderMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 135
    .local v0, "user":Lcom/avos/avoscloud/AVUser;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVUser;->headerMap()Ljava/util/Map;

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
