.class public Lcom/avos/avoscloud/AVQuery;
.super Ljava/lang/Object;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVQuery$CachePolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CLOUD_QUERY_PATH:Ljava/lang/String; = "cloudQuery"

.field private static final TAG:Ljava/lang/String; = "com.parse.AVQuery"


# instance fields
.field private cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field conditions:Lcom/avos/avoscloud/QueryConditions;

.field private externalQueryPath:Ljava/lang/String;

.field private isRunning:Ljava/lang/Boolean;

.field private maxCacheAge:J

.field private queryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .line 268
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 269
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "theClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->IGNORE_CACHE:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 272
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 273
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    .line 274
    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    .line 275
    new-instance v0, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {v0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    .line 276
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVQuery;->processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVQuery;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVQuery;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method private addOrItems(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "op"    # Lcom/avos/avoscloud/QueryOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)V

    .line 604
    return-object p0
.end method

.method private addWhereItem(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "op"    # Lcom/avos/avoscloud/QueryOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 599
    return-object p0
.end method

.method public static clearAllCachedResults()V
    .locals 0

    .prologue
    .line 311
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->clearAllCache()Z

    .line 312
    return-void
.end method

.method private countInBackground(ZLcom/avos/avoscloud/CountCallback;)V
    .locals 11
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/CountCallback;

    .prologue
    .line 1436
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 1437
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object v10

    .line 1438
    .local v10, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "count"

    const-string v2, "1"

    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    const-string v0, "limit"

    const-string v2, "0"

    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    move-object v9, p2

    .line 1441
    .local v9, "internalCallback":Lcom/avos/avoscloud/CountCallback;
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    .line 1442
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$13;

    invoke-direct {v5, p0, v9}, Lcom/avos/avoscloud/AVQuery$13;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/CountCallback;)V

    iget-object v6, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v7, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 1465
    return-void
.end method

.method public static doCloudQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 1
    .param p0, "cql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1018
    const-class v0, Lcom/avos/avoscloud/AVObject;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVQuery;->doCloudQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public static doCloudQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .param p0, "cql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1033
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1034
    .local v0, "returnValue":Lcom/avos/avoscloud/AVCloudQueryResult;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$3;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$3;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v2, v3}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1046
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 1049
    :cond_0
    return-object v0
.end method

.method public static varargs doCloudQuery(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .param p0, "cql"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 960
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 961
    .local v0, "returnValue":Lcom/avos/avoscloud/AVCloudQueryResult;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$2;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$2;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const-class v2, Lcom/avos/avoscloud/AVObject;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, p2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 974
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 977
    :cond_0
    return-object v0
.end method

.method public static varargs doCloudQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 4
    .param p0, "cql"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 929
    new-instance v0, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 930
    .local v0, "returnValue":Lcom/avos/avoscloud/AVCloudQueryResult;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$1;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVQuery$1;-><init>(Lcom/avos/avoscloud/AVCloudQueryResult;)V

    const-class v2, Lcom/avos/avoscloud/AVObject;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, p1}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 942
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 945
    :cond_0
    return-object v0
.end method

.method public static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;)V
    .locals 3
    .param p0, "cql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1060
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    const-class v0, Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1061
    return-void
.end method

.method public static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V
    .locals 2
    .param p0, "cql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1073
    return-void
.end method

.method private static doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 11
    .param p0, "cql"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;Z[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1078
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1079
    .local v10, "pvalue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p4, :cond_0

    .line 1080
    move-object v6, p4

    .local v6, "arr$":[Ljava/lang/Object;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v9, v6, v7

    .line 1081
    .local v9, "o":Ljava/lang/Object;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1085
    .end local v6    # "arr$":[Ljava/lang/Object;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1086
    .local v2, "p":Lcom/loopj/android/http/RequestParams;
    const-string v0, "cql"

    invoke-virtual {v2, v0, p0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-static {v10}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1088
    const-string v0, "pvalues"

    invoke-static {v10}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "cloudQuery"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$4;

    invoke-direct {v5, p1, p2}, Lcom/avos/avoscloud/AVQuery$4;-><init>(Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1113
    return-void
.end method

.method public static varargs doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "cql"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 1006
    return-void
.end method

.method public static varargs doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "cql"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/CloudQueryCallback",
            "<",
            "Lcom/avos/avoscloud/AVCloudQueryResult;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 991
    .local p1, "callback":Lcom/avos/avoscloud/CloudQueryCallback;, "Lcom/avos/avoscloud/CloudQueryCallback<Lcom/avos/avoscloud/AVCloudQueryResult;>;"
    const-class v0, Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    .line 992
    return-void
.end method

.method private generateQueryPath()V
    .locals 4

    .prologue
    .line 188
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 190
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/PaasClient;->generateQueryPath(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 194
    :cond_0
    return-void
.end method

.method private getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V
    .locals 8
    .param p1, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1288
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1289
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v7

    .line 1290
    .local v7, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "limit"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string v0, "order"

    const-string v1, "-updatedAt"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    move-object v6, p2

    .line 1293
    .local v6, "internalCallback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$8;

    invoke-direct {v5, p0, v6}, Lcom/avos/avoscloud/AVQuery$8;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1323
    return-void
.end method

.method private getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V
    .locals 7
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1348
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p3, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpointByAVClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    .local v1, "path":Ljava/lang/String;
    move-object v6, p3

    .line 1350
    .local v6, "internalCallback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1351
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$10;

    invoke-direct {v5, p0, v6}, Lcom/avos/avoscloud/AVQuery$10;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1386
    return-void
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p0, "theClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "com.parse.AVQuery"

    return-object v0
.end method

.method public static getUserQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getQuery()Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public static or(Ljava/util/List;)Lcom/avos/avoscloud/AVQuery;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVQuery<TT;>;>;"
    const/4 v6, 0x0

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 816
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 818
    :cond_0
    new-instance v3, Lcom/avos/avoscloud/AVQuery;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 819
    .local v3, "result":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 820
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVQuery;

    .line 821
    .local v2, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {v2}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 822
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "All queries must be for the same class"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 824
    :cond_1
    new-instance v4, Lcom/avos/avoscloud/QueryOperation;

    const-string v5, "$or"

    const-string v6, "$or"

    iget-object v7, v2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v7}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lcom/avos/avoscloud/AVQuery;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVQuery;

    goto :goto_0

    .line 828
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    :cond_2
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVQuery;

    iget-object v4, v4, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v4}, Lcom/avos/avoscloud/QueryConditions;->getWhere()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/AVQuery;->setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;

    .line 831
    :cond_3
    return-object v3
.end method

.method private static processCloudResults(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;
    .locals 10
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVCloudQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1117
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v8, Lcom/avos/avoscloud/AVCloudQueryResult;

    invoke-direct {v8}, Lcom/avos/avoscloud/AVCloudQueryResult;-><init>()V

    .line 1118
    .local v8, "result":Lcom/avos/avoscloud/AVCloudQueryResult;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1120
    .local v1, "emptyResult":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    invoke-virtual {v8, v1}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    .line 1146
    .end local v1    # "emptyResult":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    :goto_0
    return-object v8

    .line 1123
    :cond_0
    new-instance v7, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v7}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 1124
    .local v7, "resp":Lcom/avos/avoscloud/AVResponse;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "resp":Lcom/avos/avoscloud/AVResponse;
    check-cast v7, Lcom/avos/avoscloud/AVResponse;

    .line 1126
    .restart local v7    # "resp":Lcom/avos/avoscloud/AVResponse;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1127
    .local v6, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v9, v7, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    if-eqz v9, :cond_4

    .line 1128
    iget-object v0, v7, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    .local v0, "arr$":[Ljava/util/Map;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .line 1129
    .local v3, "item":Ljava/util/Map;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1131
    if-eqz p1, :cond_3

    .line 1132
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVObject;

    .line 1133
    .local v5, "object":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1134
    iget-object v9, v7, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    .line 1139
    :cond_1
    :goto_2
    invoke-static {v3, v5}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1140
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    .end local v5    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1137
    :cond_3
    new-instance v5, Lcom/avos/avoscloud/AVObject;

    iget-object v9, v7, Lcom/avos/avoscloud/AVResponse;->className:Ljava/lang/String;

    invoke-direct {v5, v9}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .restart local v5    # "object":Lcom/avos/avoscloud/AVObject;
    goto :goto_2

    .line 1144
    .end local v0    # "arr$":[Ljava/util/Map;
    .end local v2    # "i$":I
    .end local v3    # "item":Ljava/util/Map;
    .end local v4    # "len$":I
    .end local v5    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_4
    iget v9, v7, Lcom/avos/avoscloud/AVResponse;->count:I

    invoke-virtual {v8, v9}, Lcom/avos/avoscloud/AVCloudQueryResult;->setCount(I)V

    .line 1145
    invoke-virtual {v8, v6}, Lcom/avos/avoscloud/AVCloudQueryResult;->setResults(Ljava/util/List;)V

    goto :goto_0
.end method

.method private queryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addAscendingOrder(Ljava/lang/String;)V

    .line 446
    return-object p0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addDescendingOrder(Ljava/lang/String;)V

    .line 458
    return-object p0
.end method

.method protected addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    return-object p0
.end method

.method protected assembleParameters()Ljava/util/Map;
    .locals 1
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
    .line 1534
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 305
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    return-void
.end method

.method public clearCachedResult()V
    .locals 2

    .prologue
    .line 319
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->generateQueryPath()V

    .line 320
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->delete(Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method public count()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1392
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 1393
    .local v0, "value":[I
    new-instance v1, Lcom/avos/avoscloud/AVQuery$11;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$11;-><init>(Lcom/avos/avoscloud/AVQuery;[I)V

    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 1408
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 1411
    :cond_0
    aget v1, v0, v2

    return v1
.end method

.method protected count(Z)I
    .locals 4
    .param p1, "needsLock"    # Z

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1415
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 1416
    .local v0, "value":[I
    new-instance v1, Lcom/avos/avoscloud/AVQuery$12;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$12;-><init>(Lcom/avos/avoscloud/AVQuery;[I)V

    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 1422
    aget v1, v0, v2

    return v1
.end method

.method public countInBackground(Lcom/avos/avoscloud/CountCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/CountCallback;

    .prologue
    .line 1432
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V

    .line 1433
    return-void
.end method

.method public deleteAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1508
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->find()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->deleteAll(Ljava/util/Collection;)V

    .line 1509
    return-void
.end method

.method public deleteAllInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 1518
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery$15;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVQuery$15;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/DeleteCallback;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVQuery;->findInBackground(Lcom/avos/avoscloud/FindCallback;)V

    .line 1531
    return-void
.end method

.method public find()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1474
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    .line 1475
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1476
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$14;

    invoke-direct {v5, p0, v9}, Lcom/avos/avoscloud/AVQuery$14;-><init>(Lcom/avos/avoscloud/AVQuery;Ljava/util/List;)V

    iget-object v6, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v7, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 1494
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1497
    :cond_0
    return-object v9
.end method

.method public findInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->assembleParameters()Ljava/util/Map;

    .line 1186
    move-object v9, p1

    .line 1188
    .local v9, "internalCallback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->queryPath()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVQuery;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVQuery$5;

    invoke-direct {v5, p0, v9}, Lcom/avos/avoscloud/AVQuery$5;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/FindCallback;)V

    iget-object v6, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iget-wide v7, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Lcom/avos/avoscloud/AVQuery$CachePolicy;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 1214
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 4
    .param p1, "theObjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1224
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 1225
    .local v0, "result":[Ljava/lang/Object;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$6;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$6;-><init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, v3, v1}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V

    .line 1240
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1241
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 1243
    :cond_0
    aget-object v1, v0, v2

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    return-object v1
.end method

.method public getCachePolicy()Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .prologue
    .line 200
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    return-object v0
.end method

.method getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method getExternalQueryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst()Lcom/avos/avoscloud/AVObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1254
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 1255
    .local v0, "result":[Ljava/lang/Object;
    new-instance v1, Lcom/avos/avoscloud/AVQuery$7;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVQuery$7;-><init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V

    invoke-direct {p0, v3, v1}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V

    .line 1270
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 1273
    :cond_0
    aget-object v1, v0, v2

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    return-object v1
.end method

.method public getFirstInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1284
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V

    .line 1285
    return-void
.end method

.method public getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 3
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1335
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    move-object v0, p2

    .line 1336
    .local v0, "internalCallback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<TT;>;"
    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVQuery$9;

    invoke-direct {v2, p0, v0}, Lcom/avos/avoscloud/AVQuery$9;-><init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/GetCallback;)V

    .line 1344
    return-void
.end method

.method getInclude()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getInclude()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getIsRunning()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->isRunning:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 359
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v0

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 232
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-wide v0, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    return-wide v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameters()Ljava/util/Map;
    .locals 1
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
    .line 140
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy()Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    return-object v0
.end method

.method getQueryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    return-object v0
.end method

.method getSelectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getSelectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 398
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v0

    return v0
.end method

.method getWhere()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getWhere()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hasCachedResult()Z
    .locals 2

    .prologue
    .line 349
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVQuery;->generateQueryPath()V

    .line 350
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCacheManager;->hasCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public include(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->include(Ljava/lang/String;)V

    .line 469
    return-object p0
.end method

.method public isTrace()Z
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->isTrace()Z

    move-result v0

    return v0
.end method

.method public limit(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setLimit(I)Lcom/avos/avoscloud/AVQuery;

    .line 381
    return-object p0
.end method

.method public order(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;

    .line 434
    return-object p0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    .line 491
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    .line 502
    return-object p0
.end method

.method protected processAdditionalInfo(Ljava/lang/String;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1152
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<TT;>;"
    return-void
.end method

.method protected processResults(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1156
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 1175
    :cond_0
    return-object v6

    .line 1159
    :cond_1
    new-instance v5, Lcom/avos/avoscloud/AVResponse;

    invoke-direct {v5}, Lcom/avos/avoscloud/AVResponse;-><init>()V

    .line 1160
    .local v5, "resp":Lcom/avos/avoscloud/AVResponse;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "resp":Lcom/avos/avoscloud/AVResponse;
    check-cast v5, Lcom/avos/avoscloud/AVResponse;

    .line 1162
    .restart local v5    # "resp":Lcom/avos/avoscloud/AVResponse;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1163
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, v5, Lcom/avos/avoscloud/AVResponse;->results:[Ljava/util/Map;

    .local v0, "arr$":[Ljava/util/Map;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1164
    .local v2, "item":Ljava/util/Map;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1166
    iget-object v7, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    if-eqz v7, :cond_3

    .line 1167
    iget-object v7, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVObject;

    .line 1171
    .local v4, "object":Lcom/avos/avoscloud/AVObject;
    :goto_1
    invoke-static {v2, v4}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1172
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    .end local v4    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    :cond_3
    iget-object v7, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v4

    .restart local v4    # "object":Lcom/avos/avoscloud/AVObject;
    goto :goto_1
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->selectKeys(Ljava/util/Collection;)V

    .line 480
    return-object p0
.end method

.method public setCachePolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "cachePolicy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 210
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method setClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->clazz:Ljava/lang/Class;

    .line 113
    return-void
.end method

.method setExternalQueryPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 160
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->externalQueryPath:Ljava/lang/String;

    .line 161
    return-void
.end method

.method setInclude(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "include":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setInclude(Ljava/util/List;)V

    .line 121
    return-void
.end method

.method setIsRunning(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isRunning"    # Ljava/lang/Boolean;

    .prologue
    .line 136
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->isRunning:Ljava/lang/Boolean;

    .line 137
    return-void
.end method

.method public setLimit(I)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    .line 371
    return-object p0
.end method

.method public setMaxCacheAge(J)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "maxCacheAge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-wide p1, p0, Lcom/avos/avoscloud/AVQuery;->maxCacheAge:J

    .line 242
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setOrder(Ljava/lang/String;)V

    .line 424
    return-object p0
.end method

.method setParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setParameters(Ljava/util/Map;)V

    .line 145
    return-void
.end method

.method public setPolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "policy"    # Lcom/avos/avoscloud/AVQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVQuery$CachePolicy;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->cachePolicy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 224
    return-object p0
.end method

.method setQueryPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryPath"    # Ljava/lang/String;

    .prologue
    .line 152
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery;->queryPath:Ljava/lang/String;

    .line 153
    return-void
.end method

.method setSelectedKeys(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSelectedKeys(Ljava/util/Set;)V

    .line 129
    return-void
.end method

.method public setSkip(I)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    .line 409
    return-object p0
.end method

.method public setTrace(Z)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "trace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setTrace(Z)V

    .line 257
    return-object p0
.end method

.method setWhere(Ljava/util/Map;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 915
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setWhere(Ljava/util/Map;)V

    .line 916
    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/AVQuery;
    .locals 0
    .param p1, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVQuery;->setSkip(I)Lcom/avos/avoscloud/AVQuery;

    .line 391
    return-object p0
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 515
    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContains(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 556
    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereDoesNotExist(Ljava/lang/String;)V

    .line 566
    return-object p0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 888
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p3, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<*>;"
    const-string v2, "className"

    iget-object v3, p3, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 889
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "where"

    iget-object v3, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v3}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string v2, "query"

    invoke-static {v2, v0}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 892
    .local v1, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "key"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string v2, "$dontSelect"

    invoke-virtual {p0, p1, v2, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 895
    return-object p0
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<*>;"
    const-string v1, "className"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 908
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "where"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string v1, "$notInQuery"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 911
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereExists(Ljava/lang/String;)V

    .line 621
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "modifiers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p3, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 847
    .local v0, "inner":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "className"

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-string v2, "where"

    iget-object v3, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v3}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v2, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "skip"

    iget-object v3, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v3}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_0
    iget-object v2, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "limit"

    iget-object v3, p3, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v3}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_1
    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "order"

    invoke-virtual {p3}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 854
    .local v1, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "query"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string v2, "key"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string v2, "$select"

    invoke-virtual {p0, p1, v2, v1}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v2

    return-object v2
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/avos/avoscloud/AVQuery;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVQuery",
            "<*>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 868
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<*>;"
    const-string v1, "where"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 870
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "className"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->className:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "skip"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    :cond_0
    iget-object v1, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "limit"

    iget-object v2, p2, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v2}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    :cond_1
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "order"

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVQuery;->getOrder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_2
    const-string v1, "$inQuery"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 875
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 714
    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 727
    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 739
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    return-object p0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 540
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereSizeEqual(Ljava/lang/String;I)V

    .line 541
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 752
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "southwest"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "northeast"    # Lcom/avos/avoscloud/AVGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 767
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 781
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 789
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 790
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 803
    .local p0, "this":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 804
    return-object p0
.end method
