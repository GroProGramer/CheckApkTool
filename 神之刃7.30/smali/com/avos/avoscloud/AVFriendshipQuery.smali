.class public Lcom/avos/avoscloud/AVFriendshipQuery;
.super Ljava/lang/Object;
.source "AVFriendshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVUser;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field conditions:Lcom/avos/avoscloud/QueryConditions;

.field userClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 20
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    .line 26
    new-instance v0, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {v0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    .line 27
    return-void
.end method

.method private addOrItems(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "op"    # Lcom/avos/avoscloud/QueryOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)V

    .line 379
    return-object p0
.end method

.method private addWhereItem(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "op"    # Lcom/avos/avoscloud/QueryOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 374
    return-object p0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addAscendingOrder(Ljava/lang/String;)V

    .line 216
    return-object p0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addDescendingOrder(Ljava/lang/String;)V

    .line 228
    return-object p0
.end method

.method protected addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVFriendshipQuery;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/avos/avoscloud/AVFriendship;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    .line 96
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userId:Ljava/lang/String;

    new-instance v2, Lcom/avos/avoscloud/AVFriendshipQuery$2;

    invoke-direct {v2, p0, v0}, Lcom/avos/avoscloud/AVFriendshipQuery$2;-><init>(Lcom/avos/avoscloud/AVFriendshipQuery;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v4, v2}, Lcom/avos/avoscloud/AVFriendshipQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V

    .line 111
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 114
    :cond_0
    aget-object v1, v0, v3

    check-cast v1, Lcom/avos/avoscloud/AVFriendship;

    return-object v1
.end method

.method public getInBackground(Lcom/avos/avoscloud/callback/AVFriendshipCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    .prologue
    .line 122
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V

    .line 123
    return-void
.end method

.method protected getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V
    .locals 7
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    .prologue
    .line 30
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    const-string v0, "users/%s/followersAndFollowees"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "path":Ljava/lang/String;
    move-object v6, p3

    .line 32
    .local v6, "internalCallback":Lcom/avos/avoscloud/callback/AVFriendshipCallback;
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    iget-object v3, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v3}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVFriendshipQuery$1;

    invoke-direct {v5, p0, v6}, Lcom/avos/avoscloud/AVFriendshipQuery$1;-><init>(Lcom/avos/avoscloud/AVFriendshipQuery;Lcom/avos/avoscloud/callback/AVFriendshipCallback;)V

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 92
    return-void
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v0

    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v0

    return v0
.end method

.method public include(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->include(Ljava/lang/String;)V

    .line 239
    return-object p0
.end method

.method public limit(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 0
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->setLimit(I)Lcom/avos/avoscloud/AVFriendshipQuery;

    .line 151
    return-object p0
.end method

.method public order(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 0
    .param p1, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;

    .line 204
    return-object p0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    .line 261
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    .line 272
    return-object p0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->selectKeys(Ljava/util/Collection;)V

    .line 250
    return-object p0
.end method

.method public setLimit(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    .line 141
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setOrder(Ljava/lang/String;)V

    .line 194
    return-object p0
.end method

.method public setSkip(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    .line 179
    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 0
    .param p1, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->setSkip(I)Lcom/avos/avoscloud/AVFriendshipQuery;

    .line 161
    return-object p0
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 285
    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContains(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 327
    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereDoesNotExist(Ljava/lang/String;)V

    .line 337
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    instance-of v0, p2, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "__eq"

    check-cast p2, Lcom/avos/avoscloud/AVObject;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVFriendshipQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;

    .line 369
    :goto_0
    return-object p0

    .line 367
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string v0, "__eq"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVFriendshipQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;

    goto :goto_0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereExists(Ljava/lang/String;)V

    .line 395
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 488
    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 501
    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    return-object p0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereSizeEqual(Ljava/lang/String;I)V

    .line 311
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 541
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 542
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 556
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 565
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/avos/avoscloud/AVFriendshipQuery;, "Lcom/avos/avoscloud/AVFriendshipQuery<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 579
    return-object p0
.end method
