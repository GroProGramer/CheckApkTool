.class final Lcom/jodo/paysdk/wallet/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIabSetupFinished(Lcom/android/vending/billing/IabResult;)V
    .locals 3

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/vending/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem setting up in-app billing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/wallet/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->e()Lcom/jodo/paysdk/wallet/b;

    move-result-object v0

    iget-object v0, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->u()V

    goto :goto_0
.end method
