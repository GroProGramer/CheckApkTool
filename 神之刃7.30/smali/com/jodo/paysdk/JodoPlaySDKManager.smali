.class public final Lcom/jodo/paysdk/JodoPlaySDKManager;
.super Lcom/jodo/paysdk/d/w;


# static fields
.field private static ActivityOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->ActivityOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/paysdk/d/w;-><init>()V

    return-void
.end method

.method public static appInit(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/jodo/paysdk/e/a;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/f/d;->a(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/jodo/paysdk/config/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static getScreenOrigentation()I
    .locals 1

    sget v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->ActivityOrientation:I

    return v0
.end method

.method protected static initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/config/c;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V
    .locals 2

    sget-boolean v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->isSDKInitFinished:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jodo"

    const-string v1, "initSDK required run on mainThread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/jodo/paysdk/af;

    invoke-direct {v0, p0, p1, p2}, Lcom/jodo/paysdk/af;-><init>(Landroid/app/Activity;Lcom/jodo/paysdk/config/c;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V

    invoke-static {p1}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/config/c;)V

    invoke-static {p0}, Lcom/jodo/paysdk/d/m;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/config/c;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V

    return-void
.end method

.method public static setScreenPortrait(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    sput v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->ActivityOrientation:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    sput v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->ActivityOrientation:I

    goto :goto_0
.end method

.method public static showAccountManageView(Landroid/content/Context;)V
    .locals 6

    const-string v1, "http://account.jodoplay.com/usercenter/mainpage"

    const/4 v2, 0x0

    const/16 v3, 0xf99

    const/4 v4, 0x1

    new-instance v5, Lcom/jodo/paysdk/ai;

    invoke-direct {v5}, Lcom/jodo/paysdk/ai;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    return-void
.end method

.method public static showAgreementView(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const-string v1, "http://policy.jodoplay.com/ut/KKFun\u670d\u52d9\u689d\u6b3e"

    const/16 v3, 0xf99

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    return-void
.end method

.method public static showChangeAccountView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/account/JodoAccountManager;->setCurrentAccount(Lcom/jodo/paysdk/account/JodoAccount;)V

    const-class v0, Lcom/jodo/paysdk/JodoLoginActivity;

    const-string v1, "showChangeAccountView"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showLoginView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V
    .locals 4

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jodo"

    const-string v1, "showLoginView required run on mainThread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/jodo/paysdk/ah;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/ah;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/jodo/paysdk/d/m;->c:Z

    if-nez v0, :cond_1

    const-string v0, "\u672a\u6210\u529f\u521d\u59cb\u5316,\u767b\u9646\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getExtraParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v3, v1, v2, v0}, Lcom/jodo/paysdk/interfaces/LoginCallbackListener;->onLoginCallback(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "ctk"

    const-string v1, "got"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/g;->a(Landroid/content/Context;Landroid/os/Handler;Z)V

    :cond_3
    invoke-static {p1}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    if-nez p0, :cond_4

    const-string v0, "\u4f20\u5165 context \u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5context\u662f\u5426\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    const-class v1, Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-static {v1}, Lcom/jodo/paysdk/a/a;->hasExist(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    const-class v0, Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-static {p0, v0}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getEnabledAutoLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->IsValidNormalAccount()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->IsValidFbAccount()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->IsValidVisitor()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-class v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;

    const-string v1, "showLoginView"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-class v0, Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-static {p0, v0}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static showPayView(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V
    .locals 12

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jodo"

    const-string v1, "showPayView required run on mainThread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/jodo/paysdk/ag;

    invoke-direct {v0, p0, p1, p2}, Lcom/jodo/paysdk/ag;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/jodo/paysdk/d/m;->c:Z

    if-nez v0, :cond_1

    const-string v0, "\u672a\u6210\u529f\u521d\u59cb\u5316,\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jodo/paysdk/f/d;->i()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getCporderid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "string"

    const-string v3, "jodoplay_get_user_message_failed"

    invoke-static {p0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getSessionToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getServerid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getServername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getRolename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getRolelevel()I

    move-result v5

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getPrice()I

    move-result v6

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->isPriceFixed()Z

    move-result v7

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getExt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getCporderid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    invoke-static/range {v0 .. v11}, Lcom/jodo/paysdk/d/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showQuitGameView(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showQuitGameView(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V

    return-void
.end method

.method public static showQuitGameView(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V
    .locals 2

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jodo"

    const-string v1, "showQuitGameView required run on mainThread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/jodo/paysdk/ak;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/ak;-><init>(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getEnablequitpage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/jodo/paysdk/JodoQuitActivity;->show(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/jodo/paysdk/interfaces/QuitGameCallback;->OnQuit()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static showRegetPswView(Landroid/content/Context;)V
    .locals 6

    const-string v1, "http://account.jodoplay.com/usercenter/resetpsw"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getNormalAccountList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    :try_start_0
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ln"

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/16 v3, 0xf99

    const/4 v4, 0x1

    new-instance v5, Lcom/jodo/paysdk/aj;

    invoke-direct {v5}, Lcom/jodo/paysdk/aj;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
