.class public Lcom/avos/avoscloud/AVUser;
.super Lcom/avos/avoscloud/AVObject;
.source "AVUser.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    asm = false
    ignores = {
        "query",
        "password"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    }
.end annotation


# static fields
.field public static final FOLLOWEE_TAG:Ljava/lang/String; = "followee"

.field public static final FOLLOWER_TAG:Ljava/lang/String; = "follower"

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final accessTokenTag:Ljava/lang/String; = "access_token"

.field private static final anonymousTag:Ljava/lang/String; = "anonymous"

.field private static final authDataTag:Ljava/lang/String; = "authData"

.field private static transient enableAutomatic:Z = false

.field private static final expiresAtTag:Ljava/lang/String; = "expires_at"

.field private static mUserPropertyFilter:Lcom/avos/avoscloud/RelationPropertyFilter;

.field private static subClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anonymous:Z

.field private email:Ljava/lang/String;

.field private transient facebookToken:Ljava/lang/String;

.field private transient isNew:Z

.field private mobilePhoneNumber:Ljava/lang/String;

.field private transient needTransferFromAnonymousUser:Z

.field private transient password:Ljava/lang/String;

.field private transient qqWeiboToken:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field private transient sinaWeiboToken:Ljava/lang/String;

.field private transient twitterToken:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 25
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUser;->LOG_TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/avos/avoscloud/RelationPropertyFilter;

    invoke-direct {v0}, Lcom/avos/avoscloud/RelationPropertyFilter;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVUser;->mUserPropertyFilter:Lcom/avos/avoscloud/RelationPropertyFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVUser;->processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->processFollowerAndFollowee(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static alwaysUseSubUserClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1876
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVUser;>;"
    sput-object p0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    .line 1877
    return-void
.end method

.method public static associateWithAuthData(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 3
    .param p0, "user"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "userInfo"    # Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1962
    if-nez p1, :cond_1

    .line 1963
    if-eqz p2, :cond_0

    .line 1964
    const/4 v1, -0x1

    const-string v2, "NULL userInfo."

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1976
    :cond_0
    :goto_0
    return-void

    .line 1969
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUser;->authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;

    move-result-object v0

    .line 1970
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1971
    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1973
    :cond_2
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1974
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    .line 1975
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method private static authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;
    .locals 4
    .param p0, "userInfo"    # Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1880
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1881
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1882
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "access_token"

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    const-string v2, "expires_at"

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1885
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->platformUserIdTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    return-object v1
.end method

.method public static cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 6
    .param p0, "user"    # Lcom/avos/avoscloud/AVUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Lcom/avos/avoscloud/AVUser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1852
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->beginDeserialize()V

    .line 1853
    const/4 v3, 0x6

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v3, v4

    invoke-static {p0, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 1860
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVUser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    .local v2, "newUser":Lcom/avos/avoscloud/AVUser;, "TT;"
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->endDeserialize()V

    .line 1867
    .end local v1    # "jsonString":Ljava/lang/String;
    .end local v2    # "newUser":Lcom/avos/avoscloud/AVUser;, "TT;"
    :goto_0
    return-object v2

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ClassCast Exception"

    invoke-static {v3, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1865
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->endDeserialize()V

    .line 1867
    const/4 v2, 0x0

    goto :goto_0

    .line 1865
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->endDeserialize()V

    throw v3
.end method

.method public static declared-synchronized changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 7
    .param p0, "newUser"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "save"    # Z

    .prologue
    .line 109
    const-class v3, Lcom/avos/avoscloud/AVUser;

    monitor-enter v3

    if-eqz p0, :cond_0

    .line 110
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    .line 112
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "currentUserArchivePath":Ljava/io/File;
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 115
    sget-object v2, Lcom/avos/avoscloud/AVUser;->mUserPropertyFilter:Lcom/avos/avoscloud/RelationPropertyFilter;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v5, 0x0

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v6, v4, v5

    invoke-static {p0, v2, v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 123
    :cond_1
    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 128
    .end local v1    # "jsonString":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/avos/avoscloud/PaasClient;->setCurrentUser(Lcom/avos/avoscloud/AVUser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit v3

    return-void

    .line 124
    :cond_3
    if-eqz p1, :cond_2

    .line 125
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "currentUserArchivePath":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1511
    :cond_0
    if-eqz p1, :cond_1

    .line 1512
    const/16 v0, 0xce

    const-string v1, "No valid session token, make sure signUp or login has been called."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1515
    :cond_1
    const/4 v0, 0x0

    .line 1517
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "username"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Blank username."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    const-string v1, "email"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_2
    return-object v0
.end method

.method private static createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Blank username and blank mobile phone number"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 378
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    const-string v1, "username"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 382
    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_2
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 385
    const-string v1, "email"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_3
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 388
    const-string v1, "mobilePhoneNumber"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_4
    invoke-static {p4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 391
    const-string v1, "smsCode"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_5
    return-object v0
.end method

.method private static currentUserArchivePath()Ljava/io/File;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPaasDocumentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/currentUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method public static disableAutomaticUser()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 105
    return-void
.end method

.method public static dissociateAuthData(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 4
    .param p0, "user"    # Lcom/avos/avoscloud/AVUser;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/SaveCallback;

    .prologue
    .line 1980
    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1981
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 1982
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    :cond_0
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1985
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1986
    new-instance v1, Lcom/avos/avoscloud/AVUser$31;

    invoke-direct {v1, p0, p1, p2}, Lcom/avos/avoscloud/AVUser$31;-><init>(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;)V

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 2002
    :cond_1
    :goto_0
    return-void

    .line 1997
    :cond_2
    if-eqz p2, :cond_1

    .line 1998
    new-instance v1, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0xce

    const-string v3, "the user object missing a valid session"

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public static enableAutomaticUser()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 97
    return-void
.end method

.method public static followeeQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p0, "userObjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1696
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1697
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Blank user objectId."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1699
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVFellowshipQuery;

    const-string v1, "_Followee"

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/AVFellowshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1700
    .local v0, "query":Lcom/avos/avoscloud/AVFellowshipQuery;
    const-string v1, "user"

    const-string v2, "_User"

    invoke-static {v2, p0}, Lcom/avos/avoscloud/AVUser;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVFellowshipQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1701
    const-string v1, "followee"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFellowshipQuery;->setFriendshipTag(Ljava/lang/String;)V

    .line 1702
    return-object v0
.end method

.method public static followerQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 3
    .param p0, "userObjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1656
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1657
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Blank user objectId."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1659
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVFellowshipQuery;

    const-string v1, "_Follower"

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/AVFellowshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1660
    .local v0, "query":Lcom/avos/avoscloud/AVFellowshipQuery;
    const-string v1, "user"

    const-string v2, "_User"

    invoke-static {v2, p0}, Lcom/avos/avoscloud/AVUser;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVFellowshipQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVQuery;

    .line 1661
    const-string v1, "follower"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFellowshipQuery;->setFriendshipTag(Ljava/lang/String;)V

    .line 1662
    return-object v0
.end method

.method public static friendshipQuery(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery;"
        }
    .end annotation

    .prologue
    .line 1751
    new-instance v1, Lcom/avos/avoscloud/AVFriendshipQuery;

    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    :goto_0
    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static friendshipQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery;"
        }
    .end annotation

    .prologue
    .line 1764
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVFriendshipQuery;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getCurrentUser()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUser;->getCurrentUser(Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser(Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "userClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 150
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avos/avoscloud/PaasClient;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 151
    .local v3, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-eqz v3, :cond_2

    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    invoke-static {v3, p0}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 188
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    .line 189
    invoke-static {p0, v7}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v3

    .line 190
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 192
    :cond_1
    return-object v3

    .line 155
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userArchiveExist()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    const-class v6, Lcom/avos/avoscloud/AVUser;

    monitor-enter v6

    .line 157
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "jsonString":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 159
    const-string v5, "@type"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_5

    .line 165
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->beginDeserialize()V

    .line 166
    invoke-static {v2, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/avos/avoscloud/AVUser;

    move-object v3, v0

    .line 167
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/avos/avoscloud/PaasClient;->setCurrentUser(Lcom/avos/avoscloud/AVUser;)V

    .line 168
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 170
    invoke-static {v3, p0}, Lcom/avos/avoscloud/AVUser;->cast(Lcom/avos/avoscloud/AVUser;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 175
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    .line 186
    :cond_4
    :goto_1
    monitor-exit v6

    goto :goto_0

    .end local v2    # "jsonString":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 172
    .restart local v2    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/avos/avoscloud/AVUser;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v2, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    :try_start_4
    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    invoke-static {}, Lcom/avos/avoscloud/AVObject;->endDeserialize()V

    throw v5

    .line 179
    :cond_5
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v4

    .line 180
    .local v4, "userObject":Lcom/avos/avoscloud/AVUser;, "TT;"
    invoke-static {v2, v4}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 182
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    move-object v3, v4

    goto :goto_1
.end method

.method public static getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUser;->getQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getUserQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 215
    .local v0, "query":Lcom/avos/avoscloud/AVQuery;, "Lcom/avos/avoscloud/AVQuery<TT;>;"
    return-object v0
.end method

.method public static isEnableAutomatic()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    return v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 275
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 298
    .local v0, "list":[Lcom/avos/avoscloud/AVUser;
    new-instance v1, Lcom/avos/avoscloud/AVUser$1;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$1;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, v1, p2}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 315
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 318
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 334
    return-void
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 354
    return-void
.end method

.method private static logInInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 11
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 398
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 399
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, p3

    .line 400
    .local v8, "internalCallback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v10

    .line 401
    .local v10, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-nez v10, :cond_0

    .line 431
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {v10, p0}, Lcom/avos/avoscloud/AVUser;->setUsername(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$2;

    invoke-direct {v5, v10, v8}, Lcom/avos/avoscloud/AVUser$2;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logInPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "login"

    return-object v0
.end method

.method public static logOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 780
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 781
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PaasClient;->setDefaultACL(Lcom/avos/avoscloud/AVACL;)V

    .line 782
    return-void
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 434
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static loginByMobilePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 442
    .local v0, "list":[Lcom/avos/avoscloud/AVUser;
    new-instance v1, Lcom/avos/avoscloud/AVUser$3;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$3;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, v1, p2}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 458
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 461
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 2
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const/4 v0, 0x0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0, p2, v1}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 467
    return-void
.end method

.method public static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 472
    return-void
.end method

.method private static loginByMobilePhoneNumberInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 11
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 476
    invoke-static {v6, p1, v6, p0, v6}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 477
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, p3

    .line 478
    .local v8, "internalCallback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v10

    .line 479
    .local v10, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-nez v10, :cond_0

    .line 508
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-virtual {v10, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$4;

    invoke-direct {v5, v10, v8}, Lcom/avos/avoscloud/AVUser$4;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 521
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 537
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 538
    .local v0, "list":[Lcom/avos/avoscloud/AVUser;
    new-instance v1, Lcom/avos/avoscloud/AVUser$5;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$5;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, v1, p2}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 554
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 557
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 2
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const/4 v0, 0x0

    const-class v1, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0, p2, v1}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 572
    return-void
.end method

.method public static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 1
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V

    .line 587
    return-void
.end method

.method private static loginBySMSCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/LogInCallback;Ljava/lang/Class;)V
    .locals 11
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 591
    const-string v0, ""

    invoke-static {v6, v6, v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 592
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, p3

    .line 593
    .local v8, "internalCallback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    invoke-static {p4, p3}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v10

    .line 594
    .local v10, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-nez v10, :cond_0

    .line 623
    :goto_0
    return-void

    .line 597
    :cond_0
    invoke-virtual {v10, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 598
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {}, Lcom/avos/avoscloud/AVUser;->logInPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$6;

    invoke-direct {v5, v10, v8}, Lcom/avos/avoscloud/AVUser$6;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loginWithAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .param p0, "userInfo"    # Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1901
    .local p1, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V

    .line 1902
    return-void
.end method

.method public static loginWithAuthData(Ljava/lang/Class;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 9
    .param p1, "userInfo"    # Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1914
    if-nez p1, :cond_1

    .line 1915
    if-eqz p2, :cond_0

    .line 1916
    const/4 v0, -0x1

    const-string v1, "NULL userInfo."

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1950
    :cond_0
    :goto_0
    return-void

    .line 1922
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1923
    .local v8, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "authData"

    invoke-static {p1}, Lcom/avos/avoscloud/AVUser;->authData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1925
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "users"

    new-instance v5, Lcom/avos/avoscloud/AVUser$30;

    invoke-direct {v5, p0, p2, p1}, Lcom/avos/avoscloud/AVUser$30;-><init>(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    move v4, v3

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private markAnonymousUserTransfer()V
    .locals 1

    .prologue
    .line 2112
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->needTransferFromAnonymousUser:Z

    .line 2115
    :cond_0
    return-void
.end method

.method protected static newAVUser()Lcom/avos/avoscloud/AVUser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 772
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "cb":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    const/4 v2, 0x0

    .line 759
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVUser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    return-object v1

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 763
    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    move-object v1, v2

    .line 768
    goto :goto_0

    .line 765
    :cond_0
    new-instance v2, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v3, "Create user instance failed."

    invoke-direct {v2, v3, v0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private processFollowerAndFollowee(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1617
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1618
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1629
    :goto_0
    return-object v2

    .line 1621
    :cond_0
    new-instance v3, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v3}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 1622
    .local v3, "resp":Lcom/avos/avoscloud/AVFollowResponse;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    check-cast v3, Lcom/avos/avoscloud/AVFollowResponse;

    .line 1623
    .restart local v3    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1624
    .local v1, "followers":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1625
    .local v0, "followees":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;"
    iget-object v4, v3, Lcom/avos/avoscloud/AVFollowResponse;->followers:[Ljava/util/Map;

    const-string v5, "follower"

    invoke-direct {p0, v4, v1, v5}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 1626
    iget-object v4, v3, Lcom/avos/avoscloud/AVFollowResponse;->followees:[Ljava/util/Map;

    const-string v5, "followee"

    invoke-direct {p0, v4, v0, v5}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 1627
    const-string v4, "follower"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    const-string v4, "followee"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1606
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1607
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;"
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1613
    :goto_0
    return-object v0

    .line 1610
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/AVFollowResponse;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVFollowResponse;-><init>()V

    .line 1611
    .local v1, "resp":Lcom/avos/avoscloud/AVFollowResponse;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    check-cast v1, Lcom/avos/avoscloud/AVFollowResponse;

    .line 1612
    .restart local v1    # "resp":Lcom/avos/avoscloud/AVFollowResponse;
    iget-object v2, v1, Lcom/avos/avoscloud/AVFollowResponse;->results:[Ljava/util/Map;

    invoke-direct {p0, v2, v0, p2}, Lcom/avos/avoscloud/AVUser;->processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processResultList([Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/util/Map;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1634
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVUser;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/Map;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 1635
    .local v2, "item":Ljava/util/Map;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1636
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVUser;

    .line 1637
    .local v4, "user":Lcom/avos/avoscloud/AVUser;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    .end local v4    # "user":Lcom/avos/avoscloud/AVUser;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1640
    .end local v2    # "item":Ljava/util/Map;
    :cond_1
    return-void
.end method

.method public static requestEmailVerfiyInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestEmailVerifyCallback;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestEmailVerifyCallback;

    .prologue
    .line 1080
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestEmailVerfiyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    .line 1081
    return-void
.end method

.method private static requestEmailVerfiyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V
    .locals 10
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestEmailVerifyCallback;

    .prologue
    const/4 v6, 0x0

    .line 1085
    move-object v8, p2

    .line 1086
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestEmailVerifyCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1087
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7d

    const-string v3, "Invalid Email"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestEmailVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1109
    :goto_0
    return-void

    .line 1090
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1091
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "email"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1093
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestEmailVerify"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$16;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$16;-><init>(Lcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestEmailVerify(Ljava/lang/String;)V
    .locals 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 1064
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestEmailVerfiyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestEmailVerifyCallback;)V

    .line 1065
    return-void
.end method

.method public static requestLoginSmsCode(Ljava/lang/String;)V
    .locals 4
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1202
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 1203
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$19;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$19;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, v3, v1}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1209
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 1210
    aget-object v1, v0, v2

    throw v1

    .line 1212
    :cond_0
    return-void
.end method

.method public static requestLoginSmsCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    .line 1216
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestLoginSmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1217
    return-void
.end method

.method private static requestLoginSmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 10
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    const/4 v6, 0x0

    .line 1221
    move-object v8, p2

    .line 1223
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestMobileCodeCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1225
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v3, "Invalid Phone Number"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1249
    :goto_0
    return-void

    .line 1230
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1231
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "mobilePhoneNumber"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1233
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestLoginSmsCode"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$20;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$20;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestMobilePhoneVerify(Ljava/lang/String;)V
    .locals 4
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1122
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 1123
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$17;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$17;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, v3, v1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1129
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 1130
    aget-object v1, v0, v2

    throw v1

    .line 1132
    :cond_0
    return-void
.end method

.method public static requestMobilePhoneVerifyInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1145
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1146
    return-void
.end method

.method public static requestMobilePhoneVerifyInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    .line 1158
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 1159
    return-void
.end method

.method private static requestMobilePhoneVerifyInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 10
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    const/4 v6, 0x0

    .line 1163
    move-object v8, p2

    .line 1165
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestMobileCodeCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1167
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v3, "Invalid Phone Number"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1191
    :goto_0
    return-void

    .line 1172
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1173
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "mobilePhoneNumber"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1175
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestMobilePhoneVerify"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$18;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$18;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 822
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V

    .line 823
    return-void
.end method

.method public static requestPasswordResetBySmsCode(Ljava/lang/String;)V
    .locals 4
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 932
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 933
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$12;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$12;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, v3, v1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 940
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 941
    aget-object v1, v0, v2

    throw v1

    .line 943
    :cond_0
    return-void
.end method

.method public static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    .line 952
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V

    .line 953
    return-void
.end method

.method protected static requestPasswordResetBySmsCodeInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestMobileCodeCallback;)V
    .locals 10
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestMobileCodeCallback;

    .prologue
    const/4 v6, 0x0

    .line 957
    move-object v8, p2

    .line 959
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestMobileCodeCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 961
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x7f

    const-string v3, "Invalid Phone Number"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/RequestMobileCodeCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 985
    :goto_0
    return-void

    .line 966
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 967
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "mobilePhoneNumber"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 969
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestPasswordResetBySmsCode"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$13;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$13;-><init>(Lcom/avos/avoscloud/RequestMobileCodeCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/avos/avoscloud/RequestPasswordResetCallback;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/RequestPasswordResetCallback;

    .prologue
    .line 841
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V

    .line 842
    return-void
.end method

.method private static requestPasswordResetInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/RequestPasswordResetCallback;)V
    .locals 10
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/RequestPasswordResetCallback;

    .prologue
    const/4 v6, 0x0

    .line 846
    move-object v8, p2

    .line 847
    .local v8, "internalCallback":Lcom/avos/avoscloud/RequestPasswordResetCallback;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 848
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "email"

    invoke-interface {v9, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "object":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "requestPasswordReset"

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$9;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$9;-><init>(Lcom/avos/avoscloud/RequestPasswordResetCallback;)V

    move v3, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public static resetPasswordBySmsCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "smsCode"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 998
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 999
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$14;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$14;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {p0, p1, v3, v1}, Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V

    .line 1005
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 1006
    aget-object v1, v0, v2

    throw v1

    .line 1008
    :cond_0
    return-void
.end method

.method public static resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 1
    .param p0, "smsCode"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/UpdatePasswordCallback;

    .prologue
    .line 1019
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V

    .line 1020
    return-void
.end method

.method protected static resetPasswordBySmsCodeInBackground(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 10
    .param p0, "smsCode"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "callback"    # Lcom/avos/avoscloud/UpdatePasswordCallback;

    .prologue
    const/4 v4, 0x0

    .line 1024
    move-object v8, p3

    .line 1026
    .local v8, "internalCallback":Lcom/avos/avoscloud/UpdatePasswordCallback;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x7f

    const-string v3, "Invalid Verify Code"

    invoke-direct {v0, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1050
    :goto_0
    return-void

    .line 1032
    :cond_1
    const-string v0, "resetPasswordBySmsCode/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    .local v1, "endpointer":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1035
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "password"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {v9}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVUser$15;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$15;-><init>(Lcom/avos/avoscloud/UpdatePasswordCallback;)V

    move v3, p2

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setEnableAutomatic(Z)V
    .locals 0
    .param p0, "enableAutomatic"    # Z

    .prologue
    .line 73
    sput-boolean p0, Lcom/avos/avoscloud/AVUser;->enableAutomatic:Z

    .line 74
    return-void
.end method

.method private signUp(ZLcom/avos/avoscloud/SignUpCallback;)V
    .locals 2
    .param p1, "sync"    # Z
    .param p2, "callback"    # Lcom/avos/avoscloud/SignUpCallback;

    .prologue
    .line 1380
    if-eqz p1, :cond_1

    .line 1382
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->save()V

    .line 1383
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/SignUpCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Lcom/avos/avoscloud/AVException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Lcom/avos/avoscloud/AVException;
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SignUpCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1389
    .end local v0    # "e":Lcom/avos/avoscloud/AVException;
    :cond_1
    new-instance v1, Lcom/avos/avoscloud/AVUser$23;

    invoke-direct {v1, p0, p2}, Lcom/avos/avoscloud/AVUser$23;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/SignUpCallback;)V

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVUser;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0
.end method

.method public static signUpOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 639
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    return-object v0
.end method

.method public static signUpOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVUser;
    .locals 4
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 657
    new-array v0, v3, [Lcom/avos/avoscloud/AVUser;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 658
    .local v0, "list":[Lcom/avos/avoscloud/AVUser;
    new-instance v1, Lcom/avos/avoscloud/AVUser$7;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$7;-><init>([Lcom/avos/avoscloud/AVUser;)V

    invoke-static {p0, p1, v3, p2, v1}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    .line 675
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    throw v1

    .line 678
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<",
            "Lcom/avos/avoscloud/AVUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p2, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<Lcom/avos/avoscloud/AVUser;>;"
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-static {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    .line 694
    return-void
.end method

.method public static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 1
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/avos/avoscloud/AVUser;->signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V

    .line 710
    return-void
.end method

.method private static signUpOrLoginByMobilePhoneInBackground(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)V
    .locals 11
    .param p0, "mobilePhoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/avos/avoscloud/LogInCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "callback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    const/4 v6, 0x0

    .line 715
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    if-eqz p4, :cond_1

    .line 717
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/4 v1, -0x1

    const-string v2, "SMS Code can\'t be empty"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, v6, v0}, Lcom/avos/avoscloud/LogInCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    const-string v0, "SMS Code can\'t be empty"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_2
    const-string v0, ""

    invoke-static {v6, v6, v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->createUserMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 724
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, p4

    .line 725
    .local v8, "internalCallback":Lcom/avos/avoscloud/LogInCallback;, "Lcom/avos/avoscloud/LogInCallback<TT;>;"
    invoke-static {p3, p4}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v10

    .line 726
    .local v10, "user":Lcom/avos/avoscloud/AVUser;, "TT;"
    if-eqz v10, :cond_0

    .line 729
    invoke-virtual {v10, p0}, Lcom/avos/avoscloud/AVUser;->setMobilePhoneNumber(Ljava/lang/String;)V

    .line 730
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const-string v1, "usersByMobilePhone"

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$8;

    invoke-direct {v5, v10, v8}, Lcom/avos/avoscloud/AVUser$8;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/LogInCallback;)V

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private signUpPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1376
    const-string v0, "users"

    return-object v0
.end method

.method private updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V
    .locals 9
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/avos/avoscloud/UpdatePasswordCallback;
    .param p4, "sync"    # Z

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/UpdatePasswordCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 921
    :goto_0
    return-void

    .line 903
    :cond_1
    const-string v0, "users/%s/updatePassword"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "relativePath":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 905
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "old_password"

    invoke-interface {v8, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v0, "new_password"

    invoke-interface {v8, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    invoke-static {v8}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, "paramsString":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->headerMap()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/AVUser$11;

    invoke-direct {v5, p0, p3}, Lcom/avos/avoscloud/AVUser$11;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/UpdatePasswordCallback;)V

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v7

    move v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static userArchiveExist()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->currentUserArchivePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static userClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static userFromQQWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "weiboToken"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 1503
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 1504
    .local v0, "user":Lcom/avos/avoscloud/AVUser;
    iput-object p0, v0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 1505
    iput-object p1, v0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 1506
    return-object v0
.end method

.method static userFromSinaWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVUser;
    .locals 1
    .param p0, "weiboToken"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 1496
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 1497
    .local v0, "user":Lcom/avos/avoscloud/AVUser;
    iput-object p0, v0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 1498
    iput-object p1, v0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 1499
    return-object v0
.end method

.method public static verifyMobilePhone(Ljava/lang/String;)V
    .locals 4
    .param p0, "verifyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1259
    new-array v0, v2, [Lcom/avos/avoscloud/AVException;

    .line 1260
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$21;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVUser$21;-><init>([Lcom/avos/avoscloud/AVException;)V

    invoke-static {v2, p0, v1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1266
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 1267
    const-string v1, "Exception during mobile phone verfify"

    aget-object v2, v0, v3

    invoke-static {v1, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1268
    aget-object v1, v0, v3

    throw v1

    .line 1270
    :cond_0
    return-void
.end method

.method public static verifyMobilePhoneInBackgroud(Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1
    .param p0, "verifyCode"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1281
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1282
    return-void
.end method

.method public static verifyMobilePhoneInBackground(Ljava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 1
    .param p0, "verifyCode"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    .prologue
    .line 1292
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/avos/avoscloud/AVUser;->verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    .line 1293
    return-void
.end method

.method private static verifyMobilePhoneInBackground(ZLjava/lang/String;Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V
    .locals 9
    .param p0, "sync"    # Z
    .param p1, "verifyCode"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1297
    move-object v8, p2

    .line 1299
    .local v8, "internalCallback":Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->checkMobileVerifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1300
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x7f

    const-string v3, "Invalid Verify Code"

    invoke-direct {v0, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1322
    :goto_0
    return-void

    .line 1305
    :cond_1
    const-string v0, "verifyMobilePhone/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, "endpointer":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/avos/avoscloud/AVUser$22;

    invoke-direct {v5, v8}, Lcom/avos/avoscloud/AVUser$22;-><init>(Lcom/avos/avoscloud/AVMobilePhoneVerifyCallback;)V

    move v3, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public followInBackground(Ljava/lang/String;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 1
    .param p1, "userObjectId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/FollowCallback;

    .prologue
    .line 1531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVUser;->followInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FollowCallback;)V

    .line 1532
    return-void
.end method

.method public followInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 5
    .param p1, "userObjectId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/avos/avoscloud/FollowCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/FollowCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1536
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p3}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1539
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, "endPoint":Ljava/lang/String;
    const-string v1, ""

    .line 1541
    .local v1, "paramsString":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1542
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1544
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/avos/avoscloud/AVUser$25;

    invoke-direct {v4, p0, p3}, Lcom/avos/avoscloud/AVUser$25;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public followeeQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1717
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1720
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->followeeQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public followerQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVQuery",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1676
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->sessionMissingException()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1679
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVUser;->followerQuery(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVQuery;

    move-result-object v0

    return-object v0
.end method

.method public friendshipQuery()Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1

    .prologue
    .line 1729
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/avos/avoscloud/AVUser;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->friendshipQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVFriendshipQuery;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVUser;->subClazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method public friendshipQuery(Ljava/lang/Class;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avos/avoscloud/AVUser;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery;"
        }
    .end annotation

    .prologue
    .line 1740
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v1, p0, Lcom/avos/avoscloud/AVUser;->objectId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->facebookToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowersAndFolloweesInBackground(Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/avos/avoscloud/FollowersAndFolloweesCallback;

    .prologue
    const/4 v2, 0x0

    .line 1822
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    :goto_0
    return-void

    .line 1825
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowersAndFollowees(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1826
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$29;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVUser$29;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowersAndFolloweesCallback;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public getFollowersInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/avos/avoscloud/FindCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1769
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1792
    :goto_0
    return-void

    .line 1772
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowersEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1773
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$27;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVUser$27;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method public getMobilePhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMyFolloweesInBackground(Lcom/avos/avoscloud/FindCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/avos/avoscloud/FindCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1796
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1819
    :goto_0
    return-void

    .line 1799
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFolloweesEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1800
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVUser$28;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/AVUser$28;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getQQWeiboToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getQqWeiboToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSinaWeiboToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->twitterToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method protected headerMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1489
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    sget-object v1, Lcom/avos/avoscloud/PaasClient;->sessionTokenField:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    :cond_0
    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobilePhoneVerified()Z
    .locals 1

    .prologue
    .line 1368
    const-string v0, "mobilePhoneVerified"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    return v0
.end method

.method protected onDataSynchronized()V
    .locals 1

    .prologue
    .line 1480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 1481
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 1484
    :cond_0
    return-void
.end method

.method protected onSaveSuccess()V
    .locals 1

    .prologue
    .line 1472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUser;->processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V

    .line 1473
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUser;->changeCurrentUser(Lcom/avos/avoscloud/AVUser;Z)V

    .line 1476
    :cond_0
    return-void
.end method

.method protected processAuthData(Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;)V
    .locals 6
    .param p1, "auth"    # Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2010
    const-string v3, "authData"

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/AVUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2012
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v3, p0, Lcom/avos/avoscloud/AVUser;->needTransferFromAnonymousUser:Z

    if-eqz v3, :cond_0

    .line 2013
    if-eqz v0, :cond_3

    const-string v3, "anonymous"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2014
    const-string v3, "anonymous"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    :goto_0
    iput-boolean v4, p0, Lcom/avos/avoscloud/AVUser;->needTransferFromAnonymousUser:Z

    .line 2020
    :cond_0
    if-eqz v0, :cond_1

    .line 2021
    const-string v3, "weibo"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2022
    const-string v3, "weibo"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2024
    .local v2, "sinaAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "access_token"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 2028
    .end local v2    # "sinaAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    const-string v3, "qq"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2029
    const-string v3, "qq"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2031
    .local v1, "qqAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "access_token"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 2035
    .end local v1    # "qqAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    const-string v3, "anonymous"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2036
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    .line 2041
    :cond_1
    :goto_3
    if-eqz p1, :cond_2

    .line 2042
    iget-object v3, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    const-string v4, "weibo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2043
    iget-object v3, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    iput-object v3, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 2051
    :cond_2
    :goto_4
    return-void

    .line 2016
    :cond_3
    iput-boolean v4, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    goto :goto_0

    .line 2026
    :cond_4
    iput-object v5, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    goto :goto_1

    .line 2033
    :cond_5
    iput-object v5, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    goto :goto_2

    .line 2038
    :cond_6
    iput-boolean v4, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    goto :goto_3

    .line 2046
    :cond_7
    iget-object v3, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    const-string v4, "qq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2047
    iget-object v3, p1, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    iput-object v3, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    goto :goto_4
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 794
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 795
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 804
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->remove(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method protected setAnonymous(Z)V
    .locals 0
    .param p1, "anonymous"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->anonymous:Z

    .line 256
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->email:Ljava/lang/String;

    .line 1333
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1334
    return-void
.end method

.method setFacebookToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookToken"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->facebookToken:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMobilePhoneNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "mobilePhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->mobilePhoneNumber:Ljava/lang/String;

    .line 1364
    const-string v0, "mobilePhoneNumber"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1365
    return-void
.end method

.method setMobilePhoneVerified(Z)V
    .locals 2
    .param p1, "mobilePhoneVerified"    # Z

    .prologue
    .line 1372
    const-string v0, "mobileVerified"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1373
    return-void
.end method

.method setNew(Z)V
    .locals 0
    .param p1, "isNew"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    .line 78
    return-void
.end method

.method setNewFlag(Z)V
    .locals 0
    .param p1, "isNew"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUser;->isNew:Z

    .line 201
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->password:Ljava/lang/String;

    .line 1343
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1344
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    .line 1345
    return-void
.end method

.method setQQWeiboToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 1464
    return-void
.end method

.method setQqWeiboToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "qqWeiboToken"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->qqWeiboToken:Ljava/lang/String;

    .line 64
    return-void
.end method

.method setSessionToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sessionToken:Ljava/lang/String;

    .line 231
    return-void
.end method

.method setSinaWeiboToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->sinaWeiboToken:Ljava/lang/String;

    .line 1456
    return-void
.end method

.method setTwitterToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterToken"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->twitterToken:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser;->username:Ljava/lang/String;

    .line 1354
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1355
    invoke-direct {p0}, Lcom/avos/avoscloud/AVUser;->markAnonymousUserTransfer()V

    .line 1356
    return-void
.end method

.method public signUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    .line 1415
    const/4 v0, 0x1

    new-instance v1, Lcom/avos/avoscloud/AVUser$24;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/AVUser$24;-><init>(Lcom/avos/avoscloud/AVUser;)V

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/AVUser;->signUp(ZLcom/avos/avoscloud/SignUpCallback;)V

    .line 1429
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 1432
    :cond_0
    return-void
.end method

.method public signUpInBackground(Lcom/avos/avoscloud/SignUpCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/avos/avoscloud/SignUpCallback;

    .prologue
    .line 1451
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVUser;->signUp(ZLcom/avos/avoscloud/SignUpCallback;)V

    .line 1452
    return-void
.end method

.method public unfollowInBackground(Ljava/lang/String;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 6
    .param p1, "userObjectId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/avos/avoscloud/FollowCallback;

    .prologue
    const/4 v4, 0x0

    .line 1569
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVUser;->checkUserAuthentication(Lcom/avos/avoscloud/AVCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1592
    :goto_0
    return-void

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getFollowEndPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1573
    .local v1, "endPoint":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/AVUser$26;

    invoke-direct {v3, p0, p2}, Lcom/avos/avoscloud/AVUser$26;-><init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 874
    new-array v0, v3, [Lcom/avos/avoscloud/AVException;

    .line 875
    .local v0, "errors":[Lcom/avos/avoscloud/AVException;
    new-instance v1, Lcom/avos/avoscloud/AVUser$10;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/AVUser$10;-><init>(Lcom/avos/avoscloud/AVUser;[Lcom/avos/avoscloud/AVException;)V

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V

    .line 883
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 884
    aget-object v1, v0, v2

    throw v1

    .line 886
    :cond_0
    return-void
.end method

.method public updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;)V
    .locals 1
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/avos/avoscloud/UpdatePasswordCallback;

    .prologue
    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/AVUser;->updatePasswordInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/UpdatePasswordCallback;Z)V

    .line 896
    return-void
.end method
