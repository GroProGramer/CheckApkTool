.class Lcom/lk/sdk/PlatformState$3;
.super Ljava/lang/Object;
.source "PlatformState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/PlatformState;->enterGame(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lk/sdk/PlatformState;

.field private final synthetic val$json:Ljava/lang/String;

.field private final synthetic val$serverID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lk/sdk/PlatformState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/PlatformState$3;->this$0:Lcom/lk/sdk/PlatformState;

    iput-object p2, p0, Lcom/lk/sdk/PlatformState$3;->val$serverID:Ljava/lang/String;

    iput-object p3, p0, Lcom/lk/sdk/PlatformState$3;->val$json:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$3;->this$0:Lcom/lk/sdk/PlatformState;

    iget-object v1, p0, Lcom/lk/sdk/PlatformState$3;->val$serverID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lk/sdk/PlatformState;->access$1(Lcom/lk/sdk/PlatformState;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$3;->val$json:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/lk/sdk/PlatformState$3;->val$json:Ljava/lang/String;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    .local v7, "jsonObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$3;->this$0:Lcom/lk/sdk/PlatformState;

    const-string v1, "serverName"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lk/sdk/PlatformState;->access$2(Lcom/lk/sdk/PlatformState;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$3;->this$0:Lcom/lk/sdk/PlatformState;

    const-string v1, "roleName"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lk/sdk/PlatformState;->access$3(Lcom/lk/sdk/PlatformState;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$3;->this$0:Lcom/lk/sdk/PlatformState;

    const-string v1, "roleLevel"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lk/sdk/PlatformState;->access$4(Lcom/lk/sdk/PlatformState;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$3;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lk/sdk/PlatformState;->access$0(Lcom/lk/sdk/PlatformState;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lk/sdk/PlatformState$3;->val$serverID:Ljava/lang/String;

    iget-object v2, p0, Lcom/lk/sdk/PlatformState$3;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mServerName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lk/sdk/PlatformState;->access$5(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lk/sdk/PlatformState$3;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mRoleName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lk/sdk/PlatformState;->access$6(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v3

    .line 141
    iget-object v4, p0, Lcom/lk/sdk/PlatformState$3;->this$0:Lcom/lk/sdk/PlatformState;

    # getter for: Lcom/lk/sdk/PlatformState;->mRoleLevel:Ljava/lang/String;
    invoke-static {v4}, Lcom/lk/sdk/PlatformState;->access$7(Lcom/lk/sdk/PlatformState;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lcom/lk/sdk/PlatformState$3$1;

    invoke-direct {v5, p0}, Lcom/lk/sdk/PlatformState$3$1;-><init>(Lcom/lk/sdk/PlatformState$3;)V

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onRoleLoaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v6

    .line 150
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
