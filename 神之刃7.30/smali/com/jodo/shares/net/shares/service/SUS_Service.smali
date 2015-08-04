.class public Lcom/jodo/shares/net/shares/service/SUS_Service;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SUS_Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x3

    const-string v1, "max_ais_notify"

    invoke-static {p0, v1}, Lcom/jodo/shares/net/shares/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 23

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v13, Lcom/jodo/shares/net/shares/b;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lcom/jodo/shares/net/shares/b;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v13}, Lcom/jodo/shares/net/shares/b;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pi_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v8, Lcom/jodo/shares/net/shares/b/a;

    invoke-direct {v8}, Lcom/jodo/shares/net/shares/b/a;-><init>()V

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Lcom/jodo/shares/net/shares/b;->c(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Lcom/jodo/shares/net/shares/b;->d(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/jodo/shares/net/shares/service/SUS_Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lcom/jodo/shares/net/shares/b/a;->a(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ntf_c_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "ntf_t"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/jodo/paysdk/util/ad;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "uninst_"

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/jodo/paysdk/util/ad;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->k()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->h()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    invoke-static {v0, v11, v9}, Lcom/jodo/paysdk/util/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/jodo/paysdk/util/j;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "jodoplay_update_notify_title,appName"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "jodoplay_update_notify_content"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Lcom/jodo/paysdk/util/ab;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v5, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/jodo/paysdk/util/aa;->a(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;JLandroid/content/Intent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_4
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/jodo/shares/net/shares/service/SUS_Service;->a(Landroid/content/Context;)I

    move-result v7

    if-gt v6, v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v11, v15, v11

    const-wide/32 v15, 0x2932e00

    cmp-long v7, v11, v15

    if-gez v7, :cond_6

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "ntf_c_"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v6}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ntf_t"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v7}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/jodo/paysdk/util/aa;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLandroid/content/Intent;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/jodo/paysdk/util/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/jodo/paysdk/model/AppInfo;

    move-result-object v15

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/jodo/shares/net/shares/service/SUS_Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jodo/paysdk/http/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jodo/paysdk/http/a/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jodo/paysdk/http/a/f;->c()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/jodo/paysdk/model/AppInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/jodo/paysdk/model/AppInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/jodo/paysdk/util/j;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v5, :cond_10

    move-object v5, v4

    :goto_4
    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/jodo/paysdk/model/AppInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_f

    if-eqz v4, :cond_f

    move-object v12, v4

    :goto_5
    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->d()Ljava/lang/String;

    move-result-object v7

    const-string v5, "UTF-8"

    invoke-static {v10, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v5, "UTF-8"

    invoke-static {v9, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->g()I

    move-result v18

    const/4 v10, 0x0

    const/4 v5, 0x0

    and-int/lit8 v19, v18, 0x2

    if-lez v19, :cond_b

    const-string v10, "http://api.getapk.cn/sharesdk/webview/pushguide.do?pkg=%s&filepath=%s&downurl=%s&from=%s&pid=%s"

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    const/16 v20, 0x1

    aput-object v17, v19, v20

    const/16 v20, 0x2

    aput-object v16, v19, v20

    const/16 v20, 0x3

    const-string v21, "notifybar"

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    new-instance v20, Landroid/content/ComponentName;

    const-class v21, Lcom/jodo/shares/net/shares/GLActionActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v20, "0x12345"

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v20, "0x78945"

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->j()Lorg/json/JSONObject;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v20, "0x78142"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v20, Lcom/jodo/paysdk/webviews/a;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/jodo/paysdk/webviews/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/jodo/paysdk/webviews/a;->a()V

    :cond_9
    :goto_6
    and-int/lit8 v19, v18, 0x8

    if-lez v19, :cond_c

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v18, Landroid/content/ComponentName;

    const-class v19, Lcom/jodo/shares/net/shares/GLActionActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v18, "0x12345"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v18, "0x78945"

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->j()Lorg/json/JSONObject;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v18, "0x78142"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "http://api.getapk.cn/sharesdk/webview/pushguide.do?pkg=%s&filepath=%s&downurl=%s&from=%s&pid=%s"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/4 v11, 0x1

    aput-object v17, v18, v11

    const/4 v11, 0x2

    aput-object v16, v18, v11

    const/4 v11, 0x3

    const-string v16, "shortcut"

    aput-object v16, v18, v11

    const/4 v11, 0x4

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v18, v11

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/jodo/paysdk/webviews/a;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9}, Lcom/jodo/paysdk/webviews/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/jodo/paysdk/webviews/a;->a()V

    move-object v11, v5

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p0 .. p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/jodo/shares/net/shares/service/SUS_Service;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const-string v5, "jodoplay_channel"

    const-string v9, "default"

    move-object/from16 v0, p0

    invoke-static {v0, v5, v9}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->h()Ljava/lang/String;

    move-result-object v20

    if-eqz v10, :cond_a

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v5, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/jodo/paysdk/util/aa;->a(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;JLandroid/content/Intent;)I

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/jodo/shares/net/shares/service/SUS_Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v9, 0x6

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-static/range {v3 .. v9}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    if-eqz v11, :cond_0

    invoke-virtual {v15}, Lcom/jodo/paysdk/model/AppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v12, v3}, Lcom/jodo/paysdk/util/n;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jodo/shares/net/shares/service/SUS_Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v9, 0x7

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-static/range {v3 .. v9}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_b
    and-int/lit8 v19, v18, 0x1

    if-lez v19, :cond_9

    :try_start_4
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    new-instance v19, Landroid/content/ComponentName;

    const-class v20, Lcom/jodo/shares/net/shares/GLActionActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v19, "0x12345"

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v19, "0x78945"

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->j()Lorg/json/JSONObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "0x78142"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_c
    and-int/lit8 v11, v18, 0x4

    if-lez v11, :cond_e

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v11, Landroid/content/ComponentName;

    const-class v16, Lcom/jodo/shares/net/shares/GLActionActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v11, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v11, "0x12345"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "0x78945"

    invoke-virtual {v8}, Lcom/jodo/shares/net/shares/b/a;->j()Lorg/json/JSONObject;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "0x78142"

    invoke-virtual {v5, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v11, v5

    goto/16 :goto_7

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v5, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/jodo/paysdk/util/aa;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLandroid/content/Intent;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    :cond_e
    move-object v11, v5

    goto/16 :goto_7

    :cond_f
    move-object v12, v5

    goto/16 :goto_5

    :cond_10
    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    goto/16 :goto_4

    :cond_11
    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
