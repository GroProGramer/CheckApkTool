.class public Lcom/jodo/paysdk/config/JodoInitParams;
.super Ljava/lang/Object;
.source "JodoInitParams.java"

# interfaces
.implements Lcom/jodo/common/IPublic;


# instance fields
.field public channel:Ljava/lang/String;

.field public cpid:Ljava/lang/String;

.field public exNet:Z

.field public gameid:Ljava/lang/String;

.field public isTestMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/config/JodoInitParams;->isTestMode:Z

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/config/JodoInitParams;->exNet:Z

    return-void
.end method
