.class public final Lcom/jodo/paysdk/al;
.super Lcom/jodo/paysdk/d/w;


# direct methods
.method public static a(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;)V
    .locals 3

    const-string v0, "initconfig"

    const-string v1, "isIniting"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    invoke-static {p0, p1}, Lcom/jodo/paysdk/al;->b(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;)V
    .locals 12

    const-string v0, "initconfig"

    const-string v1, "isIniting"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "jodoplay_is_initing"

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getSimoperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setServerid(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serverid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getSimoperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getSimoperatorname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setServername(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "servername:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getSimoperatorname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getMobileSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jodo/paysdk/model/JodoPayInfo;->setRolename(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rolename:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jodo/paysdk/model/FingerInfo;->getMobileSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/jodo/paysdk/model/JodoPayInfo;->setRolelevel(I)V

    invoke-static {p0}, Lcom/jodo/paysdk/util/w;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jodoplay_please_connect_network_before_payment"

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/jodo/paysdk/al;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jodoplay_get_payment_message"

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/jodo/paysdk/d/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/jodo/paysdk/d/ae;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;)V

    invoke-static {v0}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/d/ae;)V

    invoke-static {}, Lcom/jodo/paysdk/f/d;->d()Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/al;->b(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {p2}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;)V

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jodo/paysdk/f/d;->i()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getCporderid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getPrice()I

    move-result v2

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/JodoPayInfo;->getExt()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
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

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jodo/paysdk/account/JodoAccount;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jodo/paysdk/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "cpid"

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "gameid"

    invoke-direct {v0, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "cporderid"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "gameuid"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "sessiontoken"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "sign"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/jodo/paysdk/am;

    invoke-direct {v0, p0, v5}, Lcom/jodo/paysdk/am;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/am;->start()V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "initconfig"

    const-string v1, "isIniting"

    invoke-static {p0, v0, v1, v3}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "initconfig"

    const-string v1, "isIniting"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/config/a;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/jodo/paysdk/f/f;->a:Lcom/jodo/paysdk/f/f;

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/f/f;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;)V

    invoke-static {p0}, Lcom/jodo/paysdk/util/w;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/jodo/paysdk/d/m;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/jodo/shares/net/shares/d;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-static {p0}, Lcom/jodo/shares/net/shares/j;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/shares/net/shares/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "initconfig"

    const-string v1, "isIniting"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    goto :goto_0
.end method
