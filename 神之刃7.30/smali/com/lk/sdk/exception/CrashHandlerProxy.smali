.class public Lcom/lk/sdk/exception/CrashHandlerProxy;
.super Landroid/app/Activity;
.source "CrashHandlerProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lk/sdk/exception/CrashHandlerProxy;->requestWindowFeature(I)Z

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 31
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/lk/sdk/exception/CrashHandlerProxy$1;

    invoke-direct {v1, p0}, Lcom/lk/sdk/exception/CrashHandlerProxy$1;-><init>(Lcom/lk/sdk/exception/CrashHandlerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method
