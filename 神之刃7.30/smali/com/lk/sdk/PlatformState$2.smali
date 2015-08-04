.class Lcom/lk/sdk/PlatformState$2;
.super Ljava/lang/Object;
.source "PlatformState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/PlatformState;->login()V
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
    iput-object p1, p0, Lcom/lk/sdk/PlatformState$2;->this$0:Lcom/lk/sdk/PlatformState;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lk/sdk/PlatformState$2;)Lcom/lk/sdk/PlatformState;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$2;->this$0:Lcom/lk/sdk/PlatformState;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$2;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lk/sdk/PlatformState;->access$0(Lcom/lk/sdk/PlatformState;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lk/sdk/PlatformState;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$2;->this$0:Lcom/lk/sdk/PlatformState;

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->onLoginFailed()V

    .line 111
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$2;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lk/sdk/PlatformState;->access$0(Lcom/lk/sdk/PlatformState;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lk/sdk/PlatformState$2$1;

    invoke-direct {v1, p0}, Lcom/lk/sdk/PlatformState$2$1;-><init>(Lcom/lk/sdk/PlatformState$2;)V

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showLoginView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    goto :goto_0
.end method
