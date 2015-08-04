.class Lcom/android/vending/billing/IabHelper$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/vending/billing/IabHelper$2;

.field final synthetic val$inv_f:Lcom/android/vending/billing/Inventory;

.field final synthetic val$result_f:Lcom/android/vending/billing/IabResult;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/IabHelper$2;Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Inventory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/IabHelper$2$1;->this$1:Lcom/android/vending/billing/IabHelper$2;

    iput-object p2, p0, Lcom/android/vending/billing/IabHelper$2$1;->val$result_f:Lcom/android/vending/billing/IabResult;

    iput-object p3, p0, Lcom/android/vending/billing/IabHelper$2$1;->val$inv_f:Lcom/android/vending/billing/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$2$1;->this$1:Lcom/android/vending/billing/IabHelper$2;

    iget-object v0, v0, Lcom/android/vending/billing/IabHelper$2;->val$listener:Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/android/vending/billing/IabHelper$2$1;->val$result_f:Lcom/android/vending/billing/IabResult;

    iget-object v2, p0, Lcom/android/vending/billing/IabHelper$2$1;->val$inv_f:Lcom/android/vending/billing/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/android/vending/billing/IabResult;Lcom/android/vending/billing/Inventory;)V

    return-void
.end method
