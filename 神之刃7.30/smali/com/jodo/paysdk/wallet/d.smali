.class final Lcom/jodo/paysdk/wallet/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabPurchaseFinished(Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Purchase;)V
    .locals 16

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Purchase finished: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v1

    iget-object v1, v1, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/vending/billing/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->g()I

    move-result v3

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "paid failed"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jodo/paysdk/wallet/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    throw v1

    :cond_1
    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Purchase successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->a()V

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

    invoke-virtual/range {p2 .. p2}, Lcom/android/vending/billing/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/vending/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v1 .. v15}, Lcom/jodo/paysdk/wallet/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
