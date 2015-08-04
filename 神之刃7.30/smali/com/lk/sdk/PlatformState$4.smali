.class Lcom/lk/sdk/PlatformState$4;
.super Ljava/lang/Object;
.source "PlatformState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/PlatformState;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lk/sdk/PlatformState;

.field private final synthetic val$amount:Ljava/lang/String;

.field private final synthetic val$customInfo:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$productDes:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lk/sdk/PlatformState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    iput-object p2, p0, Lcom/lk/sdk/PlatformState$4;->val$amount:Ljava/lang/String;

    iput-object p3, p0, Lcom/lk/sdk/PlatformState$4;->val$productDes:Ljava/lang/String;

    iput-object p4, p0, Lcom/lk/sdk/PlatformState$4;->val$customInfo:Ljava/lang/String;

    iput-object p5, p0, Lcom/lk/sdk/PlatformState$4;->val$orderId:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lk/sdk/PlatformState$4;)Lcom/lk/sdk/PlatformState;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    const-string v2, "LK_Platform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay amount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lk/sdk/PlatformState$4;->val$amount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v2, "LK_Platform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay productDes:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lk/sdk/PlatformState$4;->val$productDes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v2, "LK_Platform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay customInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lk/sdk/PlatformState$4;->val$customInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v2, "LK_Platform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay orderId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lk/sdk/PlatformState$4;->val$orderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v2, "LK_Platform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay mServerId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mServerId:Ljava/lang/String;
    invoke-static {v4}, Lcom/lk/sdk/PlatformState;->access$8(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v2, "LK_Platform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay mServerName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mServerName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lk/sdk/PlatformState;->access$5(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v2, "LK_Platform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay mRoleName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mRoleName:Ljava/lang/String;
    invoke-static {v4}, Lcom/lk/sdk/PlatformState;->access$6(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v2, "LK_Platform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay mRoleLevel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mRoleLevel:Ljava/lang/String;
    invoke-static {v4}, Lcom/lk/sdk/PlatformState;->access$7(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Lcom/jodo/paysdk/model/JodoPayInfo;

    invoke-direct {v1}, Lcom/jodo/paysdk/model/JodoPayInfo;-><init>()V

    .line 173
    .local v1, "jodoPayInfo":Lcom/jodo/paysdk/model/JodoPayInfo;
    iget-object v2, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mServerId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lk/sdk/PlatformState;->access$8(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/model/JodoPayInfo;->setServerid(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mServerName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lk/sdk/PlatformState;->access$5(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/model/JodoPayInfo;->setServername(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mRoleName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lk/sdk/PlatformState;->access$6(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/model/JodoPayInfo;->setRolename(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mRoleLevel:Ljava/lang/String;
    invoke-static {v2}, Lcom/lk/sdk/PlatformState;->access$7(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/model/JodoPayInfo;->setRolelevel(I)V

    .line 182
    iget-object v2, p0, Lcom/lk/sdk/PlatformState$4;->val$amount:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/model/JodoPayInfo;->setPrice(I)V

    .line 184
    iget-object v2, p0, Lcom/lk/sdk/PlatformState$4;->val$customInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/model/JodoPayInfo;->setExt(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$4;->val$orderId:Ljava/lang/String;

    .line 188
    .local v0, "cporderid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/JodoPayInfo;->setCporderid(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lk/sdk/PlatformState;->access$0(Lcom/lk/sdk/PlatformState;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/lk/sdk/PlatformState$4$1;

    invoke-direct {v3, p0}, Lcom/lk/sdk/PlatformState$4$1;-><init>(Lcom/lk/sdk/PlatformState$4;)V

    invoke-static {v2, v1, v3}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showPayView(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V

    .line 217
    return-void
.end method
