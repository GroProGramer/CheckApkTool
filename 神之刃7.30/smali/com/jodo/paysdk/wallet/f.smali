.class final Lcom/jodo/paysdk/wallet/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/f;->a:Ljava/lang/String;

    iput p2, p0, Lcom/jodo/paysdk/wallet/f;->b:I

    iput-object p3, p0, Lcom/jodo/paysdk/wallet/f;->c:Ljava/lang/String;

    iput p4, p0, Lcom/jodo/paysdk/wallet/f;->d:I

    iput-object p5, p0, Lcom/jodo/paysdk/wallet/f;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryInventoryFinished(Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Inventory;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/vending/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->b()V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/f;->a:Ljava/lang/String;

    iget v2, p0, Lcom/jodo/paysdk/wallet/f;->b:I

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/f;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "query inventory failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/vending/billing/IabResult;->getResponse()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/vending/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/wallet/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/vending/billing/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "consumeProductItem:onQueryInventoryFinished, purchased="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/vending/billing/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/Purchase;

    move-result-object v0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v1

    iget-object v1, v1, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    new-instance v2, Lcom/jodo/paysdk/wallet/g;

    invoke-direct {v2, p0}, Lcom/jodo/paysdk/wallet/g;-><init>(Lcom/jodo/paysdk/wallet/f;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/billing/IabHelper;->consumeAsync(Lcom/android/vending/billing/Purchase;Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->b()V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/f;->a:Ljava/lang/String;

    iget v2, p0, Lcom/jodo/paysdk/wallet/f;->b:I

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/f;->c:Ljava/lang/String;

    iget v4, p0, Lcom/jodo/paysdk/wallet/f;->d:I

    iget-object v5, p0, Lcom/jodo/paysdk/wallet/f;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/jodo/paysdk/wallet/b;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    throw v0
.end method
