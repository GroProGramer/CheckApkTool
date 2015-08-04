.class Lcom/lk/sdk/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/Utils;->check(Landroid/content/Context;ILjava/lang/String;Lcom/lk/sdk/Utils$CheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$action:I

.field private final synthetic val$checkListener:Lcom/lk/sdk/Utils$CheckListener;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$ext:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;Lcom/lk/sdk/Utils$CheckListener;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/lk/sdk/Utils$2;->val$action:I

    iput-object p2, p0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lk/sdk/Utils$2;->val$ext:Ljava/lang/String;

    iput-object p4, p0, Lcom/lk/sdk/Utils$2;->val$checkListener:Lcom/lk/sdk/Utils$CheckListener;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 512
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 513
    .local v11, "msg":Lorg/json/JSONObject;
    const-string v17, "action"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lk/sdk/Utils$2;->val$action:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lk/sdk/Utils$2;->val$action:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 597
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lk/sdk/Utils$2;->val$action:I

    move/from16 v17, v0

    const v18, -0x45413f22

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 598
    const-string v17, "utils"

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    # invokes: Lcom/lk/sdk/Utils;->sendMessage2Obj(Ljava/lang/String;)V
    invoke-static/range {v17 .. v17}, Lcom/lk/sdk/Utils;->access$2(Ljava/lang/String;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$checkListener:Lcom/lk/sdk/Utils$CheckListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$checkListener:Lcom/lk/sdk/Utils$CheckListener;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/lk/sdk/Utils$CheckListener;->onFinish(Ljava/lang/String;)V

    .line 607
    .end local v11    # "msg":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 517
    .restart local v11    # "msg":Lorg/json/JSONObject;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/lk/sdk/Utils;->getAPKMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "apkMD5":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 519
    invoke-static/range {v17 .. v18}, Lcom/lk/sdk/Utils;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 521
    .local v16, "signMD5":Ljava/lang/String;
    const-string v17, "apk"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v17, "signature"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    .end local v2    # "apkMD5":Ljava/lang/String;
    .end local v11    # "msg":Lorg/json/JSONObject;
    .end local v16    # "signMD5":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 605
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 527
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "msg":Lorg/json/JSONObject;
    :sswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/lk/sdk/Utils;->getRunningApp(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v10

    .line 532
    .local v10, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 533
    .local v4, "apps":Lorg/json/JSONArray;
    const-string v17, "app"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 534
    .local v5, "appsInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_4

    .line 543
    const-string v17, "app"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 547
    .local v14, "services":Lorg/json/JSONArray;
    const-string v17, "service"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 548
    .local v15, "servicesInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_5

    .line 557
    const-string v17, "service"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 534
    .end local v14    # "services":Lorg/json/JSONArray;
    .end local v15    # "servicesInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 535
    .local v9, "info":Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 536
    .local v12, "pac":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 537
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 538
    .local v3, "appInfo":Lorg/json/JSONObject;
    const-string v18, "packagename"

    const/16 v19, 0x0

    aget-object v19, v12, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string v18, "classname"

    const/16 v19, 0x1

    aget-object v19, v12, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 548
    .end local v3    # "appInfo":Lorg/json/JSONObject;
    .end local v9    # "info":Ljava/lang/String;
    .end local v12    # "pac":[Ljava/lang/String;
    .restart local v14    # "services":Lorg/json/JSONArray;
    .restart local v15    # "servicesInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 549
    .restart local v9    # "info":Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 550
    .restart local v12    # "pac":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 551
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 552
    .local v13, "serviceInfo":Lorg/json/JSONObject;
    const-string v18, "packagename"

    const/16 v19, 0x0

    aget-object v19, v12, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v18, "classname"

    const/16 v19, 0x1

    aget-object v19, v12, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_3

    .line 562
    .end local v4    # "apps":Lorg/json/JSONArray;
    .end local v5    # "appsInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "info":Ljava/lang/String;
    .end local v10    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "pac":[Ljava/lang/String;
    .end local v13    # "serviceInfo":Lorg/json/JSONObject;
    .end local v14    # "services":Lorg/json/JSONArray;
    .end local v15    # "servicesInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2
    const-string v17, "root"

    # invokes: Lcom/lk/sdk/Utils;->haveRoot()Z
    invoke-static {}, Lcom/lk/sdk/Utils;->access$0()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 566
    :sswitch_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 567
    .local v7, "dll":Lorg/json/JSONObject;
    const-string v17, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$ext:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 568
    const-string v17, "md5"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$ext:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lk/sdk/Utils;->getFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    const-string v17, "dll"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 573
    .end local v7    # "dll":Lorg/json/JSONObject;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    invoke-static/range {v17 .. v17}, Lcom/lk/sdk/Utils;->getStarter(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v9

    .line 575
    .restart local v9    # "info":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 577
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 578
    .restart local v12    # "pac":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 579
    const-string v17, "packagename"

    const/16 v18, 0x0

    aget-object v18, v12, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    const-string v17, "classname"

    const/16 v18, 0x1

    aget-object v18, v12, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 587
    .end local v9    # "info":Ljava/lang/String;
    .end local v12    # "pac":[Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$ext:Ljava/lang/String;

    move-object/from16 v18, v0

    # invokes: Lcom/lk/sdk/Utils;->checkInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/lk/sdk/Utils;->access$1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 588
    .local v6, "checkResult":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$checkListener:Lcom/lk/sdk/Utils$CheckListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lk/sdk/Utils$2;->val$checkListener:Lcom/lk/sdk/Utils$CheckListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lcom/lk/sdk/Utils$CheckListener;->onFinish(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 515
    :sswitch_data_0
    .sparse-switch
        -0x45413f22 -> :sswitch_5
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
    .end sparse-switch
.end method
