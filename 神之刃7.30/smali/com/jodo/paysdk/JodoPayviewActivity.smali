.class public Lcom/jodo/paysdk/JodoPayviewActivity;
.super Landroid/app/Activity;


# static fields
.field private static final KEY_CPORDERID:Ljava/lang/String; = "cporderid"

.field private static final KEY_EXT:Ljava/lang/String; = "ext"

.field private static final KEY_PAY_URL:Ljava/lang/String; = "payUrl"

.field private static final KEY_PRICE:Ljava/lang/String; = "price"

.field private static final KEY_PRICEFIXED:Ljava/lang/String; = "priceFixed"

.field private static final KEY_PRODUCTNAME:Ljava/lang/String; = "productName"

.field private static final KEY_ROLELEVEL:Ljava/lang/String; = "rolelevel"

.field private static final KEY_ROLENAME:Ljava/lang/String; = "rolename"

.field private static final KEY_SERVERID:Ljava/lang/String; = "serverid"

.field private static final KEY_SERVERNAME:Ljava/lang/String; = "servername"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final KEY_UID:Ljava/lang/String; = "uid"


# instance fields
.field private cporderid:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private jodoplay_loading:Landroid/view/ViewGroup;

.field private payUrl:Ljava/lang/String;

.field private price:I

.field private priceFixed:Z

.field private productName:Ljava/lang/String;

.field private rolelevel:I

.field private rolename:Ljava/lang/String;

.field private serverid:Ljava/lang/String;

.field private servername:Ljava/lang/String;

.field private tips:Landroid/widget/TextView;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->tips:Landroid/widget/TextView;

    return-void
.end method

.method private static getIntentList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Payview"

    const-string v1, "resumeCnt"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jodo/paysdk/JodoPayviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "payUrl"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cporderid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serverid"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "servername"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rolename"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rolelevel"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "price"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "priceFixed"

    invoke-virtual {v1, v2, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "ext"

    invoke-virtual {v1, v2, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "productName"

    invoke-virtual {v1, v2, p11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "token"

    invoke-virtual {v1, v2, p12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "anim"

    const-string v2, "jodoplay_payview_in"

    invoke-static {p0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method private static startUrlByDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntentList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v3, "com.android.browser"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    const-string v3, "com.android.chrome"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "layout"

    const-string v1, "jodoplay_payviewloading"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoPayviewActivity;->setContentView(I)V

    const-string v0, "id"

    const-string v1, "jodoplay_loading"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoPayviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->jodoplay_loading:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->jodoplay_loading:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string v0, "id"

    const-string v1, "jodoplay_payviewloading_tips"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoPayviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->tips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "payUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->payUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cporderid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->cporderid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->uid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "serverid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->serverid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "servername"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->servername:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rolename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->rolename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rolelevel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->rolelevel:I

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "price"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->price:I

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "priceFixed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->priceFixed:Z

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ext"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->ext:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "productName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->productName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoPayviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoPayviewActivity;->token:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 18

    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    const-string v2, "Payview"

    const-string v3, "resumeCnt"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resumeCnt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->payUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/jodo/paysdk/JodoPayviewActivity;->startUrlByDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const-string v2, "Payview"

    const-string v3, "resumeCnt"

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->jodoplay_loading:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lcom/jodo/paysdk/f/d;->f()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/f/d;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->cporderid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->serverid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->servername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->rolename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->rolelevel:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->price:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->priceFixed:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->ext:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->productName:Ljava/lang/String;

    const-string v13, ""

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jodo/paysdk/JodoPayviewActivity;->token:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v16}, Lcom/jodo/paysdk/CheckPayResultService;->call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v2, Lcom/jodo/paysdk/ae;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/jodo/paysdk/ae;-><init>(Lcom/jodo/paysdk/JodoPayviewActivity;Landroid/app/Activity;)V

    const-wide/16 v3, 0x7d0

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
