.class public Lcom/jodo/paysdk/command/InvokeParam;
.super Lcom/jodo/paysdk/command/InvokeArgs;
.source "InvokeParam.java"

# interfaces
.implements Lcom/jodo/common/IPublic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jodo/paysdk/command/InvokeArgs",
        "<",
        "Lcom/jodo/paysdk/command/InvokeParam;",
        ">;",
        "Lcom/jodo/common/IPublic;"
    }
.end annotation


# instance fields
.field private mCommandHandler:Lcom/jodo/paysdk/command/ICommandHandler;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/jodo/paysdk/command/InvokeArgs;-><init>()V

    return-void
.end method

.method public static Create()Lcom/jodo/paysdk/command/InvokeParam;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-direct {v0}, Lcom/jodo/paysdk/command/InvokeParam;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCommandHandler()Lcom/jodo/paysdk/command/ICommandHandler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jodo/paysdk/command/InvokeParam;->mCommandHandler:Lcom/jodo/paysdk/command/ICommandHandler;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jodo/paysdk/command/InvokeParam;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setCommandHandler(Lcom/jodo/paysdk/command/ICommandHandler;)Lcom/jodo/paysdk/command/InvokeParam;
    .locals 0
    .param p1, "commandHandler"    # Lcom/jodo/paysdk/command/ICommandHandler;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jodo/paysdk/command/InvokeParam;->mCommandHandler:Lcom/jodo/paysdk/command/ICommandHandler;

    .line 30
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/jodo/paysdk/command/InvokeParam;->mContext:Landroid/content/Context;

    .line 20
    return-object p0
.end method
