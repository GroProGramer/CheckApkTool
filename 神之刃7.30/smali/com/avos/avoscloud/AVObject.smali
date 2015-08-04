.class public Lcom/avos/avoscloud/AVObject;
.super Ljava/lang/Object;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVObject$KeyValueCallback;,
        Lcom/avos/avoscloud/AVObject$FetchObjectCallback;
    }
.end annotation


# static fields
.field public static final INVALID_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String;

.field private static final SUB_CLASSES_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static deserializing:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected transient acl:Lcom/avos/avoscloud/AVACL;

.field private className:Ljava/lang/String;

.field private createdAt:Ljava/lang/String;

.field private volatile fetchWhenSave:Z

.field private isDataReady:Z

.field protected keyValues:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVKeyValues",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected objectId:Ljava/lang/String;

.field protected pendingKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient queue:Lcom/avos/avoscloud/AVOperationQueue;

.field private volatile transient running:Z

.field private updatedAt:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    .line 1328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    .line 1331
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "code"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1332
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1333
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "className"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1334
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "keyValues"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1335
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "fetchWhenSave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1336
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "running"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1337
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "acl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1338
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "ACL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1339
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "isDataReady"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1340
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "pendingKeys"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1341
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "createdAt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1342
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "updatedAt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1343
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    const-string v1, "objectId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1356
    new-instance v0, Lcom/avos/avoscloud/AVObject$11;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject$11;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject;->deserializing:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    .line 98
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    .line 323
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 325
    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->init()V

    .line 326
    return-void
.end method

.method private static _saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 13
    .param p0, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1593
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/avos/avoscloud/AVObject;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1594
    .local v1, "list":Ljava/util/LinkedList;
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1595
    .local v9, "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/avos/avoscloud/AVObject;

    .line 1596
    .local v12, "o":Lcom/avos/avoscloud/AVObject;
    invoke-direct {v12}, Lcom/avos/avoscloud/AVObject;->checkCircleReference()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1597
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->circleException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1688
    .end local v12    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_1
    :goto_1
    return-void

    .line 1601
    .restart local v12    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_2
    :try_start_0
    invoke-direct {v12, v1, p0}, Lcom/avos/avoscloud/AVObject;->addBatchSaveRequest(Ljava/util/LinkedList;Z)Ljava/util/List;

    move-result-object v10

    .line 1602
    .local v10, "filesNeedToUpload":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1603
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1605
    .end local v10    # "filesNeedToUpload":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    :catch_0
    move-exception v8

    .line 1606
    .local v8, "e":Lcom/avos/avoscloud/AVException;
    if-eqz p2, :cond_0

    .line 1607
    invoke-virtual {p2, v8}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1611
    .end local v8    # "e":Lcom/avos/avoscloud/AVException;
    .end local v12    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_3
    new-instance v5, Lcom/avos/avoscloud/AVObject$17;

    invoke-direct {v5, p1, p0, p2}, Lcom/avos/avoscloud/AVObject$17;-><init>(Ljava/util/List;ZLcom/avos/avoscloud/SaveCallback;)V

    .line 1669
    .local v5, "genericObjectCallback":Lcom/avos/avoscloud/GenericObjectCallback;
    if-eqz v9, :cond_4

    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1670
    new-instance v0, Lcom/avos/avoscloud/AVObject$18;

    invoke-direct {v0, v1, p0, v5}, Lcom/avos/avoscloud/AVObject$18;-><init>(Ljava/util/LinkedList;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    invoke-static {v9, p0, v1, v0}, Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    :try_end_1
    .catch Lcom/avos/avoscloud/AVException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1683
    :catch_1
    move-exception v8

    .line 1684
    .restart local v8    # "e":Lcom/avos/avoscloud/AVException;
    if-eqz p2, :cond_1

    .line 1685
    invoke-virtual {p2, v8}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    .line 1680
    .end local v8    # "e":Lcom/avos/avoscloud/AVException;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/avos/avoscloud/AVException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private _saveObject(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .param p1, "list"    # Ljava/util/List;
    .param p2, "sync"    # Z
    .param p3, "isEventually"    # Z
    .param p4, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    const/4 v4, 0x0

    .line 1756
    const/4 v2, 0x1

    .line 1757
    .local v2, "runCallback":Z
    const/4 v0, 0x0

    .line 1758
    .local v0, "operation":Lcom/avos/avoscloud/AVOperation;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1759
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    invoke-virtual {v3, p1, p4}, Lcom/avos/avoscloud/AVOperationQueue;->addSnapshotOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;

    move-result-object v0

    .line 1760
    const/4 v2, 0x0

    .line 1763
    :cond_0
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1764
    if-eqz v0, :cond_1

    .line 1765
    invoke-virtual {v0, v4}, Lcom/avos/avoscloud/AVOperation;->setLast(Z)V

    .line 1768
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1769
    .local v1, "pendingRequests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/AVObject;->addPendingBatchRequest(Ljava/util/LinkedList;)V

    .line 1770
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1771
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    invoke-virtual {v3, v1, p4}, Lcom/avos/avoscloud/AVOperationQueue;->addPendingOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;

    .line 1772
    const/4 v2, 0x0

    .line 1776
    .end local v1    # "pendingRequests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVOperationQueue;->increaseSequence()V

    .line 1777
    iget-boolean v3, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    if-eqz v3, :cond_3

    .line 1778
    const-string v3, "already has one request sending"

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 1792
    :goto_0
    return-void

    .line 1781
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    .line 1783
    if-eqz v2, :cond_5

    .line 1784
    if-eqz p4, :cond_4

    .line 1785
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 1786
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1788
    :cond_4
    iput-boolean v4, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    goto :goto_0

    .line 1790
    :cond_5
    invoke-direct {p0, p2, p3, p4}, Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/AVObject;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AVObject;Ljava/util/LinkedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->addPendingBatchRequest(Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method static synthetic access$502(Lcom/avos/avoscloud/AVObject;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    return p1
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method private addBatchSaveRequest(Ljava/util/LinkedList;Z)Ljava/util/List;
    .locals 13
    .param p1, "list"    # Ljava/util/LinkedList;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 2048
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2049
    .local v2, "fileNeedToUpload":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2050
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/AVKeyValues;

    .line 2051
    .local v6, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v8, v6, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 2052
    .local v8, "o":Ljava/lang/Object;
    iget-object v5, v6, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    .line 2055
    .local v5, "k":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-class v12, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v12, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2056
    check-cast v8, Lcom/avos/avoscloud/AVObject;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-direct {v8, p1, p2}, Lcom/avos/avoscloud/AVObject;->addBatchSaveRequest(Ljava/util/LinkedList;Z)Ljava/util/List;

    move-result-object v3

    .line 2057
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2058
    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz v8, :cond_0

    const-class v12, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v12, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v1, v8

    .line 2059
    check-cast v1, Lcom/avos/avoscloud/AVFile;

    .line 2060
    .local v1, "file":Lcom/avos/avoscloud/AVFile;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getObjectId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    .line 2061
    if-eqz p2, :cond_2

    .line 2062
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->save()V

    goto :goto_0

    .line 2064
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2069
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    .end local v1    # "file":Lcom/avos/avoscloud/AVFile;
    .end local v5    # "k":Ljava/lang/String;
    .end local v6    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v8    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->batchRequestFromKeyValues()Ljava/util/Map;

    move-result-object v7

    .line 2070
    .local v7, "map":Ljava/util/Map;
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 2071
    const/4 v11, 0x0

    .line 2072
    .local v11, "skip":Z
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 2073
    .local v9, "req":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 2074
    .local v10, "reqInternalId":Ljava/lang/String;
    instance-of v12, v9, Ljava/util/Map;

    if-eqz v12, :cond_5

    .line 2075
    check-cast v9, Ljava/util/Map;

    .end local v9    # "req":Ljava/lang/Object;
    invoke-static {v9}, Lcom/avos/avoscloud/AVPowerfulUtils;->getInternalIdFromRequestBody(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 2077
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2078
    const/4 v11, 0x1

    .line 2082
    .end local v10    # "reqInternalId":Ljava/lang/String;
    :cond_6
    if-nez v11, :cond_7

    .line 2083
    invoke-virtual {p1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2086
    .end local v11    # "skip":Z
    :cond_7
    return-object v2
.end method

.method private addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "unique"    # Z

    .prologue
    .line 2288
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2289
    new-instance v0, Lcom/avos/avoscloud/AVObject$24;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/avos/avoscloud/AVObject$24;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/Object;ZLjava/lang/String;)V

    .line 2323
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Collection<Ljava/lang/Object;>;>;"
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 2326
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Collection<Ljava/lang/Object;>;>;"
    :cond_0
    return-void
.end method

.method private addPendingBatchRequest(Ljava/util/LinkedList;)V
    .locals 9
    .param p1, "list"    # Ljava/util/LinkedList;

    .prologue
    .line 2090
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->batchRequestFromPendingKeys()Ljava/util/List;

    move-result-object v7

    .line 2091
    .local v7, "requests":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    const/4 v1, 0x0

    .line 2092
    .local v1, "i":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2093
    .local v5, "map":Ljava/util/Map;
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2094
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p1, v1, v5}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 2097
    .end local v5    # "map":Ljava/util/Map;
    :cond_1
    iget-object v8, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2098
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVKeyValues;

    .line 2099
    .local v4, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v6, v4, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 2102
    .local v6, "o":Ljava/lang/Object;
    if-eqz v6, :cond_2

    const-class v8, Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2103
    check-cast v6, Lcom/avos/avoscloud/AVObject;

    .end local v6    # "o":Ljava/lang/Object;
    invoke-direct {v6, p1}, Lcom/avos/avoscloud/AVObject;->addPendingBatchRequest(Ljava/util/LinkedList;)V

    goto :goto_1

    .line 2106
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    .end local v4    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_3
    return-void
.end method

.method public static beginDeserialize()V
    .locals 2

    .prologue
    .line 1366
    sget-object v0, Lcom/avos/avoscloud/AVObject;->deserializing:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1367
    return-void
.end method

.method private checkCircleReference()Z
    .locals 1

    .prologue
    .line 2113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;->checkCircleReference(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private checkCircleReference(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "status":Ljava/util/Map;, "Ljava/util/Map<Lcom/avos/avoscloud/AVObject;Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2120
    const/4 v3, 0x1

    .line 2122
    .local v3, "result":Z
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2123
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVKeyValues;

    .line 2132
    .local v1, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v2, v1, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 2133
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Lcom/avos/avoscloud/AVObject;

    if-eqz v4, :cond_0

    .line 2134
    if-eqz v3, :cond_3

    check-cast v2, Lcom/avos/avoscloud/AVObject;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-direct {v2, p1}, Lcom/avos/avoscloud/AVObject;->checkCircleReference(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v5

    :goto_1
    goto :goto_0

    .line 2124
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2125
    const-string v4, "Found a circular dependency while saving"

    invoke-static {v4}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 2140
    :goto_2
    return v6

    :cond_2
    move v6, v5

    .line 2128
    goto :goto_2

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_3
    move v3, v6

    .line 2134
    goto :goto_1

    .line 2138
    .end local v1    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v3

    .line 2140
    goto :goto_2
.end method

.method private checkKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1347
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_0
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key should not start with \'_\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal key name:`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`,please use setter/getter for it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    .line 1353
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyFromJsonArray(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 1871
    :try_start_0
    const-class v6, Ljava/util/ArrayList;

    invoke-static {p1, v6}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1872
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1873
    .local v5, "map":Ljava/util/Map;
    const-string v6, "success"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1874
    .local v4, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_1

    .line 1875
    invoke-static {v4, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1882
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "map":Ljava/util/Map;
    :catch_0
    move-exception v1

    .line 1883
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "parse jsonArray exception"

    invoke-static {v6, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1885
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 1877
    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "map":Ljava/util/Map;
    :cond_1
    :try_start_1
    const-string v6, "error"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1878
    .local v2, "errorMap":Ljava/util/Map;
    const-string v6, "code"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v7

    const-string v6, "error"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/Class;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 4
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
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
    .line 452
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 453
    .local v1, "result":Lcom/avos/avoscloud/AVObject;, "TT;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVObject;->setClassName(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    return-object v1

    .line 456
    .end local v1    # "result":Lcom/avos/avoscloud/AVObject;, "TT;"
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/avos/avoscloud/AVException;

    const-string v3, "Create subclass instance failed."

    invoke-direct {v2, v3, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 428
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "object":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V

    .line 430
    return-object v0
.end method

.method private delete(ZZLcom/avos/avoscloud/DeleteCallback;)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "isEventually"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 631
    move-object v7, p3

    .line 632
    .local v7, "internalCallback":Lcom/avos/avoscloud/DeleteCallback;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/avos/avoscloud/AVObject$4;

    invoke-direct {v4, p0, v7}, Lcom/avos/avoscloud/AVObject$4;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/DeleteCallback;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public static deleteAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$2;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVObject$2;-><init>()V

    invoke-static {v0, v1, p0, v2}, Lcom/avos/avoscloud/AVObject;->deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 506
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 509
    :cond_0
    return-void
.end method

.method private static deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 14
    .param p0, "sync"    # Z
    .param p1, "isEventually"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Collection",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/avos/avoscloud/AVObject;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 574
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    if-eqz p1, :cond_4

    .line 531
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/avos/avoscloud/AVObject;

    .line 532
    .local v11, "object":Lcom/avos/avoscloud/AVObject;
    if-eqz v11, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    goto :goto_1

    .line 535
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_4
    const/4 v8, 0x0

    .line 536
    .local v8, "className":Ljava/lang/String;
    const/4 v13, 0x1

    .line 537
    .local v13, "wasFirst":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v12, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/avos/avoscloud/AVObject;

    .line 539
    .restart local v11    # "object":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v11}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v11, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 540
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid AVObject, the class name or objectId is blank."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_6
    if-nez v8, :cond_8

    .line 544
    invoke-virtual {v11}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 548
    :cond_7
    if-eqz v13, :cond_9

    .line 549
    invoke-static {v11}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const/4 v13, 0x0

    goto :goto_2

    .line 545
    :cond_8
    invoke-virtual {v11}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The objects class name must be the same."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_9
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 556
    .end local v11    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_a
    move-object/from16 v10, p3

    .line 557
    .local v10, "internalCallback":Lcom/avos/avoscloud/DeleteCallback;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "endpoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVObject$3;

    invoke-direct {v5, v10}, Lcom/avos/avoscloud/AVObject$3;-><init>(Lcom/avos/avoscloud/DeleteCallback;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static deleteAllInBackground(Ljava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p1, "deleteCallback"    # Lcom/avos/avoscloud/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    .line 521
    invoke-static {v0, v0, p0, p1}, Lcom/avos/avoscloud/AVObject;->deleteAll(ZZLjava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V

    .line 522
    return-void
.end method

.method public static endDeserialize()V
    .locals 2

    .prologue
    .line 1370
    sget-object v0, Lcom/avos/avoscloud/AVObject;->deserializing:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1371
    return-void
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 683
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 684
    .local v1, "o":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->fetch()Lcom/avos/avoscloud/AVObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    .end local v1    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_0
    return-object v2
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 697
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 698
    .local v1, "o":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVObject;->fetchIfNeeded()Lcom/avos/avoscloud/AVObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 700
    .end local v1    # "o":Lcom/avos/avoscloud/AVObject;
    :cond_0
    return-object v2
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    .local p1, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVObject;>;"
    move-object v0, p1

    .line 712
    .local v0, "internalCallback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v2, 0x1

    new-instance v3, Lcom/avos/avoscloud/AVObject$6;

    invoke-direct {v3, v1, v0}, Lcom/avos/avoscloud/AVObject$6;-><init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V

    invoke-static {v2, p0, v3}, Lcom/avos/avoscloud/AVObject;->fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 724
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    .local p1, "callback":Lcom/avos/avoscloud/FindCallback;, "Lcom/avos/avoscloud/FindCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$7;

    invoke-direct {v2, v0, p1}, Lcom/avos/avoscloud/AVObject$7;-><init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V

    invoke-static {v1, p0, v2}, Lcom/avos/avoscloud/AVObject;->fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 746
    return-void
.end method

.method private static fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 7
    .param p0, "check"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/GenericObjectCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 750
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 751
    .local v3, "total":I
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 752
    .local v0, "counter":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVObject;

    .line 753
    .local v2, "object":Lcom/avos/avoscloud/AVObject;
    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 754
    :cond_1
    new-instance v4, Lcom/avos/avoscloud/AVObject$8;

    invoke-direct {v4, p2, v0, v3}, Lcom/avos/avoscloud/AVObject$8;-><init>(Lcom/avos/avoscloud/GenericObjectCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-direct {v2, v5, v6, v4}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    goto :goto_0

    .line 762
    :cond_2
    if-eqz p2, :cond_0

    .line 763
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    invoke-virtual {p2, v4, v3, v2}, Lcom/avos/avoscloud/GenericObjectCallback;->onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V

    goto :goto_0

    .line 767
    .end local v2    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    if-eqz p2, :cond_4

    .line 768
    invoke-virtual {p2, v5, v5, v6}, Lcom/avos/avoscloud/GenericObjectCallback;->onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V

    .line 770
    :cond_4
    return-void
.end method

.method private fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v3, 0x0

    .line 848
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    if-eqz p3, :cond_0

    .line 850
    const/16 v0, 0x68

    const-string v1, "Missing objectId"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v6

    .line 852
    .local v6, "exception":Lcom/avos/avoscloud/AVException;
    invoke-virtual {p3, v3, v6}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 862
    .end local v6    # "exception":Lcom/avos/avoscloud/AVException;
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 857
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 858
    const-string v0, "include"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2, v7}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;

    invoke-direct {v5, p0, p3, v3}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method private findArray(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 2184
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 2186
    .local v1, "array":Ljava/util/List;
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 2187
    if-nez v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v2, v1

    .line 2196
    .end local v1    # "array":Ljava/util/List;
    :goto_0
    return-object v2

    .line 2190
    .restart local v1    # "array":Ljava/util/List;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2191
    .end local v1    # "array":Ljava/util/List;
    .local v2, "array":Ljava/util/List;
    :try_start_1
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 2192
    .end local v2    # "array":Ljava/util/List;
    .restart local v1    # "array":Ljava/util/List;
    goto :goto_0

    .line 2193
    :catch_0
    move-exception v3

    .line 2194
    .local v3, "exception":Ljava/lang/Exception;
    :goto_1
    sget-object v4, Lcom/avos/avoscloud/AVObject;->LOGTAG:Ljava/lang/String;

    const-string v5, "find array failed."

    invoke-static {v4, v5, v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v2, v1

    .line 2196
    .local v2, "array":Ljava/lang/Object;
    goto :goto_0

    .line 2193
    .end local v1    # "array":Ljava/util/List;
    .end local v3    # "exception":Ljava/lang/Exception;
    .local v2, "array":Ljava/util/List;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "array":Ljava/util/List;
    .restart local v1    # "array":Ljava/util/List;
    goto :goto_1
.end method

.method private getBatchParams()Ljava/util/Map;
    .locals 3

    .prologue
    .line 2039
    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    if-eqz v1, :cond_0

    .line 2040
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2041
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "new"

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getParsedList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p0, "list"    # Ljava/util/Collection;

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v1, "newList":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 155
    .local v2, "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/avos/avoscloud/AVObject;->parseObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method private static getParsedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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
    .line 162
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 164
    .local v3, "newMap":Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 167
    .local v4, "o":Ljava/lang/Object;
    invoke-static {v4}, Lcom/avos/avoscloud/AVObject;->parseObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_0
    return-object v3
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
    .line 368
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method static getSubClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    sget-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method static getSubClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 286
    :cond_0
    const-class v0, Lcom/avos/avoscloud/AVRole;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    const-string v0, "_Role"

    goto :goto_0

    .line 289
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    const-string v0, ""

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 330
    iput-boolean v2, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    .line 331
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lcom/avos/avoscloud/AVACL;

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVACL;-><init>(Lcom/avos/avoscloud/AVACL;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    .line 334
    :cond_0
    iput-boolean v2, p0, Lcom/avos/avoscloud/AVObject;->running:Z

    .line 335
    new-instance v0, Lcom/avos/avoscloud/AVOperationQueue;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVOperationQueue;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    .line 336
    return-void
.end method

.method private static parseObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-nez p0, :cond_1

    .line 127
    const/4 p0, 0x0

    .line 147
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 128
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 129
    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 130
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 131
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getParsedList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 132
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_4

    .line 133
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 134
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v0, :cond_5

    .line 135
    check-cast p0, Lcom/avos/avoscloud/AVGeoPoint;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 136
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 137
    check-cast p0, Ljava/util/Date;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 138
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [B

    if-eqz v0, :cond_7

    .line 139
    check-cast p0, [B

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 140
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_8

    .line 141
    check-cast p0, Lcom/avos/avoscloud/AVFile;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 142
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_9

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 144
    :cond_9
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method private refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 7
    .param p1, "sync"    # Z
    .param p2, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1469
    .local p3, "callback":Lcom/avos/avoscloud/RefreshCallback;, "Lcom/avos/avoscloud/RefreshCallback<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1470
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    const-string v0, "include"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2, v6}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;

    const/4 v3, 0x0

    invoke-direct {v5, p0, p3, v3}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 1475
    return-void
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Lcom/avos/avoscloud/AVClassName;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVClassName;

    .line 301
    .local v1, "parseClassName":Lcom/avos/avoscloud/AVClassName;
    if-nez v1, :cond_0

    .line 302
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The class is not annotated by @AVClassName"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_0
    invoke-interface {v1}, Lcom/avos/avoscloud/AVClassName;->value()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->checkClassName(Ljava/lang/String;)V

    .line 306
    sget-object v2, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_MAP:Ljava/util/Map;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v2, Lcom/avos/avoscloud/AVObject;->SUB_CLASSES_REVERSE_MAP:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void
.end method

.method private removeObjectForKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2329
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2330
    new-instance v0, Lcom/avos/avoscloud/AVObject$25;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVObject$25;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 2347
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Void;>;"
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 2349
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1552
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$16;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVObject$16;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1565
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1568
    :cond_0
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1577
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1578
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1588
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1589
    return-void
.end method

.method public static saveFileBeforeSave(Ljava/util/List;ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 5
    .param p1, "sync"    # Z
    .param p2, "list"    # Ljava/util/List;
    .param p3, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;Z",
            "Ljava/util/List;",
            "Lcom/avos/avoscloud/SaveCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 2353
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    if-eqz p1, :cond_3

    .line 2354
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVFile;

    .line 2355
    .local v1, "file":Lcom/avos/avoscloud/AVFile;
    if-eqz v1, :cond_0

    .line 2356
    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->save()V

    goto :goto_0

    .line 2359
    .end local v1    # "file":Lcom/avos/avoscloud/AVFile;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 2381
    :cond_2
    return-void

    .line 2361
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->collectionNonNullCount(Ljava/util/Collection;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2362
    .local v3, "lock":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2363
    .local v0, "failureLock":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVFile;

    .line 2364
    .restart local v1    # "file":Lcom/avos/avoscloud/AVFile;
    if-eqz v1, :cond_4

    .line 2365
    new-instance v4, Lcom/avos/avoscloud/AVObject$26;

    invoke-direct {v4, v0, p3, v3}, Lcom/avos/avoscloud/AVObject$26;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/avos/avoscloud/SaveCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v4}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_1
.end method

.method private saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;
    .param p2, "isEventually"    # Z

    .prologue
    .line 2162
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 2163
    return-void
.end method

.method private saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 4
    .param p1, "sync"    # Z
    .param p2, "isEventually"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1731
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1733
    .local v2, "list":Ljava/util/LinkedList;
    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/avos/avoscloud/AVObject;->addBatchSaveRequest(Ljava/util/LinkedList;Z)Ljava/util/List;

    move-result-object v1

    .line 1734
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1735
    new-instance v3, Lcom/avos/avoscloud/AVObject$19;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/avos/avoscloud/AVObject$19;-><init>(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V

    invoke-static {v1, p1, v2, v3}, Lcom/avos/avoscloud/AVObject;->saveFileBeforeSave(Ljava/util/List;ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V

    .line 1752
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    :cond_0
    :goto_0
    return-void

    .line 1744
    .restart local v1    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    :cond_1
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/avos/avoscloud/AVObject;->_saveObject(Ljava/util/List;ZZLcom/avos/avoscloud/SaveCallback;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1746
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVFile;>;"
    :catch_0
    move-exception v0

    .line 1747
    .local v0, "e":Lcom/avos/avoscloud/AVException;
    if-eqz p3, :cond_0

    .line 1748
    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method private saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 22
    .param p1, "sync"    # Z
    .param p2, "isEventually"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1801
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1802
    .local v5, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v18, 0x0

    .line 1804
    .local v18, "operation":Lcom/avos/avoscloud/AVOperation;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVObject;->queue:Lcom/avos/avoscloud/AVOperationQueue;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVOperationQueue;->popHead()Lcom/avos/avoscloud/AVOperation;

    move-result-object v18

    .line 1805
    if-nez v18, :cond_1

    .line 1867
    :goto_0
    return-void

    .line 1809
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVOperation;->isPendingRequest()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1811
    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVOperation;->getBatchRequest()Ljava/util/List;

    move-result-object v21

    .line 1812
    .local v21, "requests":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 1813
    .local v20, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object v19

    .line 1815
    .local v19, "path":Ljava/lang/String;
    const-string v4, "body"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 1816
    .local v12, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v12, :cond_5

    .line 1817
    const-string v4, "__children"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 1818
    .local v14, "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1819
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 1820
    .local v13, "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "key"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1821
    .local v17, "key":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1822
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVObject;->getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/avos/avoscloud/AVUtils;->mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 1826
    .end local v13    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    :cond_4
    const-string v4, "__internalId"

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    .end local v14    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_5
    const-string v4, "path"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1830
    const-string v4, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1835
    .end local v12    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "requests":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVOperation;->getBatchRequest()Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1837
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/avos/avoscloud/AVOperation;->getLast()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1839
    :cond_7
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/AVObject;->headerMap()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lcom/avos/avoscloud/AVObject$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/avos/avoscloud/AVObject$20;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/SaveCallback;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v11

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v4 .. v11}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 346
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 357
    .local v1, "item":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 359
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 381
    .local v1, "item":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 383
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method addRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "submit"    # Z

    .prologue
    .line 2233
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2234
    new-instance v0, Lcom/avos/avoscloud/AVObject$22;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVObject$22;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 2256
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 2258
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    :cond_0
    return-void
.end method

.method addRelationFromServer(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "submit"    # Z

    .prologue
    .line 2208
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2209
    new-instance v0, Lcom/avos/avoscloud/AVObject$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$21;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    invoke-virtual {v0, p1, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 2230
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    :cond_0
    return-void
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 393
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 394
    return-void
.end method

.method protected alwaysSaveAllKeyValues()Z
    .locals 1

    .prologue
    .line 1983
    const/4 v0, 0x0

    return v0
.end method

.method protected alwaysUsePost()Z
    .locals 1

    .prologue
    .line 1923
    const/4 v0, 0x0

    return v0
.end method

.method protected batchRequestFromKeyValues()Ljava/util/Map;
    .locals 14

    .prologue
    .line 1988
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v12}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->alwaysSaveAllKeyValues()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1989
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1990
    .local v0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1992
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1993
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1994
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/AVKeyValues;

    .line 1995
    .local v6, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v8, v6, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 1997
    .local v8, "o":Ljava/lang/Object;
    iget-boolean v12, v6, Lcom/avos/avoscloud/AVKeyValues;->relationKey:Z

    if-nez v12, :cond_1

    .line 1998
    instance-of v12, v8, Lcom/avos/avoscloud/AVObject;

    if-eqz v12, :cond_2

    move-object v9, v8

    .line 1999
    check-cast v9, Lcom/avos/avoscloud/AVObject;

    .line 2000
    .local v9, "oo":Lcom/avos/avoscloud/AVObject;
    invoke-static {v9, v5}, Lcom/avos/avoscloud/AVUtils;->mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2001
    .local v1, "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2014
    .end local v1    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "o":Ljava/lang/Object;
    .end local v9    # "oo":Lcom/avos/avoscloud/AVObject;
    :goto_1
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    invoke-interface {v12, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2015
    invoke-virtual {v6}, Lcom/avos/avoscloud/AVKeyValues;->resetOp()V

    goto :goto_0

    .line 2002
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v12, v8, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v12, :cond_3

    .line 2003
    check-cast v8, Lcom/avos/avoscloud/AVGeoPoint;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2004
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v12, v8, Ljava/util/Date;

    if-eqz v12, :cond_4

    .line 2005
    check-cast v8, Ljava/util/Date;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2006
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v12, v8, [B

    if-eqz v12, :cond_5

    .line 2007
    check-cast v8, [B

    .end local v8    # "o":Ljava/lang/Object;
    check-cast v8, [B

    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2008
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v12, v8, Lcom/avos/avoscloud/AVFile;

    if-eqz v12, :cond_6

    .line 2009
    check-cast v8, Lcom/avos/avoscloud/AVFile;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2011
    .restart local v8    # "o":Ljava/lang/Object;
    :cond_6
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2019
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v8    # "o":Ljava/lang/Object;
    :cond_7
    const-string v12, "__children"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    if-eqz v12, :cond_8

    .line 2021
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    invoke-virtual {v12}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v12

    invoke-static {v12}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2024
    :cond_8
    const-string v12, "__internalId"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    const-string v7, "PUT"

    .line 2026
    .local v7, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->alwaysUsePost()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_9
    const/4 v11, 0x1

    .line 2027
    .local v11, "post":Z
    :goto_2
    if-eqz v11, :cond_a

    .line 2028
    const-string v7, "POST"

    .line 2030
    :cond_a
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v12

    invoke-virtual {v12}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, p0, v11}, Lcom/avos/avoscloud/AVPowerfulUtils;->getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;Z)Ljava/lang/String;

    move-result-object v10

    .line 2033
    .local v10, "path":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v12

    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->getBatchParams()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v7, v10, v0, v13}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    .line 2035
    .end local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "method":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "post":Z
    :goto_3
    return-object v12

    .line 2026
    .restart local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "method":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    goto :goto_2

    .line 2035
    .end local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "method":Ljava/lang/String;
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    goto :goto_3
.end method

.method protected batchRequestFromPendingKeys()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1927
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1928
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    const/4 v6, -0x1

    .line 1929
    .local v6, "maxSize":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1930
    .local v10, "pendingKeyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVKeyValues;

    .line 1931
    .local v5, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    iget-object v13, v5, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1932
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVKeyValues;->opSize()I

    move-result v12

    if-le v12, v6, :cond_1

    .line 1933
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVKeyValues;->opSize()I

    move-result v6

    .line 1935
    :cond_1
    iget-object v12, v5, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    invoke-interface {v10, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1938
    .end local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_2
    if-gtz v6, :cond_3

    .line 1939
    const/4 v6, 0x1

    .line 1941
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_a

    .line 1942
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1943
    .local v0, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1944
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVKeyValues;

    .line 1945
    .restart local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    invoke-virtual {v5, v3}, Lcom/avos/avoscloud/AVKeyValues;->getOp(I)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v8

    .line 1946
    .local v8, "op":Lcom/avos/avoscloud/ops/AVOp;
    if-eqz v8, :cond_4

    sget-object v12, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    if-eq v8, v12, :cond_4

    .line 1947
    iget-object v12, v5, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    instance-of v12, v12, Lcom/avos/avoscloud/AVObject;

    if-eqz v12, :cond_5

    .line 1948
    iget-object v12, v5, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    check-cast v12, Lcom/avos/avoscloud/AVObject;

    iget-object v13, v5, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/avos/avoscloud/AVUtils;->mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1949
    .local v1, "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1951
    .end local v1    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v8}, Lcom/avos/avoscloud/ops/AVOp;->encodeOp()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 1955
    .end local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v8    # "op":Lcom/avos/avoscloud/ops/AVOp;
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1956
    :cond_7
    const-string v12, "__children"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    if-eqz v12, :cond_8

    .line 1958
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    invoke-virtual {v12}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v12

    invoke-static {v12}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1961
    :cond_8
    const-string v12, "__internalId"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    const-string v7, "PUT"

    .line 1963
    .local v7, "method":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v12

    invoke-virtual {v12}, Lcom/avos/avoscloud/PaasClient;->getApiVersion()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, p0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getBatchEndpoint(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object v9

    .line 1965
    .local v9, "path":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v12

    invoke-direct {p0}, Lcom/avos/avoscloud/AVObject;->getBatchParams()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v7, v9, v0, v13}, Lcom/avos/avoscloud/PaasClient;->batchItemMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1941
    .end local v7    # "method":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1969
    .end local v0    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVKeyValues;

    .line 1970
    .restart local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    invoke-virtual {v5}, Lcom/avos/avoscloud/AVKeyValues;->resetOp()V

    goto :goto_3

    .line 1973
    .end local v5    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_b
    iget-object v12, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 1974
    return-object v11
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected copyFromJson(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 1890
    :try_start_0
    const-class v2, Ljava/util/Map;

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1891
    .local v1, "map":Ljava/util/Map;
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    .end local v1    # "map":Ljava/util/Map;
    :goto_0
    return-void

    .line 1892
    :catch_0
    move-exception v0

    .line 1893
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AVObject parse error"

    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected copyFromMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 1902
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1903
    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 1904
    check-cast v1, Ljava/util/Map;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-static {v1, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1909
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1910
    .restart local v1    # "item":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 1911
    check-cast v1, Ljava/util/Map;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-static {v1, p0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 1914
    :cond_1
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVKeyValues;

    .line 1915
    .local v2, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    iget-object v3, v2, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 1916
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lcom/avos/avoscloud/AVObject;

    if-eqz v4, :cond_2

    .line 1917
    check-cast v3, Lcom/avos/avoscloud/AVObject;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1920
    .end local v2    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    :cond_3
    return-void
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 467
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$1;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVObject$1;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/DeleteCallback;)V

    .line 480
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 483
    :cond_0
    return-void
.end method

.method public deleteEventually()V
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 591
    return-void
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    .line 609
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/DeleteCallback;)V

    .line 610
    return-void
.end method

.method public deleteInBackground()V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    .line 618
    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/DeleteCallback;

    .prologue
    const/4 v0, 0x0

    .line 627
    invoke-direct {p0, v0, v0, p1}, Lcom/avos/avoscloud/AVObject;->delete(ZZLcom/avos/avoscloud/DeleteCallback;)V

    .line 628
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2398
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2411
    :cond_0
    :goto_0
    return v1

    .line 2401
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 2402
    :cond_2
    if-eqz p1, :cond_0

    .line 2403
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 2404
    check-cast v0, Lcom/avos/avoscloud/AVObject;

    .line 2405
    .local v0, "other":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 2406
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2408
    :cond_3
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 2409
    iget-object v3, v0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 2411
    goto :goto_0

    .line 2407
    :cond_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 2410
    :cond_6
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    iget-object v4, v0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public fetch()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 655
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$5;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$5;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 668
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 671
    :cond_0
    return-object p0
.end method

.method public fetchIfNeeded()Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$9;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$9;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 792
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 795
    :cond_1
    return-object p0
.end method

.method public fetchIfNeededInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 807
    return-void
.end method

.method public fetchIfNeededInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 819
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 820
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    if-eqz p2, :cond_0

    .line 822
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 834
    return-void
.end method

.method public fetchInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V
    .locals 1
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 844
    .local p2, "callback":Lcom/avos/avoscloud/GetCallback;, "Lcom/avos/avoscloud/GetCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->fetchInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    .line 845
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 872
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVKeyValues;

    .line 873
    .local v0, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    if-eqz v0, :cond_0

    .line 874
    iget-object v1, v0, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 876
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getAVFile(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVFile;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1099
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVFile;

    return-object v0
.end method

.method public getAVGeoPoint(Ljava/lang/String;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVGeoPoint;

    return-object v0
.end method

.method public getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1122
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getAVObject(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
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
    .line 1127
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->getAVObject(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v2

    .line 1128
    .local v2, "object":Lcom/avos/avoscloud/AVObject;
    if-nez v2, :cond_1

    .line 1129
    const/4 v2, 0x0

    .line 1137
    .end local v2    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_0
    :goto_0
    return-object v2

    .line 1131
    .restart local v2    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1134
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, "jsonString":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 1136
    .local v1, "newObject":Lcom/avos/avoscloud/AVObject;, "TT;"
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    move-object v2, v1

    .line 1137
    goto :goto_0
.end method

.method public getAVUser(Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1152
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method public getAVUser(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1165
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    .line 1166
    .local v0, "user":Lcom/avos/avoscloud/AVUser;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p2}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 894
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 935
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 945
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 946
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 947
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 958
    .local v0, "v":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 959
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 969
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 970
    .local v4, "list":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 983
    .end local v4    # "list":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 971
    .restart local v4    # "list":Ljava/lang/Object;
    :cond_1
    instance-of v6, v4, Lorg/json/JSONArray;

    if-eqz v6, :cond_2

    check-cast v4, Lorg/json/JSONArray;

    .end local v4    # "list":Ljava/lang/Object;
    move-object v1, v4

    goto :goto_0

    .line 972
    .restart local v4    # "list":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_3

    .line 973
    new-instance v1, Lorg/json/JSONArray;

    check-cast v4, Ljava/util/Collection;

    .end local v4    # "list":Ljava/lang/Object;
    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 974
    .local v1, "array":Lorg/json/JSONArray;
    goto :goto_0

    .line 976
    .end local v1    # "array":Lorg/json/JSONArray;
    .restart local v4    # "list":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 977
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 978
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast v4, [Ljava/lang/Object;

    .end local v4    # "list":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 979
    .local v5, "obj":Ljava/lang/Object;
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 978
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 993
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 994
    .local v3, "object":Ljava/lang/Object;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 995
    .local v2, "jsonString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 997
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    return-object v1

    .line 998
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 999
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid json string"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method getKeyValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVKeyValues",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    return-object v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1011
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1023
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1024
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v6, 0x0

    .line 1025
    .local v6, "returnList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v4, :cond_0

    .line 1026
    new-instance v6, Ljava/util/LinkedList;

    .end local v6    # "returnList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1028
    .restart local v6    # "returnList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVObject;

    .line 1029
    .local v2, "item":Lcom/avos/avoscloud/AVObject;
    const/4 v7, 0x6

    new-array v7, v7, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v8, 0x0

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v7, v8

    invoke-static {v2, v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v3

    .line 1036
    .local v3, "jsonString":Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avos/avoscloud/AVObject;

    .line 1037
    .local v5, "newItem":Lcom/avos/avoscloud/AVObject;, "TT;"
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1039
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/avos/avoscloud/AVObject;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v5    # "newItem":Lcom/avos/avoscloud/AVObject;, "TT;"
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ClassCast Exception"

    invoke-static {v7, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1043
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1053
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1054
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 1055
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 1065
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1075
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1076
    .local v0, "number":Ljava/lang/Number;
    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method getPendingKeys()Ljava/util/Set;
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
    .line 200
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVRelation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1178
    new-instance v1, Lcom/avos/avoscloud/AVRelation;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/AVRelation;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V

    .line 1181
    .local v1, "relation":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVKeyValues;

    .line 1182
    .local v0, "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    if-eqz v0, :cond_0

    .line 1183
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/avos/avoscloud/AVKeyValues;->relationKey:Z

    .line 1184
    iget-object v4, v0, Lcom/avos/avoscloud/AVKeyValues;->relationClassName:Ljava/lang/String;

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1185
    iget-object v4, v0, Lcom/avos/avoscloud/AVKeyValues;->relationClassName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/avos/avoscloud/AVRelation;->setTargetClass(Ljava/lang/String;)V

    .line 1198
    .end local v0    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v1    # "relation":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 1187
    .restart local v0    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .restart local v1    # "relation":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    :cond_1
    iget-object v2, v0, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    .line 1188
    .local v2, "set":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1189
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVObject;

    .line 1190
    .local v3, "target":Lcom/avos/avoscloud/AVObject;
    if-eqz v3, :cond_0

    .line 1191
    invoke-virtual {v3}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/avos/avoscloud/AVRelation;->setTargetClass(Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    .end local v0    # "kv":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<*>;"
    .end local v1    # "relation":Lcom/avos/avoscloud/AVRelation;, "Lcom/avos/avoscloud/AVRelation<TT;>;"
    .end local v2    # "set":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .end local v3    # "target":Lcom/avos/avoscloud/AVObject;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1208
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1209
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1210
    check-cast v0, Ljava/lang/String;

    .line 1212
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1233
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSameId(Lcom/avos/avoscloud/AVObject;)Z
    .locals 2
    .param p1, "other"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 1239
    iget-object v0, p1, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2386
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2387
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 2393
    :goto_0
    return v1

    .line 2389
    :cond_0
    const/16 v0, 0x1f

    .line 2390
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 2391
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int/lit8 v1, v2, 0x1f

    .line 2392
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 2393
    goto :goto_0

    .line 2391
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 2392
    :cond_2
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method protected headerMap()Ljava/util/Map;
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
    .line 1725
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->userHeaderMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1248
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1249
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/Number;

    .prologue
    .line 1289
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    new-instance v0, Lcom/avos/avoscloud/AVObject$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$10;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/Number;)V

    .line 1307
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Number;>;"
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 1309
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Number;>;"
    :cond_0
    return-void
.end method

.method protected internalClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected internalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1979
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDataReady()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    return v0
.end method

.method public isFetchWhenSave()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
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
    .line 1325
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected onDataSynchronized()V
    .locals 0

    .prologue
    .line 1718
    return-void
.end method

.method protected onSaveFailure()V
    .locals 0

    .prologue
    .line 1722
    return-void
.end method

.method protected onSaveSuccess()V
    .locals 0

    .prologue
    .line 1714
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1382
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1383
    return-void
.end method

.method protected put(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "pending"    # Z

    .prologue
    .line 1386
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1387
    new-instance v0, Lcom/avos/avoscloud/AVObject$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$12;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1404
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 1406
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->refresh(Ljava/lang/String;)V

    .line 1416
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 2
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1427
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVObject$13;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVObject$13;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1440
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1443
    :cond_0
    return-void
.end method

.method public refreshInBackground(Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1452
    .local p1, "callback":Lcom/avos/avoscloud/RefreshCallback;, "Lcom/avos/avoscloud/RefreshCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1453
    return-void
.end method

.method public refreshInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V
    .locals 1
    .param p1, "includeKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/RefreshCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1464
    .local p2, "callback":Lcom/avos/avoscloud/RefreshCallback;, "Lcom/avos/avoscloud/RefreshCallback<Lcom/avos/avoscloud/AVObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->refreshInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/RefreshCallback;)V

    .line 1465
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1483
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->removeObjectForKey(Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1496
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    new-instance v0, Lcom/avos/avoscloud/AVObject$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/avos/avoscloud/AVObject$14;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1514
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;)V

    .line 1516
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_0
    return-void
.end method

.method removeRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "submit"    # Z

    .prologue
    .line 2261
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVObject;->checkKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2262
    new-instance v0, Lcom/avos/avoscloud/AVObject$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVObject$23;-><init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 2283
    .local v0, "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    .line 2285
    .end local v0    # "cb":Lcom/avos/avoscloud/AVObject$KeyValueCallback;, "Lcom/avos/avoscloud/AVObject$KeyValueCallback<Ljava/util/Set<Lcom/avos/avoscloud/AVObject;>;>;"
    :cond_0
    return-void
.end method

.method public save()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1526
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVObject$15;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVObject$15;-><init>(Lcom/avos/avoscloud/AVObject;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1539
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1542
    :cond_0
    return-void
.end method

.method public saveEventually()V
    .locals 1

    .prologue
    .line 1696
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->saveEventually(Lcom/avos/avoscloud/SaveCallback;)V

    .line 1697
    return-void
.end method

.method public saveEventually(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1708
    invoke-static {p0}, Lcom/avos/avoscloud/PaasClient;->registerEventuallyObject(Lcom/avos/avoscloud/AVObject;)V

    .line 1709
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V

    .line 1710
    return-void
.end method

.method public saveInBackground()V
    .locals 1

    .prologue
    .line 2148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 2149
    return-void
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 2158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Z)V

    .line 2159
    return-void
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0
    .param p1, "acl"    # Lcom/avos/avoscloud/AVACL;

    .prologue
    .line 2171
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->acl:Lcom/avos/avoscloud/AVACL;

    .line 2172
    return-void
.end method

.method setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;

    .line 437
    return-void
.end method

.method setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    .line 246
    return-void
.end method

.method setDataReady(Z)V
    .locals 0
    .param p1, "isDataReady"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->isDataReady:Z

    .line 228
    return-void
.end method

.method public setFetchWhenSave(Z)V
    .locals 0
    .param p1, "fetchWhenSave"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    .line 263
    return-void
.end method

.method setKeyValues(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVKeyValues",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/avos/avoscloud/AVKeyValues<*>;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    .line 192
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 2180
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    .line 2181
    return-void
.end method

.method setPendingKeys(Ljava/util/Set;)V
    .locals 0
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
    .line 209
    .local p1, "pendingKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->pendingKeys:Ljava/util/Set;

    .line 210
    return-void
.end method

.method setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    .line 237
    return-void
.end method

.method setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    .line 255
    return-void
.end method

.method protected shouldThrowException(Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2204
    const/4 v0, 0x1

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "k":Ljava/lang/String;
    iget-object v3, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVKeyValues;

    iget-object v3, v3, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    invoke-static {v3}, Lcom/avos/avoscloud/AVObject;->parseObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v2    # "k":Ljava/lang/String;
    :cond_0
    const-string v3, "objectId"

    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v3, "createdAt"

    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v3, "updatedAt"

    iget-object v4, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVObject [className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fetchWhenSave="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject;->fetchWhenSave:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject;->keyValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
