.class public Lcom/avos/avoscloud/AVKeyValues;
.super Ljava/lang/Object;
.source "AVKeyValues.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    asm = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation
.end field

.field op:Lcom/avos/avoscloud/ops/AVOp;

.field relationClassName:Ljava/lang/String;

.field relationKey:Z

.field value:Ljava/lang/Object;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "op"    # Lcom/avos/avoscloud/ops/AVOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    .line 69
    invoke-direct {p0, p3}, Lcom/avos/avoscloud/AVKeyValues;->setRelationKey(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 70
    return-void
.end method

.method private setRelationKey(Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 2
    .param p1, "op"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 77
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/ops/AVOp$OpType;->AddRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/ops/AVOp$OpType;->RemoveRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

    if-ne v0, v1, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVKeyValues;->relationKey:Z

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public addOp(Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 1
    .param p1, "op"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 83
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    if-nez v0, :cond_0

    .line 84
    iput-object p1, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    .line 88
    :goto_0
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVKeyValues;->setRelationKey(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 89
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    invoke-interface {v0, p1}, Lcom/avos/avoscloud/ops/AVOp;->merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    goto :goto_0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    return-object v0
.end method

.method getOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    return-object v0
.end method

.method public getOp(I)Lcom/avos/avoscloud/ops/AVOp;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 96
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    invoke-interface {v1, p1}, Lcom/avos/avoscloud/ops/AVOp;->get(I)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    .line 98
    .local v0, "rt":Lcom/avos/avoscloud/ops/AVOp;
    if-eqz v0, :cond_0

    .line 104
    .end local v0    # "rt":Lcom/avos/avoscloud/ops/AVOp;
    :goto_0
    return-object v0

    .line 101
    .restart local v0    # "rt":Lcom/avos/avoscloud/ops/AVOp;
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    goto :goto_0

    .line 104
    .end local v0    # "rt":Lcom/avos/avoscloud/ops/AVOp;
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    goto :goto_0
.end method

.method getRelationClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->relationClassName:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    return-object v0
.end method

.method isRelationKey()Z
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVKeyValues;->relationKey:Z

    return v0
.end method

.method public opSize()I
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    invoke-interface {v0}, Lcom/avos/avoscloud/ops/AVOp;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetOp()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    sget-object v0, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    iput-object v0, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    .line 74
    return-void
.end method

.method setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVKeyValues;->key:Ljava/lang/String;

    .line 42
    return-void
.end method

.method setOp(Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 0
    .param p1, "op"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 49
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVKeyValues;->op:Lcom/avos/avoscloud/ops/AVOp;

    .line 50
    return-void
.end method

.method setRelationClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "relationClassName"    # Ljava/lang/String;

    .prologue
    .line 25
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVKeyValues;->relationClassName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method setRelationKey(Z)V
    .locals 0
    .param p1, "relationKey"    # Z

    .prologue
    .line 57
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVKeyValues;->relationKey:Z

    .line 58
    return-void
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/avos/avoscloud/AVKeyValues;, "Lcom/avos/avoscloud/AVKeyValues<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVKeyValues;->value:Ljava/lang/Object;

    .line 34
    return-void
.end method
