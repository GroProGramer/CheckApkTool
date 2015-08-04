.class public Lcom/jodo/paysdk/command/InvokeArgs;
.super Ljava/lang/Object;
.source "InvokeArgs.java"

# interfaces
.implements Lcom/jodo/common/IPublic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/jodo/paysdk/command/InvokeArgs;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jodo/common/IPublic;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/jodo/paysdk/command/InvokeArgs;, "Lcom/jodo/paysdk/command/InvokeArgs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParam(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 21
    .local p0, "this":Lcom/jodo/paysdk/command/InvokeArgs;, "Lcom/jodo/paysdk/command/InvokeArgs<TT;>;"
    invoke-virtual {p0}, Lcom/jodo/paysdk/command/InvokeArgs;->getParams()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParams()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/jodo/paysdk/command/InvokeArgs;, "Lcom/jodo/paysdk/command/InvokeArgs<TT;>;"
    iget-object v0, p0, Lcom/jodo/paysdk/command/InvokeArgs;->mParams:[Ljava/lang/Object;

    return-object v0
.end method

.method public varargs setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/jodo/paysdk/command/InvokeArgs;, "Lcom/jodo/paysdk/command/InvokeArgs<TT;>;"
    iput-object p1, p0, Lcom/jodo/paysdk/command/InvokeArgs;->mParams:[Ljava/lang/Object;

    .line 13
    return-object p0
.end method
