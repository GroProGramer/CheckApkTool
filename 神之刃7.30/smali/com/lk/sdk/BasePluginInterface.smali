.class public abstract Lcom/lk/sdk/BasePluginInterface;
.super Ljava/lang/Object;
.source "BasePluginInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lk/sdk/BasePluginInterface$Callback;,
        Lcom/lk/sdk/BasePluginInterface$ShareInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/lk/sdk/BasePlatformState;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "lk_adid.properties"

.field public static final TAG:Ljava/lang/String; = "BasePluginInterface"

.field public static versionCode:Ljava/lang/String;


# instance fields
.field private mCrashHandlerInit:Z

.field private mInitSuccessful:Z

.field private mObject:Lcom/lk/sdk/BasePlatformState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "100001"

    sput-object v0, Lcom/lk/sdk/BasePluginInterface;->versionCode:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    .line 31
    iput-boolean v0, p0, Lcom/lk/sdk/BasePluginInterface;->mCrashHandlerInit:Z

    .line 17
    return-void
.end method


# virtual methods
.method public createRole(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 316
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call createRole method -> serverId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method public abstract deinit()V
.end method

.method public final deinit(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 3

    .prologue
    .line 121
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    .local p1, "callback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call deinit method -> callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean v0, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v0, p1}, Lcom/lk/sdk/BasePlatformState;->setDeinitCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 124
    invoke-virtual {p0}, Lcom/lk/sdk/BasePluginInterface;->deinit()V

    .line 126
    :cond_0
    return-void
.end method

.method public enterBBS(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 302
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call enterBBS method -> json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public enterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serverID"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 329
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call enterGame method -> serverId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public enterService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 406
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call enterService method -> roleName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method public feedback(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 293
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call feedback method -> json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public getAdId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 369
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, ""

    .line 371
    .local v0, "adid":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 372
    const-string v5, "BasePluginInterface"

    const-string v6, "Please pass in Context is available !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 387
    .end local v0    # "adid":Ljava/lang/String;
    .local v1, "adid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 377
    .end local v1    # "adid":Ljava/lang/String;
    .restart local v0    # "adid":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "lk_adid.properties"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 378
    .local v3, "input":Ljava/io/InputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 379
    .local v4, "properties":Ljava/util/Properties;
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 381
    const-string v5, "ADID"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "properties":Ljava/util/Properties;
    :goto_1
    move-object v1, v0

    .line 387
    .end local v0    # "adid":Ljava/lang/String;
    .restart local v1    # "adid":Ljava/lang/String;
    goto :goto_0

    .line 382
    .end local v1    # "adid":Ljava/lang/String;
    .restart local v0    # "adid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "BasePluginInterface"

    const-string v6, "lk_adid.properties is not exist !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public final getDeviceId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    invoke-static {p1}, Lcom/lk/sdk/Utils;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    sget-object v0, Lcom/lk/sdk/BasePluginInterface;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public abstract init(Landroid/app/Activity;)V
.end method

.method public final init(Landroid/app/Activity;Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    .local p3, "callback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    const-string v5, "BasePluginInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "call init method -> gameid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 52
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 51
    aget-object v2, v5, v8

    check-cast v2, Ljava/lang/Class;

    .line 56
    .local v2, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 58
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lk/sdk/BasePlatformState;

    iput-object v5, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    .line 59
    iget-object v5, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    if-eqz v5, :cond_0

    .line 60
    iget-object v5, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v5, p2}, Lcom/lk/sdk/BasePlatformState;->setMessageObjName(Ljava/lang/String;)V

    .line 61
    iget-object v5, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v5, p3}, Lcom/lk/sdk/BasePlatformState;->setInitCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 62
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    .line 63
    const-string v5, "BasePluginInterface"

    const-string v6, "-----call our init before"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0, p1}, Lcom/lk/sdk/BasePluginInterface;->init(Landroid/app/Activity;)V

    .line 65
    iget-object v5, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v5, p1}, Lcom/lk/sdk/BasePlatformState;->check(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 78
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 79
    .local v4, "sdkVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    if-eqz v5, :cond_1

    .line 81
    :try_start_1
    const-string v5, "getSdkVersion"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 82
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 88
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/lk/sdk/BasePluginInterface;->mCrashHandlerInit:Z

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    invoke-static {}, Lcom/lk/sdk/exception/CrashHandler;->getInstance()Lcom/lk/sdk/exception/CrashHandler;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/lk/sdk/exception/CrashHandler;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    iput-boolean v9, p0, Lcom/lk/sdk/BasePluginInterface;->mCrashHandlerInit:Z

    .line 96
    :cond_2
    return-void

    .line 67
    .end local v4    # "sdkVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v4    # "sdkVersion":Ljava/lang/String;
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method public inviteFriend(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 460
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call inviteFriend method -> json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method public abstract login(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public final login(Landroid/app/Activity;Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    .line 151
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    .local p3, "callback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call login method -> json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login check init  mInitSuccessful="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v0, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v0, p3}, Lcom/lk/sdk/BasePlatformState;->setLoginCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/lk/sdk/BasePluginInterface;->login(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public abstract logout(Ljava/lang/String;)V
.end method

.method public final logout(Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 3
    .param p1, "operType"    # Ljava/lang/String;

    .prologue
    .line 176
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    .local p2, "callback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call logout method -> operType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v0, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v0, p2}, Lcom/lk/sdk/BasePlatformState;->setLogoutCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/lk/sdk/BasePluginInterface;->logout(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 473
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 465
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 482
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 469
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 476
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 393
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 479
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 397
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    return-void
.end method

.method public abstract pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public queryUserInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 360
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call queryUserInfo method -> json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method

.method public quit(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call quit method -> json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public final quit(Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    .local p2, "callback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call quit method -> json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v0, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v0, p2}, Lcom/lk/sdk/BasePlatformState;->setLogoutCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/lk/sdk/BasePluginInterface;->quit(Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method public realNameRegister(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 350
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call realNameRegister method -> json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method

.method public setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call setAuth method -> token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public final setLoginCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 3

    .prologue
    .line 233
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    .local p1, "callback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call setLoginCallback method -> callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v0, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v0, p1}, Lcom/lk/sdk/BasePlatformState;->setLoginCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 237
    :cond_0
    return-void
.end method

.method public final setPayCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 3

    .prologue
    .line 226
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    .local p1, "callback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call setPayCallback method -> callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-boolean v0, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v0, p1}, Lcom/lk/sdk/BasePlatformState;->setPayCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 3
    .param p1, "sid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call setSid method -> sid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public final setSwitchAccountCallBack(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 3

    .prologue
    .line 245
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    .local p1, "callback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call setSwitchAccountCallBack method -> callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean v0, p0, Lcom/lk/sdk/BasePluginInterface;->mInitSuccessful:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface;->mObject:Lcom/lk/sdk/BasePlatformState;

    invoke-virtual {v0, p1}, Lcom/lk/sdk/BasePlatformState;->setSwitchAccount(Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 249
    :cond_0
    return-void
.end method

.method public share(Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$ShareInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "shareType"    # Ljava/lang/String;
    .param p3, "json"    # Ljava/lang/String;

    .prologue
    .line 423
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    .local p2, "shareInfo":Lcom/lk/sdk/BasePluginInterface$ShareInfo;, "Lcom/lk/sdk/BasePluginInterface$ShareInfo;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call share method -> shareType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   shareInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method public final share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "shareType"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "shareUrl"    # Ljava/lang/String;
    .param p6, "subTitle"    # Ljava/lang/String;
    .param p7, "imageUrl"    # Ljava/lang/String;
    .param p8, "imageId"    # Ljava/lang/String;

    .prologue
    .line 446
    .local p0, "this":Lcom/lk/sdk/BasePluginInterface;, "Lcom/lk/sdk/BasePluginInterface<TT;>;"
    const-string v0, "BasePluginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call share method -> shareType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    const-string v2, "  desc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  shereUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   subTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   imageUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   imageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public abstract userCenter(Ljava/lang/String;)V
.end method
