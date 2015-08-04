.class public Lcom/jodo/paysdk/func/JodoPlaySDKManagerParent;
.super Ljava/lang/Object;
.source "JodoPlaySDKManagerParent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    sget-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_LOGIN_VIEW:Ljava/lang/String;

    const-string v1, "isLogin"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/CommandManager;->returnValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 95
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_ACTIVITYRESULT:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 99
    return-void
.end method

.method public static onBackPressed(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    sget-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_BACKPRESSED:Ljava/lang/String;

    const-string v1, "backpressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/CommandManager;->returnValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_CREATE:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 52
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_DESTROY:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 86
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_PAUSE:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 65
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_RESUME:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 58
    return-void
.end method

.method public static onRoleLoaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverid"    # Ljava/lang/String;
    .param p2, "servername"    # Ljava/lang/String;
    .param p3, "rolename"    # Ljava/lang/String;
    .param p4, "rolelevel"    # I
    .param p5, "listener"    # Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;

    .prologue
    .line 110
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_ON_ROLELOADED:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 114
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_START:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 72
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_STOP:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 79
    return-void
.end method

.method public static startDownload(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unzipInfo"    # Lcom/jodo/paysdk/model/UnzipInfo;
    .param p2, "eventHandler"    # Landroid/os/Handler;

    .prologue
    .line 118
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_START_DOWNLOAD_ZIP:Ljava/lang/String;

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

    .line 123
    return-void
.end method

.method public static unzipExtFile2SpecificFolder(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "unzipInfo"    # Lcom/jodo/paysdk/model/UnzipInfo;
    .param p2, "listener"    # Lcom/jodo/paysdk/interfaces/UnzipCallbackListener;

    .prologue
    .line 213
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_UNZIP_EXT_FILE2SPECIFIC_FOLDER:Ljava/lang/String;

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

    .line 218
    return-void
.end method

.method public static unzipExtResourceFilesToSpecificFolder(Landroid/content/Context;Lcom/jodo/paysdk/model/UnzipInfo;Landroid/os/Handler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unzipInfo"    # Lcom/jodo/paysdk/model/UnzipInfo;
    .param p2, "eventHandler"    # Landroid/os/Handler;

    .prologue
    .line 187
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_UNZIP_EXT_RESOURCEFILES2SPECIFIC_FOLDER:Ljava/lang/String;

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

    .line 191
    return-void
.end method

.method public static unzipExtResourceFilesToSpecificFolder(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "storageFolderAbsolutePath"    # Ljava/lang/String;
    .param p2, "enableOverride"    # Z
    .param p3, "eventHandler"    # Landroid/os/Handler;

    .prologue
    .line 154
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_UNZIP_EXT_RESOURCEFILES2SPECIFIC_FOLDER:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 162
    return-void
.end method

.method public static unzipExtResourceFilesToSpecificFolder(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/Handler;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageFolderAbsolutePath_from"    # Ljava/lang/String;
    .param p2, "enableOverride_from"    # Z
    .param p3, "useCustomizedActivtiy_from"    # Z
    .param p4, "eventHandler"    # Landroid/os/Handler;

    .prologue
    .line 197
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->COMMAND_UNZIP_EXT_RESOURCEFILES2SPECIFIC_FOLDER:Ljava/lang/String;

    invoke-static {}, Lcom/jodo/paysdk/command/InvokeParam;->Create()Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/command/InvokeParam;->setContext(Landroid/content/Context;)Lcom/jodo/paysdk/command/InvokeParam;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/command/InvokeParam;->setParams([Ljava/lang/Object;)Lcom/jodo/paysdk/command/InvokeArgs;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/command/InvokeParam;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/CommandManager;->invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V

    .line 206
    return-void
.end method
