.class public final Lcom/jodo/paysdk/f/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/jodo/paysdk/interfaces/InitCallbackListener;

.field private static b:Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;

.field private static c:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

.field private static d:Lcom/jodo/paysdk/interfaces/OrderCallbackListener;

.field private static e:Lcom/jodo/paysdk/config/c;

.field private static f:Z

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;

.field private static i:Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;

.field private static j:Lcom/jodo/paysdk/d/ae;

.field private static k:Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/f/d;->e:Lcom/jodo/paysdk/config/c;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/f/d;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/f/d;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    const-string v0, "IFManager"

    const-string v1, "global_code"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/jodo/paysdk/account/JodoAccount;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getNickName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "jodoplay_visitor_user"

    const-string v1, "string"

    invoke-static {p0, v1, v0}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "IFManager"

    const-string v1, "global_code"

    invoke-static {p0, v0, v1, p1}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/jodo/paysdk/account/JodoAccount;Z)V
    .locals 6

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/jodo/paysdk/f/d;->l:Z

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/jodo/paysdk/f/d;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jodo/pccs3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    const-string v1, "jodoUID"

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jodo/pccs3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/jodo/paysdk/f/d;->c:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/f/d;->c:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getExtraParams()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/interfaces/LoginCallbackListener;->onLoginCallback(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, ".jodoplay.com"

    const-string v2, "gameuid=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, ".jodoplay.com"

    const-string v2, "sessiontoken=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getSessionToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const-string v2, ".jodoplay.com"

    const-string v3, "puid=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-static {p0, p1}, Lcom/jodo/paysdk/f/d;->a(Landroid/content/Context;Lcom/jodo/paysdk/account/JodoAccount;)Ljava/lang/String;

    sget-object v0, Lcom/jodo/paysdk/f/f;->a:Lcom/jodo/paysdk/f/f;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "gameuid"

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/f/f;->a(Lorg/apache/http/Header;)V

    sget-object v0, Lcom/jodo/paysdk/f/f;->a:Lcom/jodo/paysdk/f/f;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "sessiontoken"

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/f/f;->a(Lorg/apache/http/Header;)V

    const-string v0, "webview"

    sget-object v1, Lcom/jodo/paysdk/f/f;->a:Lcom/jodo/paysdk/f/f;

    invoke-virtual {v1}, Lcom/jodo/paysdk/f/f;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "print no1 account_type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/AppsflyerService;->sendRegistrationEvent(Landroid/content/Context;I)V

    if-nez p2, :cond_1

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "anim"

    const-string v1, "jodoplay_wmtoast_in"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "anim"

    const-string v1, "jodoplay_wmtoast_out"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/jodo/paysdk/f/e;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/f/e;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/account/JodoAccount;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "cannot get puid"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/jodo/paysdk/f/d;->l:Z

    sget-object v0, Lcom/jodo/paysdk/f/d;->c:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jodo/paysdk/f/d;->c:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/interfaces/LoginCallbackListener;->onLoginCallback(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static a(Lcom/jodo/paysdk/config/c;)V
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/f/d;->e:Lcom/jodo/paysdk/config/c;

    return-void
.end method

.method public static a(Lcom/jodo/paysdk/d/ae;)V
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/f/d;->j:Lcom/jodo/paysdk/d/ae;

    return-void
.end method

.method public static a(Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/f/d;->a:Lcom/jodo/paysdk/interfaces/InitCallbackListener;

    return-void
.end method

.method public static a(Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/f/d;->c:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    return-void
.end method

.method public static a(Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/f/d;->d:Lcom/jodo/paysdk/interfaces/OrderCallbackListener;

    return-void
.end method

.method public static a(Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;)V
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/f/d;->b:Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;

    return-void
.end method

.method public static a(Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;)V
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/f/d;->h:Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;

    return-void
.end method

.method public static a(Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;)V
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/f/d;->i:Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;

    return-void
.end method

.method public static a(Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/f/d;->k:Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/f/d;->b:Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/f/d;->b:Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;

    const/16 v1, 0xc

    invoke-interface {v0, v1, p0}, Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;->onRoleLoadedFinished(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/f/d;->i:Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/f/d;->i:Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;->onSingleGameOrderCallback(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/f/d;->d:Lcom/jodo/paysdk/interfaces/OrderCallbackListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/f/d;->d:Lcom/jodo/paysdk/interfaces/OrderCallbackListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/jodo/paysdk/interfaces/OrderCallbackListener;->onOrderCallback(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/f/d;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/jodo/paysdk/f/d;->f:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/jodo/paysdk/f/d;->f:Z

    return v0
.end method

.method public static b()Lcom/jodo/paysdk/config/c;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/f/d;->e:Lcom/jodo/paysdk/config/c;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, ".jodoplay.com"

    const-string v2, "from_platform=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "kkfun"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jodo/paysdk/d/m;->c:Z

    sget-object v0, Lcom/jodo/paysdk/d/m;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onSdkInitFinished(Landroid/app/Activity;)V

    sget-object v0, Lcom/jodo/paysdk/f/d;->a:Lcom/jodo/paysdk/interfaces/InitCallbackListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/f/d;->a:Lcom/jodo/paysdk/interfaces/InitCallbackListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jodo/paysdk/interfaces/InitCallbackListener;->onSdkInitFinished(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/f/d;->k:Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/f/d;->k:Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;

    invoke-interface {v0, p0}, Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;->onCloseWebview(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c()Lcom/jodo/paysdk/interfaces/LoginCallbackListener;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/f/d;->c:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    return-object v0
.end method

.method public static d()Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/f/d;->h:Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;

    return-object v0
.end method

.method public static e()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/f/d;->b:Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/f/d;->b:Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;->onRoleLoadedFinished(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static f()Z
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/f/d;->d:Lcom/jodo/paysdk/interfaces/OrderCallbackListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/f/d;->i:Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/f/d;->k:Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/f/d;->k:Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;

    invoke-interface {v0}, Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;->onOpenWebview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/jodo/paysdk/f/d;->l:Z

    return v0
.end method
