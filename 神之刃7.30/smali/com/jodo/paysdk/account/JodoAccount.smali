.class public Lcom/jodo/paysdk/account/JodoAccount;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/f/h;


# static fields
.field private static final CACHE_KEY_PREFIX_BEFORE_UID:Ljava/lang/String; = "jd_acount"

.field public static final KEY_EXTRA_PARAMS:Ljava/lang/String; = "l"

.field public static final KEY_GAME_UID:Ljava/lang/String; = "c"

.field public static final KEY_LAST_LOGIN_TIME_MS:Ljava/lang/String; = "k"

.field public static final KEY_LOGIN_NAME:Ljava/lang/String; = "a"

.field public static final KEY_LOGIN_PWD:Ljava/lang/String; = "b"

.field public static final KEY_NICK_NAME:Ljava/lang/String; = "e"

.field public static final KEY_OAUTH_EXPIRE:Ljava/lang/String; = "g"

.field public static final KEY_OAUTH_ID:Ljava/lang/String; = "h"

.field public static final KEY_OAUTH_TOKEN:Ljava/lang/String; = "i"

.field public static final KEY_OAUTH_TYPE:Ljava/lang/String; = "f"

.field public static final KEY_SESSION_TOKEN:Ljava/lang/String; = "d"

.field public static final TYPE_FACEBOOK:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_SLIENT:I = 0x3

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VISITOR:I = 0x1


# instance fields
.field private lastLoginTime_ms:J

.field private mCacheKey:Ljava/lang/String;

.field private mExtraParams:Lorg/json/JSONObject;

.field private mGameUid:Ljava/lang/String;

.field private mLoginName:Ljava/lang/String;

.field private mLoginPassword:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mOauthExpire:I

.field private mOauthID:Ljava/lang/String;

.field private mOauthToken:Ljava/lang/String;

.field private mOauthType:I

.field private mSessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthType:I

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthType:I

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mLoginName:Ljava/lang/String;

    iput-object p2, p0, Lcom/jodo/paysdk/account/JodoAccount;->mLoginPassword:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthType:I

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthID:Ljava/lang/String;

    iput-object p2, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthToken:Ljava/lang/String;

    iput p3, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthType:I

    return-void
.end method


# virtual methods
.method public IsValidFbAccount()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsValidNormalAccount()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsValidVisitor()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deserialize(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "a"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setLoginName(Ljava/lang/String;)V

    const-string v2, "b"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setLoginPassword(Ljava/lang/String;)V

    const-string v2, "c"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setGameUid(Ljava/lang/String;)V

    const-string v2, "d"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setSessionToken(Ljava/lang/String;)V

    const-string v2, "e"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setNickName(Ljava/lang/String;)V

    const-string v2, "f"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setOauthType(I)V

    const-string v2, "g"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setOauthExpire(I)V

    const-string v2, "h"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setOauthID(Ljava/lang/String;)V

    const-string v2, "i"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/account/JodoAccount;->setOauthToken(Ljava/lang/String;)V

    const-string v2, "k"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/jodo/paysdk/account/JodoAccount;->setLastLoginTime_ms(J)V

    const-string v2, "l"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/p;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/account/JodoAccount;->setExtraParams(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mCacheKey:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthType:I

    if-nez v0, :cond_1

    const-string v0, "%s_%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "jd_acount"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/jodo/paysdk/account/JodoAccount;->mLoginName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mCacheKey:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mCacheKey:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "%s_%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "jd_acount"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthID:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mCacheKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtraParams()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mExtraParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getGameUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mGameUid:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLoginTime_ms()J
    .locals 2

    iget-wide v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->lastLoginTime_ms:J

    return-wide v0
.end method

.method public getLoginName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mLoginName:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mLoginPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mNickName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mNickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mLoginName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mNickName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOauthExpire()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthExpire:I

    return v0
.end method

.method public getOauthID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthID:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthType()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthType:I

    return v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/account/JodoAccount;->mSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->serializeJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeJson()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "a"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "b"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getGameUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "e"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "f"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "g"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthExpire()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "h"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "i"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "k"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getLastLoginTime_ms()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "l"

    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getExtraParams()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtraParams(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mExtraParams:Lorg/json/JSONObject;

    return-void
.end method

.method public setGameUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mGameUid:Ljava/lang/String;

    return-void
.end method

.method public setLastLoginTime_ms(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->lastLoginTime_ms:J

    return-void
.end method

.method public setLoginName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mLoginName:Ljava/lang/String;

    return-void
.end method

.method public setLoginPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mLoginPassword:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mNickName:Ljava/lang/String;

    return-void
.end method

.method public setOauthExpire(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthExpire:I

    return-void
.end method

.method public setOauthID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthID:Ljava/lang/String;

    return-void
.end method

.method public setOauthToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthToken:Ljava/lang/String;

    return-void
.end method

.method public setOauthType(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mOauthType:I

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/JodoAccount;->mSessionToken:Ljava/lang/String;

    return-void
.end method
