.class public Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;
.super Lcom/air/plugin/js/BaseJSInterface;

# interfaces
.implements Lcom/jodo/paysdk/webviews/js/Js_Interface;


# static fields
.field private static ipTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field mData:Lorg/json/JSONObject;

.field private mIPCallback:Lcom/jodo/paysdk/util/y;

.field mMessage:Ljava/lang/String;

.field private mResultArray:Lorg/json/JSONArray;

.field mStatus:I

.field protected mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/a/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/air/plugin/js/BaseJSInterface;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    const-string v0, ""

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;

    new-instance v0, Lcom/jodo/paysdk/webviews/js/o;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/js/o;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)V

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mIPCallback:Lcom/jodo/paysdk/util/y;

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;

    return-void
.end method

.method static synthetic access$000(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mResultArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mResultArray:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)Lcom/jodo/paysdk/util/y;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mIPCallback:Lcom/jodo/paysdk/util/y;

    return-object v0
.end method

.method private toResult(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    iget v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message"

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;

    const-string v2, "request_params"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    iput v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    const-string v1, ""

    iput-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "exceiptin error"

    goto :goto_0
.end method


# virtual methods
.method public addPing(Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ip"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timeout"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "times"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jodo/paysdk/webviews/js/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/jodo/paysdk/webviews/js/e;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public alertDialog(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "label1"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "label2"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "label3"

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-nez p4, :cond_2

    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    if-eqz p5, :cond_0

    new-instance v3, Lcom/jodo/paysdk/webviews/js/l;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/jodo/paysdk/webviews/js/l;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;Ljava/lang/Integer;Lorg/json/JSONObject;)V

    invoke-virtual {v2, p5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    if-eqz p6, :cond_1

    new-instance v3, Lcom/jodo/paysdk/webviews/js/n;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/jodo/paysdk/webviews/js/n;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;Ljava/lang/Integer;Lorg/json/JSONObject;)V

    invoke-virtual {v2, p6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void

    :cond_2
    new-instance v3, Lcom/jodo/paysdk/webviews/js/k;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/jodo/paysdk/webviews/js/k;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Lorg/json/JSONObject;Ljava/lang/Integer;Lorg/json/JSONObject;)V

    invoke-virtual {v2, p4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    iput v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    const-string v0, "alertDialog"

    invoke-direct {p0, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bringToFront(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/t;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/js/t;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public callbackOverrideCloseAnim()V
    .locals 0

    return-void
.end method

.method public callbackOverrideEnterAnim()V
    .locals 0

    return-void
.end method

.method public clearUncaughtExceptionLog()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jodo/paysdk/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public closeWindows()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/m;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/js/m;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cmd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cmd"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public exitApp()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/g;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/js/g;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getAllInstalledPkgName()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->getAllInstalledPkgName(I)V

    return-void
.end method

.method public getAllInstalledPkgName(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/b;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/js/b;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;I)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHeaders()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    const-string v2, "webview"

    invoke-static {v0, v2}, Lcom/jodo/paysdk/util/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    iput v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    :goto_1
    const-string v0, "getHeaders"

    invoke-direct {p0, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    iput-object v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getPkgInfo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/w;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/js/w;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSelfPkgInfo()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/c;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/js/c;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUncaughtExceptionLog()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/jodo/paysdk/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "getUncaughtExceptionLog"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;

    invoke-interface {v0}, Lcom/jodo/paysdk/webviews/a/b;->getWebPage()Lcom/jodo/paysdk/webviews/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/g;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUrl:null with reason"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goBack()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/q;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/js/q;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goForward()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/r;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/js/r;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public gotoMarket(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/d;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/js/d;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handlerUriList(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "uri_Intent"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v8, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mMessage:Ljava/lang/String;

    :goto_2
    const-string v0, "handlerUriList"

    invoke-direct {p0, v2}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->toResult(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "request_Uri"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "result_List"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mStatus:I

    iput-object v3, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mData:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public installApk(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/jodo/paysdk/webviews/js/a;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/js/a;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V

    return-void
.end method

.method public newWindows(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/jodo/paysdk/webviews/js/s;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onModifyPwdFinished()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/account/JodoAccount;->setLoginPassword(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->saveAccount(Landroid/content/Context;Lcom/jodo/paysdk/account/JodoAccount;)Z

    return-void
.end method

.method public openBBS()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyBbsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v0, "http://bbs.jodoplay.com/"

    :try_start_0
    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyBbsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://account.jodoplay.com/web/mloginAction"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?cpid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&gameid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&redirect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf99

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public openCS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1, p2}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openGiftCardCenter()V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyGiftcardcenterEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://giftcard.jodoplay.com/gift/list?cpid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&gameid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf99

    const/4 v2, 0x0

    invoke-static {v3, v0, v1, v6, v2}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    const-string v2, "jodoplay_no_gift_tips"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public openHelpShift()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/CustomerServiceActivity;->start(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pingRun()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mResultArray:Lorg/json/JSONArray;

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mResultArray:Lorg/json/JSONArray;

    :cond_2
    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "times"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ip"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeout"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Lcom/jodo/paysdk/util/z;

    invoke-direct {v4}, Lcom/jodo/paysdk/util/z;-><init>()V

    iput-object v3, v4, Lcom/jodo/paysdk/util/z;->a:Ljava/lang/String;

    iput v0, v4, Lcom/jodo/paysdk/util/z;->b:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v0, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v0, v2

    iput-object v0, v4, Lcom/jodo/paysdk/util/z;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mIPCallback:Lcom/jodo/paysdk/util/y;

    invoke-static {v0, v4, v2}, Lcom/jodo/paysdk/util/w;->a(Landroid/content/Context;Lcom/jodo/paysdk/util/z;Lcom/jodo/paysdk/util/y;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->ipTaskList:Ljava/util/List;

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pkgNameAddToCareList(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/jodo/paysdk/b/a;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jodo/paysdk/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/jodo/paysdk/b/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/jodo/paysdk/service/JPointAPR_Service;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jodo/paysdk/service/JPointAPR_Service;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public pkgNameDeleteFromCareList(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/jodo/paysdk/b/a;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/jodo/paysdk/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/jodo/paysdk/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1}, Lcom/jodo/paysdk/b/a;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    sget-boolean v1, Lcom/jodo/paysdk/service/JPointAPR_Service;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jodo/paysdk/service/JPointAPR_Service;->a()V

    goto :goto_0
.end method

.method public removeShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/jodo/paysdk/webviews/js/f;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1, p2}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCancelable(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/i;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/js/i;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;I)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWebViewHandler(Lcom/jodo/paysdk/webviews/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;

    return-void
.end method

.method public showFreeJPoint(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/jodo/paysdk/d/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public showLoadingView(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mWebViewHandler:Lcom/jodo/paysdk/webviews/a/b;

    invoke-interface {v0}, Lcom/jodo/paysdk/webviews/a/b;->getWebPage()Lcom/jodo/paysdk/webviews/g;

    move-result-object v1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/webviews/g;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startApp(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/u;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/js/u;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public startUri(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/v;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/js/v;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/webviews/js/j;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/js/j;-><init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mAppContext:Landroid/content/Context;

    sget-object v1, Lcom/jodo/paysdk/f/f;->a:Lcom/jodo/paysdk/f/f;

    invoke-virtual {v1}, Lcom/jodo/paysdk/f/f;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v4}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "puid"

    invoke-virtual {v3, v0}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "pn"

    invoke-direct {v3, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "gameVc"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "cpid"

    sget-object v5, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v5}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "gameid"

    sget-object v5, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v5}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "channel"

    sget-object v5, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v5}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "key"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "data"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "http://gstat.jodoplay.com/gamestat/clientlog"

    invoke-static {v0, v3, v2, v1}, Lcom/jodo/paysdk/http/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/jodo/paysdk/http/a/f;->b(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/jodo/paysdk/http/a/f;->c(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/f;->b()Ljava/lang/String;

    return-void
.end method
