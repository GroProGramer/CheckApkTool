.class Lcom/android/vending/billing/IabHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/android/vending/billing/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/IabHelper;Ljava/util/List;Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/android/vending/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/IabHelper$3;->this$0:Lcom/android/vending/billing/IabHelper;

    iput-object p2, p0, Lcom/android/vending/billing/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/android/vending/billing/IabHelper$3;->val$singleListener:Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/android/vending/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/vending/billing/IabHelper$3;->val$multiListener:Lcom/android/vending/billing/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/Purchase;

    :try_start_0
    iget-object v3, p0, Lcom/android/vending/billing/IabHelper$3;->this$0:Lcom/android/vending/billing/IabHelper;

    invoke-virtual {v3, v0}, Lcom/android/vending/billing/IabHelper;->consume(Lcom/android/vending/billing/Purchase;)V

    new-instance v3, Lcom/android/vending/billing/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successful consume of sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/vending/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/vending/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/vending/billing/IabException;->getResult()Lcom/android/vending/billing/IabResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$3;->this$0:Lcom/android/vending/billing/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/IabHelper;->flagEndAsync()V

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$3;->this$0:Lcom/android/vending/billing/IabHelper;

    iget-boolean v0, v0, Lcom/android/vending/billing/IabHelper;->mDisposed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$3;->val$singleListener:Lcom/android/vending/billing/IabHelper$OnConsumeFinishedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/billing/IabHelper$3$1;

    invoke-direct {v2, p0, v1}, Lcom/android/vending/billing/IabHelper$3$1;-><init>(Lcom/android/vending/billing/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$3;->this$0:Lcom/android/vending/billing/IabHelper;

    iget-boolean v0, v0, Lcom/android/vending/billing/IabHelper;->mDisposed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$3;->val$multiListener:Lcom/android/vending/billing/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/billing/IabHelper$3$2;

    invoke-direct {v2, p0, v1}, Lcom/android/vending/billing/IabHelper$3$2;-><init>(Lcom/android/vending/billing/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
