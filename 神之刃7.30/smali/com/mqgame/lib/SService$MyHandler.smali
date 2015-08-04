.class Lcom/mqgame/lib/SService$MyHandler;
.super Ljava/lang/Object;
.source "SService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mqgame/lib/SService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private m_context:Landroid/content/Context;

.field final synthetic this$0:Lcom/mqgame/lib/SService;


# direct methods
.method private constructor <init>(Lcom/mqgame/lib/SService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mqgame/lib/SService$MyHandler;->this$0:Lcom/mqgame/lib/SService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/mqgame/lib/SService$MyHandler;->m_context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqgame/lib/SService;Landroid/content/Context;Lcom/mqgame/lib/SService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mqgame/lib/SService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/mqgame/lib/SService$1;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mqgame/lib/SService$MyHandler;-><init>(Lcom/mqgame/lib/SService;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mqgame/lib/SService$MyHandler;->this$0:Lcom/mqgame/lib/SService;

    invoke-virtual {v1}, Lcom/mqgame/lib/SService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mqgame/lib/SService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/mqgame/lib/SService$MyHandler;->this$0:Lcom/mqgame/lib/SService;

    invoke-virtual {v1}, Lcom/mqgame/lib/SService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 46
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 47
    return-void
.end method
