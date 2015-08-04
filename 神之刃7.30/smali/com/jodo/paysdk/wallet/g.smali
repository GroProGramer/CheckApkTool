.class final Lcom/jodo/paysdk/wallet/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/wallet/f;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/wallet/f;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/g;->a:Lcom/jodo/paysdk/wallet/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsumeFinished(Lcom/android/vending/billing/Purchase;Lcom/android/vending/billing/IabResult;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "consumeProductItem:onConsumeFinished"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/vending/billing/IabResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->b()V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/g;->a:Lcom/jodo/paysdk/wallet/f;

    iget-object v1, v1, Lcom/jodo/paysdk/wallet/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jodo/paysdk/wallet/g;->a:Lcom/jodo/paysdk/wallet/f;

    iget v2, v2, Lcom/jodo/paysdk/wallet/f;->b:I

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/g;->a:Lcom/jodo/paysdk/wallet/f;

    iget-object v3, v3, Lcom/jodo/paysdk/wallet/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/jodo/paysdk/wallet/g;->a:Lcom/jodo/paysdk/wallet/f;

    iget v4, v4, Lcom/jodo/paysdk/wallet/f;->d:I

    iget-object v5, p0, Lcom/jodo/paysdk/wallet/g;->a:Lcom/jodo/paysdk/wallet/f;

    iget-object v5, v5, Lcom/jodo/paysdk/wallet/f;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/jodo/paysdk/wallet/b;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->j()V

    throw v0
.end method
