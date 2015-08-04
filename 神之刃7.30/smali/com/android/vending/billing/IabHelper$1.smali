.class Lcom/android/vending/billing/IabHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/IabHelper;

.field final synthetic val$listener:Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/IabHelper;Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    iput-object p2, p0, Lcom/android/vending/billing/IabHelper$1;->val$listener:Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    iget-boolean v0, v0, Lcom/android/vending/billing/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vending/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    iget-object v0, v0, Lcom/android/vending/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lcom/android/vending/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    iget-object v1, v1, Lcom/android/vending/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->val$listener:Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->val$listener:Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/android/vending/billing/IabResult;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/android/vending/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/vending/billing/IabResult;)V

    :cond_2
    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/vending/billing/IabHelper;->mSubscriptionsSupported:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/vending/billing/IabHelper$1;->val$listener:Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vending/billing/IabHelper$1;->val$listener:Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/android/vending/billing/IabResult;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/android/vending/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/vending/billing/IabResult;)V

    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In-app billing version 3 supported for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    iget-object v1, v1, Lcom/android/vending/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/vending/billing/IabHelper;->mSubscriptionsSupported:Z

    :goto_1
    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/vending/billing/IabHelper;->mSetupDone:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->val$listener:Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->val$listener:Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lcom/android/vending/billing/IabResult;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lcom/android/vending/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/vending/billing/IabResult;)V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/vending/billing/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/vending/billing/IabHelper$1;->this$0:Lcom/android/vending/billing/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/vending/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
