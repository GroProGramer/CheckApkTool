.class public final Lcom/jodo/paysdk/account/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/f/h;


# instance fields
.field private a:Lcom/jodo/paysdk/account/JodoAccount;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jodo/paysdk/account/JodoAccount;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    return-void
.end method


# virtual methods
.method public final a()Lcom/jodo/paysdk/account/JodoAccount;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0, p1}, Lcom/jodo/paysdk/account/JodoAccount;->setLoginPassword(Ljava/lang/String;)V

    return-void
.end method

.method public final deserialize(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/account/JodoAccount;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jodo/paysdk/account/JodoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v1, p1}, Lcom/jodo/paysdk/account/JodoAccount;->deserialize(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v2, v0}, Lcom/jodo/paysdk/account/JodoAccount;->setLoginName(Ljava/lang/String;)V

    return v1
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "%s_%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "jd_pwd"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v2}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/account/b;->b:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "%s_%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "jd_pwd"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v2}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthID()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/account/b;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public final serialize()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/account/b;->a:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->serializeJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
