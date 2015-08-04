.class public Lcom/jodo/paysdk/CommandManager;
.super Ljava/lang/Object;
.source "CommandManager.java"


# static fields
.field public static COMMAND_ACTIVITY_ON_ACTIVITYRESULT:Ljava/lang/String;

.field public static COMMAND_ACTIVITY_ON_BACKPRESSED:Ljava/lang/String;

.field public static COMMAND_ACTIVITY_ON_CREATE:Ljava/lang/String;

.field public static COMMAND_ACTIVITY_ON_DESTROY:Ljava/lang/String;

.field public static COMMAND_ACTIVITY_ON_PAUSE:Ljava/lang/String;

.field public static COMMAND_ACTIVITY_ON_RESUME:Ljava/lang/String;

.field public static COMMAND_ACTIVITY_ON_START:Ljava/lang/String;

.field public static COMMAND_ACTIVITY_ON_STOP:Ljava/lang/String;

.field public static COMMAND_APP_INIT:Ljava/lang/String;

.field public static COMMAND_CHANGE_ACCOUNT_VIEW:Ljava/lang/String;

.field public static COMMAND_ON_ROLELOADED:Ljava/lang/String;

.field public static COMMAND_ON_SDK_INIT_FINISHED:Ljava/lang/String;

.field public static COMMAND_SDK_INIT:Ljava/lang/String;

.field public static COMMAND_SHOW_ACCOUNT_MANAGE_VIEW:Ljava/lang/String;

.field public static COMMAND_SHOW_AGREEMENT:Ljava/lang/String;

.field public static COMMAND_SHOW_LOGIN_VIEW:Ljava/lang/String;

.field public static COMMAND_SHOW_PAY_VIEW:Ljava/lang/String;

.field public static COMMAND_SHOW_QUIT_VIEW:Ljava/lang/String;

.field public static COMMAND_SHOW_REGETPSW_VIEW:Ljava/lang/String;

.field public static COMMAND_START_DOWNLOAD_ZIP:Ljava/lang/String;

.field public static COMMAND_UNZIP_EXT_FILE2SPECIFIC_FOLDER:Ljava/lang/String;

.field public static COMMAND_UNZIP_EXT_RESOURCEFILES2SPECIFIC_FOLDER:Ljava/lang/String;

.field private static sClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sInitMethod:Ljava/lang/reflect/Method;

.field private static sInvokeMethod:Ljava/lang/reflect/Method;

.field private static sObj:Ljava/lang/Object;

.field private static sReturnValueMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "app_init"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_APP_INIT:Ljava/lang/String;

    .line 17
    const-string v0, "sdk_init"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_SDK_INIT:Ljava/lang/String;

    .line 18
    const-string v0, "show_pay_view"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_PAY_VIEW:Ljava/lang/String;

    .line 19
    const-string v0, "show_login_view"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_LOGIN_VIEW:Ljava/lang/String;

    .line 20
    const-string v0, "show_quit_view"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_QUIT_VIEW:Ljava/lang/String;

    .line 21
    const-string v0, "change_account_view"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_CHANGE_ACCOUNT_VIEW:Ljava/lang/String;

    .line 22
    const-string v0, "show_agreement"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_AGREEMENT:Ljava/lang/String;

    .line 23
    const-string v0, "show_reget_psw_view"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_REGETPSW_VIEW:Ljava/lang/String;

    .line 24
    const-string v0, "show_account_manage_view"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_SHOW_ACCOUNT_MANAGE_VIEW:Ljava/lang/String;

    .line 26
    const-string v0, "on_sdk_init_finished"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ON_SDK_INIT_FINISHED:Ljava/lang/String;

    .line 27
    const-string v0, "activity_on_create"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_CREATE:Ljava/lang/String;

    .line 28
    const-string v0, "activity_on_resume"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_RESUME:Ljava/lang/String;

    .line 29
    const-string v0, "activity_on_pause"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_PAUSE:Ljava/lang/String;

    .line 30
    const-string v0, "activity_on_start"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_START:Ljava/lang/String;

    .line 31
    const-string v0, "activity_on_stop"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_STOP:Ljava/lang/String;

    .line 32
    const-string v0, "activity_on_destroy"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_DESTROY:Ljava/lang/String;

    .line 33
    const-string v0, "activity_on_backpressed"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_BACKPRESSED:Ljava/lang/String;

    .line 34
    const-string v0, "activity_on_activityresult"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ACTIVITY_ON_ACTIVITYRESULT:Ljava/lang/String;

    .line 35
    const-string v0, "on_roleloaded"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_ON_ROLELOADED:Ljava/lang/String;

    .line 37
    const-string v0, "start_download_zip"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_START_DOWNLOAD_ZIP:Ljava/lang/String;

    .line 38
    const-string v0, "UnzipExtFile2SpecificFolder"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_UNZIP_EXT_FILE2SPECIFIC_FOLDER:Ljava/lang/String;

    .line 39
    const-string v0, "UnzipExtResourceFiles2SpecificFolderCmd"

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->COMMAND_UNZIP_EXT_RESOURCEFILES2SPECIFIC_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCommandManagerClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string v0, "com.jodo.paysdk.command.CommandManager"

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/CommandManager;->initInstance(Landroid/content/Context;)V

    .line 63
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->sInitMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 64
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->sClazz:Ljava/lang/Class;

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/jodo/common/util/ReflactUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/jodo/paysdk/CommandManager;->sInitMethod:Ljava/lang/reflect/Method;

    .line 65
    :cond_0
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->sInitMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/jodo/paysdk/CommandManager;->sObj:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jodo/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static initInstance(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/jodo/paysdk/CommandManager;->sClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0}, Lcom/jodo/paysdk/CommandManager;->getCommandManagerClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->sClazz:Ljava/lang/Class;

    .line 51
    :cond_0
    sget-object v0, Lcom/jodo/paysdk/CommandManager;->sObj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/jodo/paysdk/CommandManager;->sClazz:Ljava/lang/Class;

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Lcom/jodo/common/util/ReflactUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/CommandManager;->sObj:Ljava/lang/Object;

    .line 53
    :cond_1
    return-void
.end method

.method public static invoke(Ljava/lang/String;Lcom/jodo/paysdk/command/InvokeParam;)V
    .locals 5
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "param"    # Lcom/jodo/paysdk/command/InvokeParam;

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/jodo/paysdk/command/InvokeParam;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/CommandManager;->initInstance(Landroid/content/Context;)V

    .line 75
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->sInvokeMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 76
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->sClazz:Ljava/lang/Class;

    const-string v2, "invoke"

    invoke-static {v1, v2}, Lcom/jodo/common/util/ReflactUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/jodo/paysdk/CommandManager;->sInvokeMethod:Ljava/lang/reflect/Method;

    .line 77
    :cond_0
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->sInvokeMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/jodo/paysdk/CommandManager;->sObj:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jodo/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs returnValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 85
    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/CommandManager;->initInstance(Landroid/content/Context;)V

    .line 86
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->sReturnValueMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 87
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->sClazz:Ljava/lang/Class;

    const-string v2, "returnValue"

    invoke-static {v1, v2}, Lcom/jodo/common/util/ReflactUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/jodo/paysdk/CommandManager;->sReturnValueMethod:Ljava/lang/reflect/Method;

    .line 88
    :cond_0
    sget-object v1, Lcom/jodo/paysdk/CommandManager;->sReturnValueMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/jodo/paysdk/CommandManager;->sObj:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jodo/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method
