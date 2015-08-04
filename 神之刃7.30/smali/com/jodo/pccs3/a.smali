.class public final Lcom/jodo/pccs3/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/jodo/pccs3/a;


# instance fields
.field public a:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field private c:Lcom/jodo/pccs3/a/f;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jodo/pccs3/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/jodo/pccs3/c/a;

.field private h:Lcom/jodo/pccs3/b/a;

.field private i:Lorg/json/JSONObject;

.field private j:Lcom/jodo/pccs3/a/b;

.field private k:Lcom/jodo/pccs3/a/e;

.field private l:Lorg/json/JSONArray;

.field private m:Z

.field private n:Z

.field private o:Lcom/jodo/pccs3/message/a/a;

.field private p:Lcom/jodo/pccs3/message/a/d;

.field private q:Lcom/jodo/pccs3/message/a/b;

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/pccs3/a;->b:Lcom/jodo/pccs3/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/jodo/pccs3/a;->c:Lcom/jodo/pccs3/a/f;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/a;->d:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/jodo/pccs3/a;->e:Z

    iput-object v1, p0, Lcom/jodo/pccs3/a;->a:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iput-object v1, p0, Lcom/jodo/pccs3/a;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/jodo/pccs3/a;->g:Lcom/jodo/pccs3/c/a;

    iput-object v1, p0, Lcom/jodo/pccs3/a;->h:Lcom/jodo/pccs3/b/a;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/a;->i:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/jodo/pccs3/a;->j:Lcom/jodo/pccs3/a/b;

    iput-object v1, p0, Lcom/jodo/pccs3/a;->k:Lcom/jodo/pccs3/a/e;

    iput-object v1, p0, Lcom/jodo/pccs3/a;->l:Lorg/json/JSONArray;

    iput-boolean v2, p0, Lcom/jodo/pccs3/a;->m:Z

    iput-boolean v2, p0, Lcom/jodo/pccs3/a;->n:Z

    iput-object v1, p0, Lcom/jodo/pccs3/a;->o:Lcom/jodo/pccs3/message/a/a;

    iput-object v1, p0, Lcom/jodo/pccs3/a;->p:Lcom/jodo/pccs3/message/a/d;

    iput-object v1, p0, Lcom/jodo/pccs3/a;->q:Lcom/jodo/pccs3/message/a/b;

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/jodo/pccs3/a;->r:I

    iput-boolean v2, p0, Lcom/jodo/pccs3/a;->s:Z

    return-void
.end method

.method public static a()Lcom/jodo/pccs3/a;
    .locals 1

    sget-object v0, Lcom/jodo/pccs3/a;->b:Lcom/jodo/pccs3/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/pccs3/a;

    invoke-direct {v0}, Lcom/jodo/pccs3/a;-><init>()V

    sput-object v0, Lcom/jodo/pccs3/a;->b:Lcom/jodo/pccs3/a;

    :cond_0
    sget-object v0, Lcom/jodo/pccs3/a;->b:Lcom/jodo/pccs3/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "pccs_config"

    invoke-static {p1}, Lcom/jodo/pccs3/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "conversation_field_release_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v2}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "gameuid"

    invoke-virtual {v1, p0}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "gamePkg"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameVc"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cpid"

    sget-object v3, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameid"

    sget-object v3, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channel"

    sget-object v3, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    invoke-virtual {v1, p0}, Lcom/jodo/paysdk/model/FingerInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "phoneType"

    invoke-virtual {v1}, Lcom/jodo/paysdk/model/FingerInfo;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "phoneVersion"

    invoke-virtual {v1}, Lcom/jodo/paysdk/model/FingerInfo;->getOs_release()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "networkType"

    invoke-virtual {v1}, Lcom/jodo/paysdk/model/FingerInfo;->getNetworktype()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wifi"

    invoke-virtual {v1}, Lcom/jodo/paysdk/model/FingerInfo;->getWifi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "globalCode"

    invoke-static {p0}, Lcom/jodo/paysdk/f/d;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accountName"

    const-string v2, "accountName"

    const-string v3, ""

    invoke-static {p1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jodoUID"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v2

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const-string v1, "jodoUID"

    invoke-virtual {v2}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isLastjodoUID"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "roleName"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "roleName"

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentRoleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isLastRoleName"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v1, "serverName"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "serverName"

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isLastServerName"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v1, "email"

    const-string v2, "email"

    const-string v3, ""

    invoke-static {p1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const-string v2, "jodoUID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v2, "roleName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v2, "serverName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private a(I)V
    .locals 2

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    new-instance v1, Lcom/jodo/pccs3/b;

    invoke-direct {v1, p0, p1}, Lcom/jodo/pccs3/b;-><init>(Lcom/jodo/pccs3/a;I)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "pccs_config"

    const-string v1, "chat_status_field_release"

    invoke-static {p0, v0, v1, p1}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {p1, p3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setAttributes(Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/pccs3/a;->s:Z

    new-instance v0, Lcom/jodo/pccs3/c;

    invoke-direct {v0, p0, p1}, Lcom/jodo/pccs3/c;-><init>(Lcom/jodo/pccs3/a;Landroid/content/Context;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            "T:",
            "Lcom/jodo/pccs3/message/d",
            "<TT1;>;>(",
            "Landroid/content/Context;",
            "TT;Z",
            "Lcom/jodo/pccs3/a/g",
            "<TT;>;)V"
        }
    .end annotation

    const-string v6, "problem_chat"

    new-instance v0, Lcom/jodo/pccs3/l;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jodo/pccs3/l;-><init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V

    iget-object v1, p0, Lcom/jodo/pccs3/a;->i:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v6, v1, v0}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "pccs_config"

    invoke-static {p2}, Lcom/jodo/pccs3/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p3}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->e:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "PCCSManager\u672a\u521d\u59cb\u5316"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v2, v0}, Lcom/jodo/pccs3/o;->a(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->n:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->m:Z

    if-nez v0, :cond_3

    if-eqz p4, :cond_3

    new-instance v0, Lcom/jodo/pccs3/n;

    invoke-direct {v0, p0}, Lcom/jodo/pccs3/n;-><init>(Lcom/jodo/pccs3/a;)V

    invoke-interface {p4, v2, v0}, Lcom/jodo/pccs3/o;->a(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/Exception;)V

    :cond_3
    const/4 v6, 0x3

    new-instance v0, Lcom/jodo/pccs3/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jodo/pccs3/m;-><init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V

    invoke-virtual {p0, p1, v6, v0}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;ILcom/jodo/pccs3/a/e;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jodo/pccs3/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jodo/pccs3/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/jodo/pccs3/message/d;->j()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;

    const-string v0, "pccs_config"

    const-string v1, "chat_field_release"

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/jodo/pccs3/message/d;->b(J)V

    invoke-virtual {p3, v4}, Lcom/jodo/pccs3/message/d;->c(I)V

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/jodo/pccs3/message/d;->b(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/jodo/pccs3/message/d;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0, v4}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/a;Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/jodo/pccs3/message/d;->a(J)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p5, p3, v4}, Lcom/jodo/pccs3/a/g;->a(Lcom/jodo/pccs3/message/f;Z)V

    :cond_1
    new-instance v0, Lcom/jodo/pccs3/e;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jodo/pccs3/e;-><init>(Lcom/jodo/pccs3/a;Lcom/jodo/pccs3/message/d;ZLandroid/content/Context;Lcom/jodo/pccs3/a/g;)V

    invoke-virtual {p2, v6, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/e;Ljava/lang/Exception;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/jodo/pccs3/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jodo/pccs3/g;-><init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/e;Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/jodo/pccs3/a/e;->a(ILjava/lang/Exception;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/jodo/pccs3/a;->r:I

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jodoplay_service_retry_connect"

    invoke-static {p1, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jodo/pccs3/a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget v0, p0, Lcom/jodo/pccs3/a;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jodo/pccs3/a;->r:I

    iget v0, p0, Lcom/jodo/pccs3/a;->r:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;ILcom/jodo/pccs3/a/e;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/jodo/pccs3/a;->r:I

    if-eqz p2, :cond_0

    invoke-interface {p2, v1, p3}, Lcom/jodo/pccs3/a/e;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/message/d;Lcom/jodo/pccs3/a/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/a;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z
    .locals 3

    const-string v0, "pccs_config"

    const-string v1, "chat_field_release"

    const-string v2, "problem_chat"

    invoke-static {p0, v2}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/jodo/pccs3/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->m:Z

    return v0
.end method

.method private b(Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/jodo/pccs3/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/jodo/pccs3/k;-><init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVOSCloud;->setDebugLogEnabled(Z)V

    new-instance v0, Lcom/jodo/pccs3/message/a/a;

    invoke-direct {v0, p1}, Lcom/jodo/pccs3/message/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jodo/pccs3/a;->o:Lcom/jodo/pccs3/message/a/a;

    new-instance v0, Lcom/jodo/pccs3/message/a/d;

    invoke-direct {v0, p1}, Lcom/jodo/pccs3/message/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jodo/pccs3/a;->p:Lcom/jodo/pccs3/message/a/d;

    new-instance v0, Lcom/jodo/pccs3/message/a/b;

    invoke-direct {v0, p1}, Lcom/jodo/pccs3/message/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jodo/pccs3/a;->q:Lcom/jodo/pccs3/message/a/b;

    iget-object v0, p0, Lcom/jodo/pccs3/a;->q:Lcom/jodo/pccs3/message/a/b;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerDefaultMessageHandler(Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;)V

    invoke-static {p1}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/pccs3/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/a;->a:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-static {p1}, Lcom/jodo/pccs3/service/PCCSPushInfoService;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/pccs3/a;->e:Z

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/jodo/pccs3/a/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, v1, v0}, Lcom/jodo/pccs3/a/d;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jodo/pccs3/a;->a:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Lcom/jodo/pccs3/o;->a(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/jodo/pccs3/a;->f:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "problem_fix"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "problem_fix"

    :goto_1
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/jodo/pccs3/a;->a:Lcom/avos/avoscloud/im/v2/AVIMClient;

    new-instance v0, Lcom/jodo/pccs3/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jodo/pccs3/f;-><init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Lcom/jodo/pccs3/o;)V

    invoke-virtual {v8, v7, v6, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/util/Map;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p4, v9, v0}, Lcom/jodo/pccs3/o;->a(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "problem_chat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "problem_chat"

    goto :goto_1

    :cond_2
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/jodo/pccs3/a;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V

    return-void
.end method

.method static synthetic b(Lcom/jodo/pccs3/a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/pccs3/a;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/jodo/pccs3/a;)I
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/a;->r:I

    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pccs_config"

    const-string v1, "chat_problem_type_field_release"

    invoke-static {p0, v0, v1, p1}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic d(Lcom/jodo/pccs3/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/pccs3/a;->n:Z

    return v0
.end method

.method static synthetic e(Lcom/jodo/pccs3/a;)I
    .locals 1

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/jodo/pccs3/a;->r:I

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "pccs_config"

    const-string v1, "chat_problem_type_field_release"

    const-string v2, "5 \u5176\u4ed6\u95ee\u9898"

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 3

    const-string v0, "pccs_config"

    const-string v1, "chat_status_field_release"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/jodo/pccs3/a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/pccs3/a;->s:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/jodo/pccs3/message/a;Ljava/lang/String;Z)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jodo/pccs3/message/a;",
            ">(",
            "Landroid/content/Context;",
            "TT;",
            "Ljava/lang/String;",
            "Z)J"
        }
    .end annotation

    invoke-interface {p2, p3}, Lcom/jodo/pccs3/message/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;)Lcom/jodo/pccs3/b/a;

    move-result-object v0

    invoke-interface {p2}, Lcom/jodo/pccs3/message/a;->h()Lcom/jodo/pccs3/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/b/a;->a(Lcom/jodo/pccs3/d/a;)J

    move-result-wide v1

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/a;->c:Lcom/jodo/pccs3/a/f;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/pccs3/a;->c:Lcom/jodo/pccs3/a/f;

    invoke-virtual {p0, p1}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;)Lcom/jodo/pccs3/b/a;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/jodo/pccs3/b/a;->a(J[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/jodo/pccs3/a/f;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/pccs3/message/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "problem_chat"

    invoke-static {p1, v2}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/pccs3/message/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/jodo/pccs3/a;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;)Lcom/jodo/pccs3/b/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/jodo/pccs3/b/a;->a(J[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->useAVCloudUS()V

    const-string v0, "q3er6vs0dkawy15skjeuktf7l4eam438wn5jkts2j7fpf2y3"

    const-string v1, "qpk8ch5bda1jx7wvqdncr41m1pfxu0dwmu5lho77oeqtsyt0"

    invoke-static {p1, v0, v1}, Lcom/avos/avoscloud/AVOSCloud;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/jodo/paysdk/CustomerServiceActivity;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/PushService;->setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "chat"

    const-class v1, Lcom/jodo/paysdk/CustomerServiceActivity;

    invoke-static {p1, v0, v1}, Lcom/avos/avoscloud/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/jodo/pccs3/a;->a(I)V

    return-void
.end method

.method public final a(Landroid/content/Context;ILcom/jodo/pccs3/a/e;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/jodo/paysdk/util/ai;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/pccs3/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jodo/pccs3/h;-><init>(Lcom/jodo/pccs3/a;Landroid/content/Context;ILcom/jodo/pccs3/a/e;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/jodo/pccs3/a;->r:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_1

    iput p2, p0, Lcom/jodo/pccs3/a;->r:I

    :cond_1
    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p3, v0, v1}, Lcom/jodo/pccs3/a/e;->a(ILjava/lang/Exception;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->n:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p3, v3, v0}, Lcom/jodo/pccs3/a/e;->a(ILjava/lang/Exception;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->m:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p3, v0, v1}, Lcom/jodo/pccs3/a/e;->a(ILjava/lang/Exception;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/jodo/pccs3/i;

    invoke-direct {v0, p0, p1, p3}, Lcom/jodo/pccs3/i;-><init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/e;)V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;J)V

    iput-boolean v3, p0, Lcom/jodo/pccs3/a;->m:Z

    iget-object v0, p0, Lcom/jodo/pccs3/a;->a:Lcom/avos/avoscloud/im/v2/AVIMClient;

    new-instance v1, Lcom/jodo/pccs3/j;

    invoke-direct {v1, p0, p3, p1}, Lcom/jodo/pccs3/j;-><init>(Lcom/jodo/pccs3/a;Lcom/jodo/pccs3/a/e;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->open(Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V
    .locals 2

    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->e:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/jodo/pccs3/a/d;->a(ILjava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/jodo/pccs3/a/d;->b()V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;Lcom/jodo/pccs3/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            "T:",
            "Lcom/jodo/pccs3/message/d",
            "<TT1;>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/jodo/pccs3/a/g",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jodo/pccs3/a/c;Lcom/jodo/pccs3/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/jodo/pccs3/a/c;",
            "Lcom/jodo/pccs3/a/g",
            "<",
            "Lcom/jodo/pccs3/message/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/jodo/pccs3/message/b;

    invoke-direct {v0}, Lcom/jodo/pccs3/message/b;-><init>()V

    invoke-virtual {v0, p2}, Lcom/jodo/pccs3/message/b;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/jodo/pccs3/message/b;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/jodo/pccs3/message/b;->a(Lcom/jodo/pccs3/a/c;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/jodo/pccs3/e/i;

    invoke-direct {v0}, Lcom/jodo/pccs3/e/i;-><init>()V

    invoke-virtual {v0, p4}, Lcom/jodo/pccs3/e/i;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/jodo/pccs3/e/i;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/jodo/pccs3/e/i;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentRoleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/e/i;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/e/i;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jodo/pccs3/e/i;->j()Lcom/jodo/pccs3/message/e;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;ZLcom/jodo/pccs3/a/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/jodo/pccs3/a/g",
            "<",
            "Lcom/jodo/pccs3/message/e;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/jodo/pccs3/e/d;

    invoke-direct {v0}, Lcom/jodo/pccs3/e/d;-><init>()V

    invoke-virtual {v0, p2}, Lcom/jodo/pccs3/e/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jodo/pccs3/e/d;->j()Lcom/jodo/pccs3/message/e;

    move-result-object v0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/jodo/pccs3/message/e;->k()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jodo/pccs3/message/d;->b(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/message/d;->c(I)V

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/message/d;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jodo/pccs3/message/d;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "-1"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/a;Ljava/lang/String;Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jodo/pccs3/message/d;->a(J)V

    :cond_0
    const/4 v1, 0x1

    invoke-interface {p4, v0, v1}, Lcom/jodo/pccs3/a/g;->a(Lcom/jodo/pccs3/message/f;Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;Lcom/jodo/pccs3/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            "T:",
            "Lcom/jodo/pccs3/message/d",
            "<TT1;>;>(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/pccs3/message/a;",
            ">;",
            "Lcom/jodo/pccs3/a/g",
            "<TT;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/message/a;

    check-cast v0, Lcom/jodo/pccs3/message/d;

    iget-boolean v2, p0, Lcom/jodo/pccs3/a;->e:Z

    invoke-direct {p0, p1, v0, v2, p3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;ZLcom/jodo/pccs3/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/jodo/pccs3/a/g",
            "<",
            "Lcom/jodo/pccs3/message/e;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/jodo/pccs3/e/f;

    invoke-direct {v0}, Lcom/jodo/pccs3/e/f;-><init>()V

    invoke-virtual {v0, p2}, Lcom/jodo/pccs3/e/f;->a(Z)V

    invoke-virtual {v0}, Lcom/jodo/pccs3/e/f;->j()Lcom/jodo/pccs3/message/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V

    return-void
.end method

.method public final a(Lcom/jodo/pccs3/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/a;->j:Lcom/jodo/pccs3/a/b;

    return-void
.end method

.method public final a(Lcom/jodo/pccs3/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/a;->c:Lcom/jodo/pccs3/a/f;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;Lcom/jodo/pccs3/a/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jodo/pccs3/e/b;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/jodo/pccs3/a/a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/jodo/pccs3/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_0
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/jodo/pccs3/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jodo/pccs3/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Lcom/jodo/pccs3/b/a;
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/a;->g:Lcom/jodo/pccs3/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/pccs3/c/a;

    invoke-direct {v0, p1}, Lcom/jodo/pccs3/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jodo/pccs3/a;->g:Lcom/jodo/pccs3/c/a;

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/a;->h:Lcom/jodo/pccs3/b/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/jodo/pccs3/b/a;

    iget-object v1, p0, Lcom/jodo/pccs3/a;->g:Lcom/jodo/pccs3/c/a;

    invoke-direct {v0, v1}, Lcom/jodo/pccs3/b/a;-><init>(Lcom/jodo/pccs3/c/a;)V

    iput-object v0, p0, Lcom/jodo/pccs3/a;->h:Lcom/jodo/pccs3/b/a;

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/a;->h:Lcom/jodo/pccs3/b/a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "problem_chat"

    invoke-direct {p0, p1, v0, p2}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lcom/jodo/pccs3/message/a/a;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/a;->o:Lcom/jodo/pccs3/message/a/a;

    return-object v0
.end method

.method public final d()Lcom/jodo/pccs3/message/a/d;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/a;->p:Lcom/jodo/pccs3/message/a/d;

    return-object v0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;I)V

    const-string v0, "problem_chat"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jodo/pccs3/a;->j:Lcom/jodo/pccs3/a/b;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/pccs3/a;->j:Lcom/jodo/pccs3/a/b;

    invoke-interface {v0}, Lcom/jodo/pccs3/a/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e()Lcom/jodo/pccs3/message/a/b;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/a;->q:Lcom/jodo/pccs3/message/a/b;

    return-object v0
.end method

.method public final f()Lcom/jodo/pccs3/c/a;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/a;->g:Lcom/jodo/pccs3/c/a;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/pccs3/a;->e:Z

    return v0
.end method

.method public final h()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jodo/pccs3/a/a;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/pccs3/a;->d:Ljava/util/HashMap;

    return-object v0
.end method
