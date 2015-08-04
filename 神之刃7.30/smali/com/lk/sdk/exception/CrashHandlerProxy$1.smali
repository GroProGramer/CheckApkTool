.class Lcom/lk/sdk/exception/CrashHandlerProxy$1;
.super Ljava/lang/Object;
.source "CrashHandlerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/exception/CrashHandlerProxy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lk/sdk/exception/CrashHandlerProxy;


# direct methods
.method constructor <init>(Lcom/lk/sdk/exception/CrashHandlerProxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/exception/CrashHandlerProxy$1;->this$0:Lcom/lk/sdk/exception/CrashHandlerProxy;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lk/sdk/exception/CrashHandlerProxy$1;)Lcom/lk/sdk/exception/CrashHandlerProxy;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lk/sdk/exception/CrashHandlerProxy$1;->this$0:Lcom/lk/sdk/exception/CrashHandlerProxy;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lk/sdk/exception/CrashHandlerProxy$1$1;

    invoke-direct {v1, p0}, Lcom/lk/sdk/exception/CrashHandlerProxy$1$1;-><init>(Lcom/lk/sdk/exception/CrashHandlerProxy$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method
