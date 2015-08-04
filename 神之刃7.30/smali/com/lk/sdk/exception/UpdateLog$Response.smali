.class public Lcom/lk/sdk/exception/UpdateLog$Response;
.super Ljava/lang/Object;
.source "UpdateLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lk/sdk/exception/UpdateLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public result:Ljava/lang/String;

.field public status:Z

.field public statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/lk/sdk/exception/UpdateLog$Response;->statusCode:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/lk/sdk/exception/UpdateLog$Response;->result:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/lk/sdk/exception/UpdateLog$Response;->status:Z

    .line 16
    return-void
.end method
