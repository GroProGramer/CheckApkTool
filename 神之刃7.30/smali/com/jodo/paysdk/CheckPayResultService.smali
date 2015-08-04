.class public Lcom/jodo/paysdk/CheckPayResultService;
.super Landroid/app/IntentService;


# static fields
.field private static final KEY_CPORDERID:Ljava/lang/String; = "cporderid"

.field private static final KEY_EXT:Ljava/lang/String; = "ext"

.field private static final KEY_GW_ORDER_ID:Ljava/lang/String; = "gw_order_id"

.field private static final KEY_GW_RESULT_TOKEN:Ljava/lang/String; = "gw_result_token"

.field private static final KEY_ITEMID:Ljava/lang/String; = "itemid"

.field private static final KEY_PRICE:Ljava/lang/String; = "price"

.field private static final KEY_PRICEFIXED:Ljava/lang/String; = "priceFixed"

.field private static final KEY_PRODUCTNAME:Ljava/lang/String; = "productName"

.field private static final KEY_ROLELEVEL:Ljava/lang/String; = "rolelevel"

.field private static final KEY_ROLENAME:Ljava/lang/String; = "rolename"

.field private static final KEY_SERVERID:Ljava/lang/String; = "serverid"

.field private static final KEY_SERVERNAME:Ljava/lang/String; = "servername"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CheckPayResultService"

    sput-object v0, Lcom/jodo/paysdk/CheckPayResultService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/CheckPayResultService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CheckPayResultService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/CheckPayResultService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/CheckPayResultService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    sput-object p0, Lcom/jodo/paysdk/CheckPayResultService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/jodo/paysdk/b;

    invoke-direct {v0}, Lcom/jodo/paysdk/b;-><init>()V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/jodo/paysdk/c;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/jodo/paysdk/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ai;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 25

    sget-object v3, Lcom/jodo/paysdk/f/f;->a:Lcom/jodo/paysdk/f/f;

    invoke-virtual {v3}, Lcom/jodo/paysdk/f/f;->a()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "push_uid"

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "gamePkg"

    invoke-direct {v7, v8, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "gameVc"

    move-object/from16 v0, v20

    invoke-direct {v7, v8, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "cporderid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "serverid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "servername"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "rolename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "rolelevel"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v7, "price"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v7, "priceFixed"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const-string v7, "ext"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v7, "productName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v7, "itemid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v7, "token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v7, "gw_order_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v21, "gw_result_token"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "cpid"

    sget-object v24, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual/range {v24 .. v24}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "gameid"

    sget-object v24, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual/range {v24 .. v24}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "channel"

    sget-object v24, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual/range {v24 .. v24}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "cporderid"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "uid"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "serverid"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "servername"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "rolename"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "rolelevel"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "price"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "priceFixed"

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "ext"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "productName"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "itemid"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "token"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "exnet"

    sget-object v24, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual/range {v24 .. v24}, Lcom/jodo/paysdk/config/a;->d()Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_0

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "gw_product_id"

    const-string v24, ""

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "gw_order_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "gw_result_token"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    const-string v23, "json"

    const-string v24, "true"

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x16

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v22, v23

    const/4 v5, 0x1

    aput-object v6, v22, v5

    const/4 v5, 0x2

    aput-object v20, v22, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v6}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v6}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v6}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/4 v5, 0x6

    aput-object v8, v22, v5

    const/4 v5, 0x7

    aput-object v9, v22, v5

    const/16 v5, 0x8

    aput-object v10, v22, v5

    const/16 v5, 0x9

    aput-object v11, v22, v5

    const/16 v5, 0xa

    aput-object v12, v22, v5

    const/16 v5, 0xb

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/16 v5, 0xc

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/16 v5, 0xd

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/16 v5, 0xe

    aput-object v16, v22, v5

    const/16 v5, 0xf

    aput-object v17, v22, v5

    const/16 v5, 0x10

    aput-object v18, v22, v5

    const/16 v5, 0x11

    sget-object v6, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v6}, Lcom/jodo/paysdk/config/a;->d()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    const/16 v5, 0x12

    const-string v6, ""

    aput-object v6, v22, v5

    const/16 v5, 0x13

    aput-object v7, v22, v5

    const/16 v5, 0x14

    aput-object v21, v22, v5

    const/16 v5, 0x15

    const-string v6, "true"

    aput-object v6, v22, v5

    invoke-static/range {v22 .. v22}, Lcom/jodo/paysdk/d/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "psw"

    move-object/from16 v0, v20

    invoke-direct {v6, v0, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v5, "http://mpay.jodoplay.com/payapi/corp/check_pay_result.do"

    move-object/from16 v0, p0

    invoke-static {v0, v5, v4, v3}, Lcom/jodo/paysdk/http/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/jodo/paysdk/http/a/f;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jodo/paysdk/http/a/f;->b(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jodo/paysdk/http/a/f;->c(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jodo/paysdk/http/a/f;->a()Ljava/lang/String;

    move-result-object v5

    const-string v3, "checkPayResultResult"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/jodo/paysdk/a;

    move-object/from16 v4, p0

    move-object/from16 v6, p0

    invoke-direct/range {v3 .. v19}, Lcom/jodo/paysdk/a;-><init>(Lcom/jodo/paysdk/CheckPayResultService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->c()V

    goto :goto_0
.end method
