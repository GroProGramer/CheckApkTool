.class public Lcom/avos/avoscloud/AVNetworkHelper;
.super Ljava/lang/Object;
.source "AVNetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;,
        Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;
    }
.end annotation


# static fields
.field static final AVOS_SERVER_HOST_ZONE:Ljava/lang/String; = "avoscloud_server_host_zone"

.field public static final EXPIRE_TIME:Ljava/lang/String; = ".expireTime"

.field static final TEN_MIN_IN_NANO:J = 0x8bb2c97000L

.field static final TWENTY_MIN_IN_MILLS:J = 0x124f80L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVNetworkHelper;->getIPAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVNetworkHelper;->bindDNS(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-void
.end method

.method public static amendDNS(Ljava/lang/String;Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;

    .prologue
    .line 25
    new-instance v0, Lcom/avos/avoscloud/AVNetworkHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVNetworkHelper$1;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;)V

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVNetworkHelper;->getDNSResource(Ljava/lang/String;Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;)V

    .line 45
    return-void
.end method

.method private static bindDNS(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 23
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "addressArray"    # [Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    move-object/from16 v11, p1

    .line 50
    .local v11, "addresses":[Ljava/net/InetAddress;
    const-class v19, Ljava/net/InetAddress;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-class v22, [B

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-class v22, Ljava/lang/String;

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 53
    .local v16, "constructor":Ljava/lang/reflect/Constructor;
    const-class v19, Ljava/net/InetAddress;

    const-string v20, "addressCache"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 55
    .local v18, "field":Ljava/lang/reflect/Field;
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    const-string v19, "java.net.AddressCache"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 58
    .local v14, "cacheClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v19, "cache"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 59
    .local v15, "cacheField":Ljava/lang/reflect/Field;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 63
    .local v10, "addressCacheObject":Ljava/lang/Object;
    invoke-virtual {v15, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 65
    .local v2, "BasicLruCacheObject":Ljava/lang/Object;
    const-string v19, "libcore.util.BasicLruCache"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 67
    .local v12, "basicLruCacheClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v19, "java.net.AddressCache$AddressCacheEntry"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 68
    .local v4, "addressCacheEntryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v19, "expiryNanos"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 70
    .local v6, "addressCacheEntryExpiredField":Ljava/lang/reflect/Field;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/Object;

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 74
    .local v5, "addressCacheEntryConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 77
    const-string v19, "put"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Ljava/lang/Object;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-class v22, Ljava/lang/Object;

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 80
    .local v13, "basicLruCachePutMethod":Ljava/lang/reflect/Method;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 83
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, "addressCacheEntry":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    const-wide v21, 0x8bb2c97000L

    add-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :try_start_0
    const-string v19, "java.net.AddressCache$AddressCacheKey"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 90
    .local v8, "addressCacheKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 92
    .local v9, "addressCacheKeyConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 93
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p0, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 95
    .local v7, "addressCacheKey":Ljava/lang/Object;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v7, v19, v20

    const/16 v20, 0x1

    aput-object v3, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v7    # "addressCacheKey":Ljava/lang/Object;
    .end local v8    # "addressCacheKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "addressCacheKeyConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v17

    .line 97
    .local v17, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 98
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 102
    :cond_0
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p0, v19, v20

    const/16 v20, 0x1

    aput-object v3, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getDNSResource(Ljava/lang/String;Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;)V
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;

    .prologue
    const/4 v7, 0x0

    .line 107
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    const-string v4, "avoscloud_server_host_zone"

    invoke-virtual {v3, v4, p0, v7}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "response":Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v3

    const-string v4, "avoscloud_server_host_zone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v3, v4, v5, v6}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "expiredAt":Ljava/lang/String;
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 114
    invoke-interface {p1, v2, v7}, Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;->done(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 139
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 117
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v3, "dn"

    invoke-virtual {v1, v3, p0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getDirectlyClientForUse()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v3

    const-string v4, "http://119.29.29.29/d"

    new-instance v5, Lcom/avos/avoscloud/AVNetworkHelper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/avos/avoscloud/AVNetworkHelper$2;-><init>(Landroid/os/Looper;Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_0
.end method

.method private static getIPAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    const-string v10, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, "ips":[Ljava/lang/String;
    array-length v10, v9

    new-array v2, v10, [Ljava/net/InetAddress;

    .line 146
    .local v2, "addresses":[Ljava/net/InetAddress;
    const-class v10, Ljava/net/InetAddress;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, [B

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 148
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 149
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v10, v9

    if-ge v5, v10, :cond_2

    .line 150
    aget-object v6, v9, v5

    .line 151
    .local v6, "ip":Ljava/lang/String;
    const-string v10, "\\."

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "ipSegment":[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 153
    const/4 v10, 0x4

    new-array v7, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    const/4 v10, 0x3

    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 156
    .local v7, "ipInBytes":[B
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object p0, v10, v11

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    aput-object v10, v2, v5

    .line 149
    .end local v7    # "ipInBytes":[B
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 159
    const-string v10, "wrong IP Address"

    invoke-static {v10}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .end local v2    # "addresses":[Ljava/net/InetAddress;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "i":I
    .end local v6    # "ip":Ljava/lang/String;
    .end local v8    # "ipSegment":[Ljava/lang/String;
    .end local v9    # "ips":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    .line 164
    .restart local v2    # "addresses":[Ljava/net/InetAddress;
    .restart local v3    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v5    # "i":I
    .restart local v9    # "ips":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v10

    const-string v11, "avoscloud_server_host_zone"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v10, v11, v0, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v10

    const-string v11, "avoscloud_server_host_zone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".expireTime"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/32 v15, 0x124f80

    add-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
