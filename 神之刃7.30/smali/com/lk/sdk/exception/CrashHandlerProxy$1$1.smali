.class Lcom/lk/sdk/exception/CrashHandlerProxy$1$1;
.super Ljava/lang/Object;
.source "CrashHandlerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/exception/CrashHandlerProxy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lk/sdk/exception/CrashHandlerProxy$1;


# direct methods
.method constructor <init>(Lcom/lk/sdk/exception/CrashHandlerProxy$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/exception/CrashHandlerProxy$1$1;->this$1:Lcom/lk/sdk/exception/CrashHandlerProxy$1;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/lk/sdk/exception/CrashHandler;->getInstance()Lcom/lk/sdk/exception/CrashHandler;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/lk/sdk/exception/CrashHandlerProxy$1$1;->this$1:Lcom/lk/sdk/exception/CrashHandlerProxy$1;

    # getter for: Lcom/lk/sdk/exception/CrashHandlerProxy$1;->this$0:Lcom/lk/sdk/exception/CrashHandlerProxy;
    invoke-static {v1}, Lcom/lk/sdk/exception/CrashHandlerProxy$1;->access$0(Lcom/lk/sdk/exception/CrashHandlerProxy$1;)Lcom/lk/sdk/exception/CrashHandlerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lk/sdk/exception/CrashHandlerProxy;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/lk/sdk/exception/CrashHandler;->submitException(Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, Lcom/lk/sdk/exception/CrashHandlerProxy$1$1;->this$1:Lcom/lk/sdk/exception/CrashHandlerProxy$1;

    # getter for: Lcom/lk/sdk/exception/CrashHandlerProxy$1;->this$0:Lcom/lk/sdk/exception/CrashHandlerProxy;
    invoke-static {v0}, Lcom/lk/sdk/exception/CrashHandlerProxy$1;->access$0(Lcom/lk/sdk/exception/CrashHandlerProxy$1;)Lcom/lk/sdk/exception/CrashHandlerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/exception/CrashHandlerProxy;->finish()V

    .line 42
    return-void
.end method
