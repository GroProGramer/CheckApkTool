.class public Lcom/lk/sdk/PluginInterface;
.super Lcom/lk/sdk/BasePluginInterface;
.source "PluginInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lk/sdk/BasePluginInterface",
        "<",
        "Lcom/lk/sdk/PlatformState;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/lk/sdk/PluginInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/lk/sdk/PluginInterface;->instance:Lcom/lk/sdk/PluginInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lk/sdk/BasePluginInterface;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lk/sdk/PluginInterface;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/lk/sdk/PluginInterface;->instance:Lcom/lk/sdk/PluginInterface;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/lk/sdk/PluginInterface;

    invoke-direct {v0}, Lcom/lk/sdk/PluginInterface;-><init>()V

    sput-object v0, Lcom/lk/sdk/PluginInterface;->instance:Lcom/lk/sdk/PluginInterface;

    .line 15
    :cond_0
    sget-object v0, Lcom/lk/sdk/PluginInterface;->instance:Lcom/lk/sdk/PluginInterface;

    return-object v0
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->deInit()V

    .line 47
    return-void
.end method

.method public enterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/lk/sdk/BasePluginInterface;->enterGame(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lk/sdk/PlatformState;->enterGame(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lk/sdk/PlatformState;->init(Landroid/app/Activity;)V

    .line 21
    return-void
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->login()V

    .line 26
    return-void
.end method

.method public logout(Ljava/lang/String;)V
    .locals 1
    .param p1, "useless"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->jodoSwitchAccount()V

    .line 31
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/lk/sdk/BasePluginInterface;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lk/sdk/PlatformState;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->onBackPressed()V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/lk/sdk/BasePluginInterface;->onDestroy()V

    .line 58
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->onDestory()V

    .line 59
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/lk/sdk/BasePluginInterface;->onPause()V

    .line 64
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->onPause()V

    .line 65
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/lk/sdk/BasePluginInterface;->onResume()V

    .line 70
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->onResume()V

    .line 71
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/lk/sdk/BasePluginInterface;->onStart()V

    .line 76
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->onstart()V

    .line 77
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/lk/sdk/BasePluginInterface;->onStop()V

    .line 82
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->onStop()V

    .line 83
    return-void
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "orderID"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/String;
    .param p3, "customInfo"    # Ljava/lang/String;
    .param p4, "productName"    # Ljava/lang/String;
    .param p5, "productDesc"    # Ljava/lang/String;
    .param p6, "productID"    # Ljava/lang/String;
    .param p7, "rate"    # Ljava/lang/String;
    .param p8, "notifyURL"    # Ljava/lang/String;
    .param p9, "ext"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "LK_Platform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "amount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "LK_Platform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "customInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "LK_Platform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orderId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "LK_Platform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "productDesc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0, p2, p5, p3, p1}, Lcom/lk/sdk/PlatformState;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public userCenter(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 98
    return-void
.end method
