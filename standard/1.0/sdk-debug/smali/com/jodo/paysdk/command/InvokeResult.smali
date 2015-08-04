.class public Lcom/jodo/paysdk/command/InvokeResult;
.super Lcom/jodo/paysdk/command/InvokeArgs;
.source "InvokeResult.java"

# interfaces
.implements Lcom/jodo/common/IPublic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jodo/paysdk/command/InvokeArgs",
        "<",
        "Lcom/jodo/paysdk/command/InvokeResult;",
        ">;",
        "Lcom/jodo/common/IPublic;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/jodo/paysdk/command/InvokeArgs;-><init>()V

    return-void
.end method

.method public static Create()Lcom/jodo/paysdk/command/InvokeResult;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/jodo/paysdk/command/InvokeResult;

    invoke-direct {v0}, Lcom/jodo/paysdk/command/InvokeResult;-><init>()V

    return-object v0
.end method
