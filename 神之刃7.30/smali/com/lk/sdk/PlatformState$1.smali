.class Lcom/lk/sdk/PlatformState$1;
.super Ljava/lang/Object;
.source "PlatformState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/PlatformState;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lk/sdk/PlatformState;


# direct methods
.method constructor <init>(Lcom/lk/sdk/PlatformState;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/PlatformState$1;->this$0:Lcom/lk/sdk/PlatformState;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/lk/sdk/PlatformState$1;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lk/sdk/PlatformState;->access$0(Lcom/lk/sdk/PlatformState;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "LK_Orientation"

    invoke-static {v1, v2}, Lcom/lk/sdk/PlatformState;->getMeteDataByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "screenOrientation":Ljava/lang/String;
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->setScreenPortrait(Z)V

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/lk/sdk/PlatformState$1;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lk/sdk/PlatformState;->access$0(Lcom/lk/sdk/PlatformState;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/lk/sdk/PlatformState$1$1;

    invoke-direct {v2, p0}, Lcom/lk/sdk/PlatformState$1$1;-><init>(Lcom/lk/sdk/PlatformState$1;)V

    invoke-static {v1, v2}, Lcom/jodo/paysdk/JodoPlaySDKManager;->initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V

    .line 68
    iget-object v1, p0, Lcom/lk/sdk/PlatformState$1;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lk/sdk/PlatformState;->access$0(Lcom/lk/sdk/PlatformState;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onCreate(Landroid/app/Activity;)V

    .line 69
    return-void

    .line 54
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->setScreenPortrait(Z)V

    goto :goto_0
.end method
