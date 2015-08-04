.class final Lcom/jodo/paysdk/wallet/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryInventoryFinished(Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Inventory;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lcom/android/vending/billing/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->b()V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->g()I

    move-result v3

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "query inventory failed "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/vending/billing/IabResult;->getResponse()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/vending/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jodo/paysdk/wallet/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    throw v1

    :cond_0
    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->t()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v9

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkAndConsumeProductItemOnInited:onQueryInventoryFinished, purchased="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->t()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/Purchase;

    move-result-object v15

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "purchase: orderId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/vending/billing/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/vending/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->n()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->o()I

    move-result v7

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->g()I

    move-result v8

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->p()Z

    move-result v9

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->h()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->q()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->r()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->s()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Lcom/android/vending/billing/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15}, Lcom/android/vending/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v1 .. v15}, Lcom/jodo/paysdk/wallet/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->b()V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkAndConsumeProductItemOnInited:doPurchase"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->n()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->o()I

    move-result v7

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->g()I

    move-result v8

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->h()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->q()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->r()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->s()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v1 .. v13}, Lcom/jodo/paysdk/wallet/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
