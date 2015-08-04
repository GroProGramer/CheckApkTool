.class public Lcom/lk/sdk/PlatformState;
.super Lcom/lk/sdk/BasePlatformState;
.source "PlatformState.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LK_Platform"

.field private static instance:Lcom/lk/sdk/PlatformState;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mRoleLevel:Ljava/lang/String;

.field private mRoleName:Ljava/lang/String;

.field private mServerId:Ljava/lang/String;

.field private mServerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lk/sdk/BasePlatformState;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lk/sdk/PlatformState;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lk/sdk/PlatformState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lk/sdk/PlatformState;->mServerId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/lk/sdk/PlatformState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lk/sdk/PlatformState;->mServerName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/lk/sdk/PlatformState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lk/sdk/PlatformState;->mRoleName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/lk/sdk/PlatformState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lk/sdk/PlatformState;->mRoleLevel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mServerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mRoleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mRoleLevel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/lk/sdk/PlatformState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/lk/sdk/PlatformState;->instance:Lcom/lk/sdk/PlatformState;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/lk/sdk/PlatformState;

    invoke-direct {v0}, Lcom/lk/sdk/PlatformState;-><init>()V

    sput-object v0, Lcom/lk/sdk/PlatformState;->instance:Lcom/lk/sdk/PlatformState;

    .line 38
    :cond_0
    sget-object v0, Lcom/lk/sdk/PlatformState;->instance:Lcom/lk/sdk/PlatformState;

    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 234
    if-eqz p0, :cond_0

    .line 235
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 238
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    const/4 v2, 0x1

    .line 249
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v2

    .line 240
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 248
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 249
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public deInit()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/lk/sdk/PlatformState$5;

    invoke-direct {v1, p0}, Lcom/lk/sdk/PlatformState$5;-><init>(Lcom/lk/sdk/PlatformState;)V

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showQuitGameView(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V

    .line 230
    return-void
.end method

.method public deinit()V
    .locals 3

    .prologue
    .line 298
    :try_start_0
    const-string v1, "LK_Platform"

    const-string v2, "deinit"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onDestroy(Landroid/app/Activity;)V

    .line 300
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lk/sdk/PlatformState;->onLeavePlatform()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "LK_Platform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enterGame serverID"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";entergameinfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/lk/sdk/PlatformState$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/lk/sdk/PlatformState$3;-><init>(Lcom/lk/sdk/PlatformState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    .line 46
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/lk/sdk/PlatformState$1;

    invoke-direct {v1, p0}, Lcom/lk/sdk/PlatformState$1;-><init>(Lcom/lk/sdk/PlatformState;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public jodoSwitchAccount()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/lk/sdk/PlatformState$6;

    invoke-direct {v1, p0}, Lcom/lk/sdk/PlatformState$6;-><init>(Lcom/lk/sdk/PlatformState;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public login()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/lk/sdk/PlatformState$2;

    invoke-direct {v1, p0}, Lcom/lk/sdk/PlatformState$2;-><init>(Lcom/lk/sdk/PlatformState;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 288
    const-string v1, "LK_Platform"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 354
    :try_start_0
    const-string v1, "LK_Platform"

    const-string v2, "onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onBackPressed(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestory()V
    .locals 3

    .prologue
    .line 344
    :try_start_0
    const-string v1, "LK_Platform"

    const-string v2, "onDestory"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onDestroy(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 326
    :try_start_0
    const-string v1, "LK_Platform"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 335
    :try_start_0
    const-string v1, "LK_Platform"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 317
    :try_start_0
    const-string v1, "LK_Platform"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v1, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onStop(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onstart()V
    .locals 3

    .prologue
    .line 308
    :try_start_0
    const-string v1, "LK_Platform"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onStart(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "productDes"    # Ljava/lang/String;
    .param p3, "customInfo"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v6, p0, Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/lk/sdk/PlatformState$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lk/sdk/PlatformState$4;-><init>(Lcom/lk/sdk/PlatformState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method
