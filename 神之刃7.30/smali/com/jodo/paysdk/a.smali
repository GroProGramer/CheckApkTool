.class final Lcom/jodo/paysdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Z

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/jodo/paysdk/CheckPayResultService;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/CheckPayResultService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/jodo/paysdk/a;->p:Lcom/jodo/paysdk/CheckPayResultService;

    iput-object p2, p0, Lcom/jodo/paysdk/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/jodo/paysdk/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/jodo/paysdk/a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/jodo/paysdk/a;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/jodo/paysdk/a;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/jodo/paysdk/a;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/jodo/paysdk/a;->h:Ljava/lang/String;

    iput p10, p0, Lcom/jodo/paysdk/a;->i:I

    iput p11, p0, Lcom/jodo/paysdk/a;->j:I

    iput-boolean p12, p0, Lcom/jodo/paysdk/a;->k:Z

    iput-object p13, p0, Lcom/jodo/paysdk/a;->l:Ljava/lang/String;

    iput-object p14, p0, Lcom/jodo/paysdk/a;->m:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/jodo/paysdk/a;->n:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/jodo/paysdk/a;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    const/4 v15, 0x5

    :try_start_0
    const-string v14, "unknown error"

    sget-object v1, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/config/a;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-eqz v1, :cond_8

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jodo/paysdk/a;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    :try_start_2
    const-string v2, "paid success"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "price"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "price"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AppsFlyerLib, order_completed BEFORE, price="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jodo/paysdk/a;->b:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jodo/paysdk/AppsflyerService;->sendOrderPaySuccessEvent(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AppsFlyerLib, order_completed AFTER, price="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/paysdk/a;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/paysdk/a;->d:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    :try_start_8
    const-string v1, "server return no price"

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "server return no data"

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :cond_2
    :try_start_9
    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    :try_start_a
    const-string v14, "paid failed"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move v3, v2

    move-object v2, v14

    goto :goto_0

    :cond_3
    :try_start_b
    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/paysdk/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    # getter for: Lcom/jodo/paysdk/CheckPayResultService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/jodo/paysdk/CheckPayResultService;->access$000()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jodo/paysdk/a;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jodo/paysdk/a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jodo/paysdk/a;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/paysdk/a;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/paysdk/a;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jodo/paysdk/a;->i:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jodo/paysdk/a;->j:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/jodo/paysdk/a;->k:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jodo/paysdk/a;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jodo/paysdk/a;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jodo/paysdk/a;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jodo/paysdk/a;->o:Ljava/lang/String;

    invoke-static/range {v1 .. v13}, Lcom/jodo/paysdk/wallet/GooglePayService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v2, v14

    move v3, v15

    goto/16 :goto_2

    :cond_4
    const-string v1, "CheckPayResultService: return code not found"

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :cond_5
    move-object v2, v14

    move v3, v15

    goto/16 :goto_0

    :cond_6
    :try_start_c
    # getter for: Lcom/jodo/paysdk/CheckPayResultService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/jodo/paysdk/CheckPayResultService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "check result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-ne v1, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/paysdk/a;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jodo/paysdk/a;->j:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/paysdk/a;->l:Ljava/lang/String;

    invoke-static {v1, v4, v5, v3, v2}, Lcom/jodo/paysdk/wallet/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->c()V

    goto/16 :goto_1

    :cond_8
    const/16 v7, 0x8

    const/4 v6, -0x1

    const-string v5, ""

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string v1, ""
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :try_start_d
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/jodo/paysdk/a;->a:Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "state"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "state"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "code"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "code"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v9, "msg"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "code="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    const-string v8, "data"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "data"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "cporderid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "cporderid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-result-object v3

    :cond_a
    :try_start_e
    const-string v8, "price"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "price"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_b
    const-string v8, "ext"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "ext"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    move-result-object v1

    :cond_c
    move-object v4, v3

    move v3, v2

    move-object v2, v1

    :goto_3
    if-nez v6, :cond_d

    const/4 v1, 0x6

    :try_start_f
    const-string v14, "paid success"

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/paysdk/a;->c:Ljava/lang/String;

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jodo/paysdk/a;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jodo/paysdk/a;->j:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jodo/paysdk/a;->l:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4, v14}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v3

    move v3, v2

    move-object/from16 v2, v16

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_3

    :cond_d
    const/16 v1, 0x3e8

    if-ne v6, v1, :cond_f

    const-string v1, "-3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/paysdk/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/paysdk/a;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jodo/paysdk/a;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jodo/paysdk/a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jodo/paysdk/a;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/paysdk/a;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/paysdk/a;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jodo/paysdk/a;->i:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jodo/paysdk/a;->j:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/jodo/paysdk/a;->k:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jodo/paysdk/a;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jodo/paysdk/a;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jodo/paysdk/a;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jodo/paysdk/a;->o:Ljava/lang/String;

    invoke-static/range {v1 .. v13}, Lcom/jodo/paysdk/wallet/GooglePayService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "paid failed, reason:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_f
    const/16 v1, 0x3ee

    if-ne v6, v1, :cond_13

    const/16 v1, 0xb

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "already deliveried before, no need to delivery again, reason:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    :cond_10
    # getter for: Lcom/jodo/paysdk/CheckPayResultService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/jodo/paysdk/CheckPayResultService;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "check result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    if-eq v5, v1, :cond_11

    const/16 v5, 0xb

    if-ne v5, v1, :cond_12

    :cond_11
    invoke-static {v4, v3, v2, v1, v14}, Lcom/jodo/paysdk/wallet/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->c()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    :catch_5
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v3

    move v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_5

    :catch_6
    move-exception v1

    move-object v2, v14

    goto/16 :goto_2

    :catch_7
    move-exception v1

    move v3, v2

    move-object v2, v14

    goto/16 :goto_2

    :cond_13
    move v1, v7

    goto/16 :goto_4
.end method
