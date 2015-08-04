.class public final Lcom/jodo/paysdk/JodoPlaySDKManager;
.super Lcom/jodo/paysdk/func/JodoPlaySDKManagerParent;
.source "JodoPlaySDKManager.java"

# interfaces
.implements Lcom/jodo/common/IPublic;


# static fields
.field private static ActivityOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x6

    sput v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->ActivityOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jodo/paysdk/func/JodoPlaySDKManagerParent;-><init>()V

    return-void
.end method

.method public static appInit(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/func/DynamicAPK;->init(Landroid/content/Context;)V

    .line 50
    invoke-static {p0}, Lcom/jodo/paysdk/CommandManager;->init(Landroid/content/Context;)V

    .line 51
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_APP_INIT:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jodo/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getScreenOrigentation()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->ActivityOrientation:I

    return v0
.end method

.method protected static initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/config/JodoInitParams;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "initParams"    # Lcom/jodo/paysdk/config/JodoInitParams;
    .param p2, "listener"    # Lcom/jodo/paysdk/interfaces/InitCallbackListener;

    .prologue
    .line 82
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_SDK_INIT:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 87
    return-void
.end method

.method public static initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/jodo/paysdk/interfaces/InitCallbackListener;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/config/JodoInitParams;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V

    .line 64
    return-void
.end method

.method public static setScreenPortrait(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 38
    const/4 v0, 0x7

    sput v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->ActivityOrientation:I

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x6

    sput v0, Lcom/jodo/paysdk/JodoPlaySDKManager;->ActivityOrientation:I

    goto :goto_0
.end method

.method public static showChangeAccountView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    .prologue
    .line 122
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_CHANGE_ACCOUNT_VIEW:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 126
    return-void
.end method

.method public static showLoginView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    .prologue
    .line 113
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_LOGIN_VIEW:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 118
    return-void
.end method

.method public static showPayView(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jodoPayInfo"    # Lcom/jodo/paysdk/model/JodoPayInfo;
    .param p2, "listener"    # Lcom/jodo/paysdk/interfaces/OrderCallbackListener;

    .prologue
    .line 99
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_PAY_VIEW:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 103
    return-void
.end method

.method public static showQuitGameView(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showQuitGameView(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V

    .line 200
    return-void
.end method

.method public static showQuitGameView(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "quitGameCallback"    # Lcom/jodo/paysdk/interfaces/QuitGameCallback;

    .prologue
    .line 203
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_QUIT_VIEW:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 207
    return-void
.end method
