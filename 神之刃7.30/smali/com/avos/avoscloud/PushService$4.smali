.class final Lcom/avos/avoscloud/PushService$4;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Context;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cls:Ljava/lang/Class;

.field final synthetic val$finalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$4;->val$finalContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/avos/avoscloud/PushService$4;->val$cls:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 261
    # getter for: Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start service"

    invoke-static {v1, v2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avos/avoscloud/PushService$4;->val$finalContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AV_APPLICATION_ID"

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/avos/avoscloud/PushService$4;->val$cls:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "AV_DEFAULT_CALLBACK"

    iget-object v2, p0, Lcom/avos/avoscloud/PushService$4;->val$cls:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/PushService$4;->val$finalContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    return-void
.end method
