.class public abstract Lcom/lk/sdk/BasePlatformState;
.super Ljava/lang/Object;
.source "BasePlatformState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;,
        Lcom/lk/sdk/BasePlatformState$PAY_STATUS;
    }
.end annotation


# static fields
.field private static final INIT_MSG:Ljava/lang/String; = "{\"status\":\"%s\", \"platform\":\"%s\", \"isregister\":\"%s\", \"isMusic\":\"%s\"}"

.field private static final ON_LEAVE_PLATFORM_FINISH:Ljava/lang/String; = "onLeavePlatform"

.field private static final ON_LOGIN_CANCEL:Ljava/lang/String; = "onLoginCancel"

.field private static final ON_LOGIN_FAILED:Ljava/lang/String; = "onLoginFailed"

.field private static final ON_LOGIN_FINISH:Ljava/lang/String; = "onLoginFinish"

.field private static final ON_LOGOUT_FINISH:Ljava/lang/String; = "onLogoutFinish"

.field private static final ON_PAY_FINISH:Ljava/lang/String; = "onPayFinish"

.field private static final ON_SDK_INIT_FINISH:Ljava/lang/String; = "onSdkInitFinish"

.field private static final ON_SWITCH_ACCOUNT_FINISH:Ljava/lang/String; = "onSwitchAccount"

.field private static final ON_USERCENTER_FINISH:Ljava/lang/String; = "onUserCenter"

.field private static final TAG:Ljava/lang/String; = "BasePlatformState"

.field private static final isLOG:Ljava/lang/Boolean;

.field private static mCheckUrl:Ljava/lang/String;


# instance fields
.field private isMusicOn:Ljava/lang/String;

.field protected mDeinitCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

.field protected mInitCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

.field protected mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

.field protected mLogoutCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

.field protected mPayCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

.field protected mSwitchAccountCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

.field private m_gameObjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lk/sdk/BasePlatformState;->isLOG:Ljava/lang/Boolean;

    .line 398
    const-string v0, "http://x.8864.com/tempSdkApi/activation.php"

    sput-object v0, Lcom/lk/sdk/BasePlatformState;->mCheckUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const-string v0, "1"

    iput-object v0, p0, Lcom/lk/sdk/BasePlatformState;->isMusicOn:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lk/sdk/BasePlatformState;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/lk/sdk/BasePlatformState;->getPlatform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/lk/sdk/BasePlatformState;->mCheckUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getMeteDataByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 351
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 354
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 355
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 356
    .local v2, "tmp":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 357
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "tmpValue":Ljava/lang/String;
    const-string v4, "<a>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 368
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "tmp":Ljava/lang/Object;
    .end local v3    # "tmpValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 368
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method private final getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/lk/sdk/BasePlatformState;->getObjName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 96
    if-nez p2, :cond_0

    .line 97
    const-string p2, ""

    .line 100
    :cond_0
    if-nez p1, :cond_2

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    const-string v0, "onSdkInitFinish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mInitCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mInitCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    invoke-interface {v0, v2, p2}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 107
    const-string v0, "BasePlatformState"

    const-string v1, "-----init send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_3
    const-string v0, "BasePlatformState"

    const-string v1, "InitCallback is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_4
    const-string v0, "onLoginFinish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    invoke-interface {v0, v2, p2}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 114
    const-string v0, "BasePlatformState"

    const-string v1, "-----login success send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_5
    const-string v0, "BasePlatformState"

    const-string v1, "LoginCallback is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_6
    const-string v0, "onLoginCancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 119
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    if-eqz v0, :cond_7

    .line 120
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    invoke-interface {v0, v4, p2}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 121
    const-string v0, "BasePlatformState"

    const-string v1, "-----login cancel send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_7
    const-string v0, "BasePlatformState"

    const-string v1, "LoginCallback is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_8
    const-string v0, "onLoginFailed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    invoke-interface {v0, v3, p2}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 128
    const-string v0, "BasePlatformState"

    const-string v1, "-----login fail send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_9
    const-string v0, "BasePlatformState"

    const-string v1, "LoginCallback is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    :cond_a
    const-string v0, "onLogoutFinish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 133
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mLogoutCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    if-eqz v0, :cond_b

    .line 134
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mLogoutCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    invoke-interface {v0, v2, p2}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 135
    const-string v0, "BasePlatformState"

    const-string v1, "-----logout send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :cond_b
    const-string v0, "BasePlatformState"

    const-string v1, "LogoutCallback is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 139
    :cond_c
    const-string v0, "onPayFinish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 140
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mPayCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    if-eqz v0, :cond_f

    .line 141
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 142
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mPayCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    const-string v1, ""

    invoke-interface {v0, v2, v1}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 143
    const-string v0, "BasePlatformState"

    const-string v1, "----pay success send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 144
    :cond_d
    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 145
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mPayCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    const-string v1, ""

    invoke-interface {v0, v4, v1}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 146
    const-string v0, "BasePlatformState"

    const-string v1, "----pay fail send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    :cond_e
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mPayCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    const-string v1, ""

    invoke-interface {v0, v3, v1}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 149
    const-string v0, "BasePlatformState"

    const-string v1, "----pay cancel send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    :cond_f
    const-string v0, "BasePlatformState"

    const-string v1, "PayCallback is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    :cond_10
    const-string v0, "onLeavePlatform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 155
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mDeinitCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    if-eqz v0, :cond_11

    .line 156
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mDeinitCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    invoke-interface {v0, v2, p2}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 157
    const-string v0, "BasePlatformState"

    const-string v1, "----leavePlatform send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    :cond_11
    const-string v0, "BasePlatformState"

    const-string v1, "DeinitCallback is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 161
    :cond_12
    const-string v0, "onSwitchAccount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mSwitchAccountCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    if-eqz v0, :cond_13

    .line 163
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->mSwitchAccountCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    invoke-interface {v0, v2, p2}, Lcom/lk/sdk/BasePluginInterface$Callback;->onFinish(ILjava/lang/String;)V

    .line 164
    const-string v0, "BasePlatformState"

    const-string v1, "----switchAccount send message finish !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    :cond_13
    const-string v0, "BasePlatformState"

    const-string v1, "switchAccountCallBack is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public final check(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, "ext":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 403
    const-string v2, "lk-check-config"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 404
    .local v0, "checkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    const-string v1, "enter_game"

    .line 468
    .end local v0    # "checkFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 407
    .restart local v0    # "checkFile":Ljava/io/File;
    :cond_1
    const-string v2, "BasePlatformState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const v2, -0x45413f22

    new-instance v3, Lcom/lk/sdk/BasePlatformState$1;

    invoke-direct {v3, p0, p1}, Lcom/lk/sdk/BasePlatformState$1;-><init>(Lcom/lk/sdk/BasePlatformState;Landroid/content/Context;)V

    invoke-static {p1, v2, v1, v3}, Lcom/lk/sdk/Utils;->check(Landroid/content/Context;ILjava/lang/String;Lcom/lk/sdk/Utils$CheckListener;)V

    goto :goto_0
.end method

.method public final getObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lk/sdk/BasePlatformState;->m_gameObjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const-string v0, "1"

    return-object v0
.end method

.method public final onInitFinish()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;->ON:Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    invoke-virtual {p0, v0}, Lcom/lk/sdk/BasePlatformState;->onInitFinish(Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;)V

    .line 180
    return-void
.end method

.method public final onInitFinish(Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;)V
    .locals 5
    .param p1, "status"    # Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    .prologue
    .line 198
    sget-object v0, Lcom/lk/sdk/BasePlatformState;->isLOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "BasePlatformState"

    const-string v1, "\u521d\u59cb\u5316\u5f00\u59cb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    sget-object v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;->OFF:Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    if-ne p1, v0, :cond_1

    .line 203
    const-string v0, "0"

    iput-object v0, p0, Lcom/lk/sdk/BasePlatformState;->isMusicOn:Ljava/lang/String;

    .line 206
    :cond_1
    const-string v0, "onSdkInitFinish"

    const-string v1, "{\"status\":\"%s\", \"platform\":\"%s\", \"isregister\":\"%s\", \"isMusic\":\"%s\"}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/lk/sdk/BasePlatformState;->getPlatform()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/lk/sdk/BasePlatformState;->getVisitor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/lk/sdk/BasePlatformState;->isMusicOn:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lk/sdk/BasePlatformState;->sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public final onLeavePlatform()V
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/lk/sdk/BasePlatformState;->isLOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "BasePlatformState"

    const-string v1, "-----onLeavePlatform---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    const-string v0, "onLeavePlatform"

    invoke-direct {p0}, Lcom/lk/sdk/BasePlatformState;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lk/sdk/BasePlatformState;->sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public final onLoginCancel()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/lk/sdk/BasePlatformState;->isLOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "BasePlatformState"

    const-string v1, "-----onLoginCancel---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    const-string v0, "onLoginCancel"

    invoke-direct {p0}, Lcom/lk/sdk/BasePlatformState;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lk/sdk/BasePlatformState;->sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public final onLoginFailed()V
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/lk/sdk/BasePlatformState;->isLOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "BasePlatformState"

    const-string v1, "-----onLoginFailed---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const-string v0, "onLoginFailed"

    invoke-direct {p0}, Lcom/lk/sdk/BasePlatformState;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lk/sdk/BasePlatformState;->sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public final onLoginFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    const-string p1, ""

    .line 228
    :cond_0
    if-nez p2, :cond_1

    .line 229
    const-string p2, ""

    .line 232
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "uid"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v3, "token"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v3, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/lk/sdk/BasePlatformState;->isLOG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    const-string v3, "BasePlatformState"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onLoginFinish---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_2
    const-string v3, "onLoginFinish"

    invoke-direct {p0, v3, v2}, Lcom/lk/sdk/BasePlatformState;->sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void

    .line 237
    .end local v2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onLogoutFinish()V
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/lk/sdk/BasePlatformState;->isLOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string v0, "BasePlatformState"

    const-string v1, "-----onLogoutFinish---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    const-string v0, "onLogoutFinish"

    invoke-direct {p0}, Lcom/lk/sdk/BasePlatformState;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lk/sdk/BasePlatformState;->sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public final onPayFinish(Lcom/lk/sdk/BasePlatformState$PAY_STATUS;)V
    .locals 4
    .param p1, "status"    # Lcom/lk/sdk/BasePlatformState$PAY_STATUS;

    .prologue
    .line 283
    const-string v0, "0"

    .line 284
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/lk/sdk/BasePlatformState$PAY_STATUS;->FAILED:Lcom/lk/sdk/BasePlatformState$PAY_STATUS;

    if-ne p1, v1, :cond_2

    .line 285
    const-string v0, "1"

    .line 290
    :cond_0
    :goto_0
    sget-object v1, Lcom/lk/sdk/BasePlatformState;->isLOG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const-string v1, "BasePlatformState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----onPayFinish---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    const-string v1, "onPayFinish"

    invoke-direct {p0, v1, v0}, Lcom/lk/sdk/BasePlatformState;->sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void

    .line 286
    :cond_2
    sget-object v1, Lcom/lk/sdk/BasePlatformState$PAY_STATUS;->CANCEL:Lcom/lk/sdk/BasePlatformState$PAY_STATUS;

    if-ne p1, v1, :cond_0

    .line 287
    const-string v0, "-1"

    goto :goto_0
.end method

.method public final onSwitchAccountFinish()V
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/lk/sdk/BasePlatformState;->isLOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "BasePlatformState"

    const-string v1, "-----onSwitchAccountFinish---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    const-string v0, "onSwitchAccount"

    invoke-direct {p0}, Lcom/lk/sdk/BasePlatformState;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lk/sdk/BasePlatformState;->sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public final onUserCenter()V
    .locals 2

    .prologue
    .line 315
    const-string v0, "onUserCenter"

    invoke-direct {p0}, Lcom/lk/sdk/BasePlatformState;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lk/sdk/BasePlatformState;->sendMessage2Unity(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public final setDeinitCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 0

    .prologue
    .line 79
    .local p1, "mDeinitCallback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    iput-object p1, p0, Lcom/lk/sdk/BasePlatformState;->mDeinitCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    .line 80
    return-void
.end method

.method public final setInitCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 0

    .prologue
    .line 63
    .local p1, "mInitCallback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    iput-object p1, p0, Lcom/lk/sdk/BasePlatformState;->mInitCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    .line 64
    return-void
.end method

.method public final setLoginCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 0

    .prologue
    .line 67
    .local p1, "mLoginCallback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    iput-object p1, p0, Lcom/lk/sdk/BasePlatformState;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    .line 68
    return-void
.end method

.method public final setLogoutCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 0

    .prologue
    .line 71
    .local p1, "mLogoutCallback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    iput-object p1, p0, Lcom/lk/sdk/BasePlatformState;->mLogoutCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    .line 72
    return-void
.end method

.method public final setMessageObjName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objName"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lk/sdk/BasePlatformState;->m_gameObjectName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public final setPayCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 0

    .prologue
    .line 75
    .local p1, "mPayCallback":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    iput-object p1, p0, Lcom/lk/sdk/BasePlatformState;->mPayCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    .line 76
    return-void
.end method

.method public final setSwitchAccount(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    .locals 0

    .prologue
    .line 83
    .local p1, "switchAccount":Lcom/lk/sdk/BasePluginInterface$Callback;, "Lcom/lk/sdk/BasePluginInterface$Callback;"
    iput-object p1, p0, Lcom/lk/sdk/BasePlatformState;->mSwitchAccountCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    .line 84
    return-void
.end method
