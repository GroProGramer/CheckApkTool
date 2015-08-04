.class Lcom/lk/sdk/PlatformState$2$1;
.super Ljava/lang/Object;
.source "PlatformState.java"

# interfaces
.implements Lcom/jodo/paysdk/interfaces/LoginCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/PlatformState$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lk/sdk/PlatformState$2;


# direct methods
.method constructor <init>(Lcom/lk/sdk/PlatformState$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/PlatformState$2$1;->this$1:Lcom/lk/sdk/PlatformState$2;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCallback(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .param p4, "paramJSONObject"    # Lorg/json/JSONObject;

    .prologue
    .line 91
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 94
    :pswitch_0
    :try_start_0
    const-string v3, "LK_Platform"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onLoginCallback paramJSONObject:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v3, "userID"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "userId":Ljava/lang/String;
    const-string v3, "ck"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "token":Ljava/lang/String;
    iget-object v3, p0, Lcom/lk/sdk/PlatformState$2$1;->this$1:Lcom/lk/sdk/PlatformState$2;

    # getter for: Lcom/lk/sdk/PlatformState$2;->this$0:Lcom/lk/sdk/PlatformState;
    invoke-static {v3}, Lcom/lk/sdk/PlatformState$2;->access$0(Lcom/lk/sdk/PlatformState$2;)Lcom/lk/sdk/PlatformState;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lk/sdk/PlatformState;->onLoginFinish(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lk/sdk/PlatformState$2$1;->this$1:Lcom/lk/sdk/PlatformState$2;

    # getter for: Lcom/lk/sdk/PlatformState$2;->this$0:Lcom/lk/sdk/PlatformState;
    invoke-static {v3}, Lcom/lk/sdk/PlatformState$2;->access$0(Lcom/lk/sdk/PlatformState$2;)Lcom/lk/sdk/PlatformState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lk/sdk/PlatformState;->onLoginFailed()V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v3, p0, Lcom/lk/sdk/PlatformState$2$1;->this$1:Lcom/lk/sdk/PlatformState$2;

    # getter for: Lcom/lk/sdk/PlatformState$2;->this$0:Lcom/lk/sdk/PlatformState;
    invoke-static {v3}, Lcom/lk/sdk/PlatformState$2;->access$0(Lcom/lk/sdk/PlatformState$2;)Lcom/lk/sdk/PlatformState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lk/sdk/PlatformState;->onLoginFailed()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
