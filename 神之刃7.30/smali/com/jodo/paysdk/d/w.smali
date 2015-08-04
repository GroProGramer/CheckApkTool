.class public Lcom/jodo/paysdk/d/w;
.super Ljava/lang/Object;


# static fields
.field public static final UNZIP_PROGRESS:I = 0xc8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNZIP_RESULT:I = 0xc9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static isSDKInitFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/d/w;->isSDKInitFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/jodo/paysdk/f/d;->i()Z

    move-result v0

    return v0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jodo/paysdk/f/a;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static onBackPressed(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/jodo/a/a;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "jodoplaysdk: onCreate call"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, v1}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    const-string v0, "MarkingManager: chartboostSDK init success"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/jodo/a/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "jodoplaysdk: onPause call"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getFacebookPromoAppid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->deactivateApp(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "jodoplaysdk: onResume call"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getFacebookPromoAppid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static onRoleLoaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;)V
    .locals 6

    invoke-static {p5}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;)V

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jodo/paysdk/f/d;->i()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "please login first before invoking onRoleLoaded"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/jodo/paysdk/f/d;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    const-string v2, "roleName"

    invoke-virtual {v1, v2, p3}, Lcom/jodo/pccs3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    const-string v2, "serverName"

    invoke-virtual {v1, v2, p2}, Lcom/jodo/pccs3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/buoy/a;->a()V

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/jodo/paysdk/account/JodoAccountManager;->setCurrentRoleName(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/jodo/paysdk/account/JodoAccountManager;->setCurrentRoleLevel(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/jodo/paysdk/account/JodoAccountManager;->setCurrentServerID(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/jodo/paysdk/account/JodoAccountManager;->setCurrentServerName(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/jodo/paysdk/d/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static onSdkInitFinished(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, v1}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    const-string v0, "MarkingManager: chartboostSDK init success"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "jodoplaysdk: onStart call"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getChartboostKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, v1}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    const-string v0, "MarkingManager: chartboostSDK init success"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/jodo/a/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static startDownload(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jodo/paysdk/d/g;->a(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V

    return-void
.end method

.method public static unzipExtFile2SpecificFolder(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;)V
    .locals 3

    const-string v0, "jodo unzip"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UnzipCallbackListener listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jodo/paysdk/d/x;

    invoke-direct {v0, p2}, Lcom/jodo/paysdk/d/x;-><init>(Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;)V

    invoke-static {p0, p1, v0}, Lcom/jodo/paysdk/d/w;->unzipExtResourceFilesToSpecificFolder(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V

    return-void
.end method

.method public static unzipExtResourceFilesToSpecificFolder(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "jodo unzip"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMainThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string v0, "jodo unzip"

    const-string v1, "handler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/jodo/paysdk/util/ab;->b(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasUnizp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/jodo/paysdk/util/ad;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasUnizp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ad;->d(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {p0, p1, p2}, Lcom/jodo/paysdk/d/y;->a(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc9

    invoke-virtual {p2, v0, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static unzipExtResourceFilesToSpecificFolder(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jodo/paysdk/d/m;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)V

    return-void
.end method

.method public static unzipExtResourceFilesToSpecificFolder(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "jodo unzip"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMainThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    const-string v0, "jodo unzip"

    const-string v1, "handler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/jodo/paysdk/util/ab;->b(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasUnizp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/jodo/paysdk/util/ad;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasUnizp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ad;->d(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jodo/paysdk/d/y;->a(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/Handler;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc9

    invoke-virtual {p4, v0, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
