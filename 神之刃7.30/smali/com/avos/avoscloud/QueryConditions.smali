.class public Lcom/avos/avoscloud/QueryConditions;
.super Ljava/lang/Object;
.source "QueryConditions.java"


# instance fields
.field private include:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private order:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
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

.field private selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skip:I

.field private trace:Z

.field where:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private removeDuplications(Lcom/avos/avoscloud/QueryOperation;Ljava/util/List;)V
    .locals 3
    .param p1, "op"    # Lcom/avos/avoscloud/QueryOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/avos/avoscloud/QueryOperation;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/QueryOperation;

    .line 233
    .local v1, "o":Lcom/avos/avoscloud/QueryOperation;
    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/QueryOperation;->sameOp(Lcom/avos/avoscloud/QueryOperation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 237
    .end local v1    # "o":Lcom/avos/avoscloud/QueryOperation;
    :cond_1
    return-void
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public addDescendingOrder(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "%s,-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public addOrItems(Lcom/avos/avoscloud/QueryOperation;)V
    .locals 5
    .param p1, "op"    # Lcom/avos/avoscloud/QueryOperation;

    .prologue
    .line 240
    iget-object v3, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    const-string v4, "$or"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 241
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;"
    if-nez v2, :cond_0

    .line 242
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 243
    .restart local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;"
    iget-object v3, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    const-string v4, "$or"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 247
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/avos/avoscloud/QueryOperation;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/QueryOperation;

    .line 249
    .local v1, "o":Lcom/avos/avoscloud/QueryOperation;
    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/QueryOperation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 254
    .end local v1    # "o":Lcom/avos/avoscloud/QueryOperation;
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V
    .locals 3
    .param p1, "op"    # Lcom/avos/avoscloud/QueryOperation;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    iget-object v2, p1, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 217
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;"
    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 219
    .restart local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    iget-object v2, p1, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/QueryConditions;->removeDuplications(Lcom/avos/avoscloud/QueryOperation;Ljava/util/List;)V

    .line 222
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 226
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 227
    return-void
.end method

.method public assembleParameters()Ljava/util/Map;
    .locals 5
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
    .line 192
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v3, "where"

    invoke-virtual {p0}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    iget v2, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    if-lez v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v3, "limit"

    iget v4, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_1
    iget v2, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    if-lez v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v3, "skip"

    iget v4, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v3, "order"

    iget-object v4, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 205
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v3, "include"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 209
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "keys":Ljava/lang/String;
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v3, "keys"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v0    # "keys":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    return-object v2
.end method

.method public compileWhereOperationMap()Ljava/util/Map;
    .locals 15
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
    .line 134
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v12, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v13, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 137
    .local v11, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 138
    .local v7, "key":Ljava/lang/String;
    const-string v13, "$or"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 139
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v9, "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/QueryOperation;

    .line 141
    .local v8, "op":Lcom/avos/avoscloud/QueryOperation;
    invoke-virtual {v8}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .end local v8    # "op":Lcom/avos/avoscloud/QueryOperation;
    :cond_1
    const-string v13, "$or"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 144
    .local v2, "existsOr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_2

    .line 145
    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 147
    :cond_2
    const-string v13, "$or"

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    .end local v2    # "existsOr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 161
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .restart local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v10, "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 164
    .local v3, "hasEqual":Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/QueryOperation;

    .line 165
    .restart local v8    # "op":Lcom/avos/avoscloud/QueryOperation;
    invoke-virtual {v8, v7}, Lcom/avos/avoscloud/QueryOperation;->toResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v13, "__eq"

    iget-object v14, v8, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 167
    const/4 v3, 0x1

    .line 169
    :cond_5
    if-nez v3, :cond_4

    .line 170
    invoke-virtual {v8}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v10, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 154
    .end local v3    # "hasEqual":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "op":Lcom/avos/avoscloud/QueryOperation;
    .end local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v10    # "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 155
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/avos/avoscloud/QueryOperation;>;"
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 156
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/avos/avoscloud/QueryOperation;

    .line 157
    .restart local v8    # "op":Lcom/avos/avoscloud/QueryOperation;
    invoke-virtual {v8}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 173
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/avos/avoscloud/QueryOperation;>;"
    .end local v8    # "op":Lcom/avos/avoscloud/QueryOperation;
    .restart local v3    # "hasEqual":Z
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v10    # "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    if-eqz v3, :cond_8

    .line 174
    const-string v13, "$and"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 175
    .local v1, "existsAnd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v1, :cond_7

    .line 176
    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 178
    :cond_7
    const-string v13, "$and"

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 181
    .end local v1    # "existsAnd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_8
    invoke-interface {v12, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;>;"
    .end local v3    # "hasEqual":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "opList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v10    # "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;"
    :cond_9
    return-object v12

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getInclude()Ljava/util/List;
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
    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
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
    .line 81
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getSelectedKeys()Ljava/util/Set;
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
    .line 65
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    return v0
.end method

.method public getWhere()Ljava/util/Map;
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
    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    return-object v0
.end method

.method public include(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public isTrace()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/avos/avoscloud/QueryConditions;->trace:Z

    return v0
.end method

.method public orderByAscending(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public orderByDescending(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public selectKeys(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 131
    return-void
.end method

.method public setInclude(Ljava/util/List;)V
    .locals 0
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
    .line 61
    .local p1, "include":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    .line 62
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    .line 38
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
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
    .line 85
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    .line 86
    return-void
.end method

.method public setSelectedKeys(Ljava/util/Set;)V
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
    .line 69
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    .line 70
    return-void
.end method

.method public setSkip(I)V
    .locals 0
    .param p1, "skip"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    .line 46
    return-void
.end method

.method public setTrace(Z)V
    .locals 0
    .param p1, "trace"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/avos/avoscloud/QueryConditions;->trace:Z

    .line 94
    return-void
.end method

.method public setWhere(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "where":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/QueryOperation;>;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    const-string v0, "$in"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "substring"    # Ljava/lang/String;

    .prologue
    .line 345
    const-string v1, ".*%s.*"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
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
    .line 354
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-string v0, "$all"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method public whereDoesNotExist(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 358
    const-string v0, "$exists"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v0, ".*%s$"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 309
    instance-of v0, p2, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "__eq"

    check-cast p2, Lcom/avos/avoscloud/AVObject;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    :goto_0
    return-void

    .line 312
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string v0, "__eq"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public whereExists(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v0, "$exists"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 276
    const-string v0, "$gt"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 264
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    const-string v1, "$gte"

    invoke-direct {v0, p1, v1, p2}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 265
    return-void
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 280
    const-string v0, "$lt"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 284
    const-string v0, "$lte"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v0, "$regex"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "modifiers"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "$regex"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string v0, "$options"

    invoke-virtual {p0, p1, v0, p3}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;

    .prologue
    .line 297
    const-string v0, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    const-string v0, "$nin"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 305
    const-string v0, "$ne"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public whereSizeEqual(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 350
    const-string v0, "$size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string v0, "^%s.*"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "southwest"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "northeast"    # Lcom/avos/avoscloud/AVGeoPoint;

    .prologue
    .line 321
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 322
    .local v0, "box":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v2, "$box"

    invoke-static {v2, v0}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 325
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "$within"

    invoke-virtual {p0, p1, v2, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D

    .prologue
    .line 329
    const-string v1, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 330
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "$maxDistanceInKilometers"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D

    .prologue
    .line 335
    const-string v1, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 336
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "$maxDistanceInMiles"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .param p3, "maxDistance"    # D

    .prologue
    .line 258
    const-string v1, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 259
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "maxDistanceInRadians"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v1, Lcom/avos/avoscloud/QueryOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 261
    return-void
.end method
