.class Lcom/android/vending/billing/IabHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/android/vending/billing/IabHelper;ZLjava/util/List;Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/IabHelper$2;->this$0:Lcom/android/vending/billing/IabHelper;

    iput-boolean p2, p0, Lcom/android/vending/billing/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/android/vending/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/android/vending/billing/IabHelper$2;->val$listener:Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/android/vending/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Lcom/android/vending/billing/IabResult;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/android/vending/billing/IabResult;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/vending/billing/IabHelper$2;->this$0:Lcom/android/vending/billing/IabHelper;

    iget-boolean v3, p0, Lcom/android/vending/billing/IabHelper$2;->val$querySkuDetails:Z

    iget-object v4, p0, Lcom/android/vending/billing/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/vending/billing/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/android/vending/billing/Inventory;
    :try_end_0
    .catch Lcom/android/vending/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/vending/billing/IabHelper$2;->this$0:Lcom/android/vending/billing/IabHelper;

    invoke-virtual {v2}, Lcom/android/vending/billing/IabHelper;->flagEndAsync()V

    iget-object v2, p0, Lcom/android/vending/billing/IabHelper$2;->this$0:Lcom/android/vending/billing/IabHelper;

    iget-boolean v2, v2, Lcom/android/vending/billing/IabHelper;->mDisposed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/billing/IabHelper$2;->val$listener:Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/billing/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/vending/billing/IabHelper$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/vending/billing/IabHelper$2$1;-><init>(Lcom/android/vending/billing/IabHelper$2;Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/android/vending/billing/IabException;->getResult()Lcom/android/vending/billing/IabResult;

    move-result-object v1

    goto :goto_0
.end method
