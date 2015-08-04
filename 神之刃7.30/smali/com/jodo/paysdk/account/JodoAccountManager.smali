.class public Lcom/jodo/paysdk/account/JodoAccountManager;
.super Ljava/lang/Object;


# static fields
.field private static final CONFIG_TAG:Ljava/lang/String; = "JodoAccountManager"

.field private static final KEY_ROLE_LEVEL:Ljava/lang/String; = "role_level"

.field private static final KEY_ROLE_NAME:Ljava/lang/String; = "role_name"

.field private static final KEY_SERVER_ID:Ljava/lang/String; = "server_id"

.field private static final KEY_SERVER_NAME:Ljava/lang/String; = "server_name"

.field private static mInstance:Lcom/jodo/paysdk/account/JodoAccountManager;


# instance fields
.field private mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jodo/paysdk/account/JodoAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAccount:Lcom/jodo/paysdk/account/JodoAccount;

.field private mOldAccount:Lcom/jodo/paysdk/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/paysdk/f/g",
            "<",
            "Lcom/jodo/paysdk/account/JodoAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mPwdInfo:Lcom/jodo/paysdk/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jodo/paysdk/f/g",
            "<",
            "Lcom/jodo/paysdk/account/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/jodo/paysdk/f/g;

    const-string v1, ".p.dt"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/jodo/paysdk/f/g;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mOldAccount:Lcom/jodo/paysdk/f/g;

    new-instance v0, Lcom/jodo/paysdk/f/g;

    const-string v1, ".pwd.dt"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/jodo/paysdk/f/g;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mPwdInfo:Lcom/jodo/paysdk/f/g;

    return-void
.end method

.method private findAccount(Ljava/lang/String;)Lcom/jodo/paysdk/account/JodoAccount;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getAccountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/paysdk/account/JodoAccount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->sort(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/account/JodoAccountManager;->mInstance:Lcom/jodo/paysdk/account/JodoAccountManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/account/JodoAccountManager;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/account/JodoAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jodo/paysdk/account/JodoAccountManager;->mInstance:Lcom/jodo/paysdk/account/JodoAccountManager;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/account/JodoAccountManager;->mInstance:Lcom/jodo/paysdk/account/JodoAccountManager;

    return-object v0
.end method

.method private hasAccount(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/account/JodoAccountManager;->findAccount(Ljava/lang/String;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initAccountInfo(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mPwdInfo:Lcom/jodo/paysdk/f/g;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mPwdInfo:Lcom/jodo/paysdk/f/g;

    invoke-virtual {v0}, Lcom/jodo/paysdk/f/g;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    new-instance v4, Lcom/jodo/paysdk/account/b;

    invoke-direct {v4, v0}, Lcom/jodo/paysdk/account/b;-><init>(Lcom/jodo/paysdk/account/JodoAccount;)V

    invoke-virtual {v4}, Lcom/jodo/paysdk/account/b;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/jodo/paysdk/account/b;

    invoke-direct {v0}, Lcom/jodo/paysdk/account/b;-><init>()V

    invoke-virtual {v0, v5}, Lcom/jodo/paysdk/account/b;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mPwdInfo:Lcom/jodo/paysdk/f/g;

    invoke-virtual {v5, v0}, Lcom/jodo/paysdk/f/g;->a(Lcom/jodo/paysdk/f/h;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/b;->a()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/b;->a()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/jodo/paysdk/config/JodoConfig;->getEnabledRememberPsw(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/jodo/paysdk/account/b;->b(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/b;

    invoke-virtual {v0, v5}, Lcom/jodo/paysdk/account/b;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mPwdInfo:Lcom/jodo/paysdk/f/g;

    invoke-virtual {v5, v0}, Lcom/jodo/paysdk/f/g;->a(Lcom/jodo/paysdk/f/h;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2
.end method

.method private initAccountList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mOldAccount:Lcom/jodo/paysdk/f/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mOldAccount:Lcom/jodo/paysdk/f/g;

    invoke-virtual {v0}, Lcom/jodo/paysdk/f/g;->a()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    new-instance v4, Lcom/jodo/paysdk/account/JodoAccount;

    invoke-direct {v4, v3}, Lcom/jodo/paysdk/account/JodoAccount;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mOldAccount:Lcom/jodo/paysdk/f/g;

    invoke-virtual {v3, v4}, Lcom/jodo/paysdk/f/g;->a(Lcom/jodo/paysdk/f/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v4, v3}, Lcom/jodo/paysdk/account/JodoAccount;->setLoginPassword(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->hasAccount(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/jodo/paysdk/account/JodoAccount;

    const-string v3, ""

    invoke-direct {v2, v0, v3}, Lcom/jodo/paysdk/account/JodoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/paysdk/account/JodoAccount;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/account/a;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/account/a;-><init>(Lcom/jodo/paysdk/account/JodoAccountManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getAccountByLoginName(Ljava/lang/String;)Lcom/jodo/paysdk/account/JodoAccount;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getAccountList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getAccountByOauthId(Ljava/lang/String;)Lcom/jodo/paysdk/account/JodoAccount;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getAccountList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mCurrentAccount:Lcom/jodo/paysdk/account/JodoAccount;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getAccountList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    iput-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mCurrentAccount:Lcom/jodo/paysdk/account/JodoAccount;

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mCurrentAccount:Lcom/jodo/paysdk/account/JodoAccount;

    return-object v0
.end method

.method public getCurrentRoleLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "JodoAccountManager"

    const-string v1, "role_level"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRoleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "JodoAccountManager"

    const-string v1, "role_name"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentServerID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "JodoAccountManager"

    const-string v1, "server_id"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "JodoAccountManager"

    const-string v1, "server_name"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacebookAccount()Lcom/jodo/paysdk/account/JodoAccount;
    .locals 4

    invoke-direct {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getAccountList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstNormalAccount()Lcom/jodo/paysdk/account/JodoAccount;
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getNormalAccountList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    goto :goto_0
.end method

.method public getNormalAccountList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/paysdk/account/JodoAccount;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getAccountList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public init(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p2}, Lcom/jodo/paysdk/account/JodoAccountManager;->initAccountList(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/account/JodoAccountManager;->initAccountInfo(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveAccount(Landroid/content/Context;Lcom/jodo/paysdk/account/JodoAccount;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {p1}, Lcom/jodo/paysdk/config/JodoConfig;->getEnabledRememberPsw(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/jodo/paysdk/account/JodoAccount;->setLoginPassword(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jodo/paysdk/account/JodoAccountManager;->findAccount(Ljava/lang/String;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mAccountList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/jodo/paysdk/account/b;

    invoke-direct {v1, p2}, Lcom/jodo/paysdk/account/b;-><init>(Lcom/jodo/paysdk/account/JodoAccount;)V

    iget-object v2, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mPwdInfo:Lcom/jodo/paysdk/f/g;

    invoke-virtual {v2, v1}, Lcom/jodo/paysdk/f/g;->b(Lcom/jodo/paysdk/f/h;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCurrentAccount(Lcom/jodo/paysdk/account/JodoAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccountManager;->mCurrentAccount:Lcom/jodo/paysdk/account/JodoAccount;

    return-void
.end method

.method public setCurrentRoleLevel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "JodoAccountManager"

    const-string v1, "role_level"

    invoke-static {p1, v0, v1, p2}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setCurrentRoleName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "JodoAccountManager"

    const-string v1, "role_name"

    invoke-static {p1, v0, v1, p2}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setCurrentServerID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "JodoAccountManager"

    const-string v1, "server_id"

    invoke-static {p1, v0, v1, p2}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setCurrentServerName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "JodoAccountManager"

    const-string v1, "server_name"

    invoke-static {p1, v0, v1, p2}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
