.class final Lcom/mqgame/lib/SSDK$4;
.super Ljava/lang/Object;
.source "SSDK.java"

# interfaces
.implements Lcom/lk/sdk/BasePluginInterface$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mqgame/lib/SSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ILjava/lang/String;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v5, "Sog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez p1, :cond_1

    .line 148
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "jsonParser":Lorg/json/JSONObject;
    const-string v5, "uid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "szUid":Ljava/lang/String;
    const-string v5, "token"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "szToken":Ljava/lang/String;
    const-string v5, "OnSdkEvent.Notify(\'%s=%s\')"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "szScript":Ljava/lang/String;
    invoke-static {v2}, Lcom/mqgame/lib/SUtility;->excFromUIThread(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "jsonParser":Lorg/json/JSONObject;
    .end local v2    # "szScript":Ljava/lang/String;
    .end local v3    # "szToken":Ljava/lang/String;
    .end local v4    # "szUid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 161
    :try_start_1
    const-string v5, ""

    invoke-static {v5}, Lcom/mqgame/lib/SSDK;->logout(Ljava/lang/String;)V

    .line 162
    const-wide/16 v5, 0xbb8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 163
    # getter for: Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;
    invoke-static {}, Lcom/mqgame/lib/SSDK;->access$000()Lcom/lk/sdk/PluginInterface;

    move-result-object v5

    sget-object v6, Lcom/mqgame/lib/SSDK;->mTmpAParam:Landroid/app/Activity;

    sget-object v7, Lcom/mqgame/lib/SSDK;->mTmpSParam:Ljava/lang/String;

    sget-object v8, Lcom/mqgame/lib/SSDK;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    invoke-virtual {v5, v6, v7, v8}, Lcom/lk/sdk/PluginInterface;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method
